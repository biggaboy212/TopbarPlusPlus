--// Imports
local Utility = require("../Utility")

--// References
local Players = Utility.Clone(game:GetService("Players"))

--// Variables
local Overflow = {}
local holders = {}
local orderedAvailableIcons = {}
local iconsDict
local currentCamera = workspace.CurrentCamera
local overflowIcons = {}
local overflowIconUIDs = {}
local Icon

--// Private Methods
local function findHoldersInGui(guiContainer)
	local holders = {}
	local primaryScreenGui = nil

	for _, child in ipairs(guiContainer:GetChildren()) do
		if child:IsA("ScreenGui") then
			if primaryScreenGui == nil and child.ScreenInsets == Enum.ScreenInsets.TopbarSafeInsets then
				primaryScreenGui = child
			end

			local holdersFolder = child:FindFirstChild("Holders")
			if holdersFolder then
				for _, holder in ipairs(holdersFolder:GetChildren()) do
					if holder:GetAttribute("IsAHolder") then
						holders[holder.Name] = holder
					end
				end
			end
		end
	end

	return holders, primaryScreenGui
end

local function findTopbarAssets()
	local foundHolders = {}
	local foundPrimary = nil

	local containers = { Utility.ProtectUI() }

	local localPlayer = Players.LocalPlayer
	if localPlayer then
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
		if playerGui then
			table.insert(containers, playerGui)
		end
	end

	for _, container in ipairs(containers) do
		local h, g = findHoldersInGui(container)
		if g and not foundPrimary then
			foundPrimary = g
		end
		for name, holder in pairs(h) do
			if not foundHolders[name] then
				foundHolders[name] = holder
			end
		end
	end

	return foundHolders, foundPrimary
end

--// Public Methods
function Overflow.start(incomingIcon)
	Icon = incomingIcon
	iconsDict = Icon.iconsDictionary

	local primaryScreenGui
	local overflowReady = false
	local updateBoundaries

	local function applyOverrides(incomingHolders, incomingPrimaryGui)
		if not incomingHolders or not next(incomingHolders) then
			return false
		end
		holders = incomingHolders
		primaryScreenGui = incomingPrimaryGui

		Icon.topbarHoldersOverride = incomingHolders
		Icon.topbarPrimaryScreenGuiOverride = incomingPrimaryGui

		for _, icon in pairs(iconsDict) do
			if icon and icon.alignment and icon.alignment ~= "" then
				icon:align(icon.alignment, true)
			else
				icon:align("Left", true)
			end
		end
		return true
	end

	local function bindPrimarySizeListener()
		if primaryScreenGui and not primaryScreenGui:GetAttribute("__TopbarPlusOverflowBound") then
			primaryScreenGui:SetAttribute("__TopbarPlusOverflowBound", true)
			primaryScreenGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				updateBoundaries(true)
			end)
		end
	end

	local function onHoldersReady()
		if overflowReady then return end
		overflowReady = true
		bindPrimarySizeListener()
		updateBoundaries()
	end

	updateBoundaries = Utility.createStagger(0.1, function(ignoreAvailable)
		if not overflowReady then return end
		if not ignoreAvailable then
			Overflow.updateAvailableIcons("Center")
		end
		Overflow.updateBoundary("Left")
		Overflow.updateBoundary("Right")
	end)

	local function pollOnce()
		if overflowReady then return end
		local h, g = findTopbarAssets()
		if applyOverrides(h, g) then
			onHoldersReady()
		end
	end

	local foundHolders, foundPrimary = findTopbarAssets()
	if applyOverrides(foundHolders, foundPrimary) then
		onHoldersReady()
	else
		local function watchContainer(container)
			container.DescendantAdded:Connect(function(descendant)
				if overflowReady then return end
				if descendant:IsA("ScreenGui") or descendant.Name == "Holders" or descendant:GetAttribute("IsAHolder") then
					pollOnce()
				end
			end)
		end

		watchContainer(Utility.ProtectUI())

		local localPlayer = Players.LocalPlayer
		if localPlayer then
			local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
			if playerGui then
				watchContainer(playerGui)
			end
		else
			Players.PlayerAdded:Connect(function(player)
				if player ~= Players.LocalPlayer then return end
				player.ChildAdded:Connect(function(child)
					if child:IsA("PlayerGui") then
						watchContainer(child)
						pollOnce()
					end
				end)
			end)
		end

		task.spawn(function()
			for i = 1, 8 do
				if overflowReady then break end
				task.wait(0.25)
				pollOnce()
			end
			if not overflowReady then
				overflowReady = true
				warn("[TopbarPlusPlus] Overflow: could not find topbar holders after 2s; overflow may be incorrect.")
				updateBoundaries()
			end
		end)
	end

	Icon.iconAdded:Connect(updateBoundaries)
	Icon.iconRemoved:Connect(updateBoundaries)
	Icon.iconChanged:Connect(updateBoundaries)

	currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
		updateBoundaries(true)
	end)
end

function Overflow.getWidth(icon, getMaxWidth)
	local widget = icon.widget
	return widget:GetAttribute("TargetWidth") or widget.AbsoluteSize.X
end

function Overflow.getAvailableIcons(alignment)
	local ourOrderedIcons = orderedAvailableIcons[alignment]
	if not ourOrderedIcons then
		ourOrderedIcons = Overflow.updateAvailableIcons(alignment)
	end
	return ourOrderedIcons
end

function Overflow.updateAvailableIcons(alignment)
	local ourTotal = 0
	local ourOrderedIcons = {}
	for _, icon in pairs(iconsDict) do
		local parentUID = icon.parentIconUID
		local isDirectlyOnTopbar = not parentUID or overflowIconUIDs[parentUID]
		local isOverflow = overflowIconUIDs[icon.UID]
		if isDirectlyOnTopbar and icon.alignment == alignment and not isOverflow and icon.isEnabled then
			table.insert(ourOrderedIcons, icon)
			ourTotal += 1
		end
	end

	if ourTotal <= 0 then
		return {}
	end

	table.sort(ourOrderedIcons, function(iconA, iconB)
		local orderA = iconA.widget.LayoutOrder
		local orderB = iconB.widget.LayoutOrder
		local hasParentA = iconA.parentIconUID
		local hasParentB = iconB.parentIconUID
		if hasParentA == hasParentB then
			if orderA < orderB then
				return true
			end
			if orderA > orderB then
				return false
			end
			return iconA.widget.AbsolutePosition.X < iconB.widget.AbsolutePosition.X
		elseif hasParentB then
			return false
		elseif hasParentA then
			return true
		end
		return nil
	end)

	orderedAvailableIcons[alignment] = ourOrderedIcons
	return ourOrderedIcons
end

function Overflow.getRealXPositions(alignment, orderedIcons)
	local isLeft = alignment == "Left"
	local holder = holders[alignment]
	local holderXPos = holder.AbsolutePosition.X
	local holderXSize = holder.AbsoluteSize.X
	local holderUIList = holder.UIListLayout
	local topbarInset = holderUIList.Padding.Offset
	local absoluteX = (isLeft and holderXPos) or holderXPos + holderXSize
	local realXPositions = {}

	if isLeft then
		Utility.reverseTable(orderedIcons)
	end

	for i = #orderedIcons, 1, -1 do
		local icon = orderedIcons[i]
		local sizeX = Overflow.getWidth(icon)

		if not isLeft then
			absoluteX -= sizeX
		end

		realXPositions[icon.UID] = absoluteX

		if isLeft then
			absoluteX += sizeX
		end

		absoluteX += (isLeft and topbarInset) or -topbarInset
	end
	return realXPositions
end

function Overflow.updateBoundary(alignment)
	local holder = holders[alignment]

	if not holder then
		return
	end

	local holderUIList = holder.UIListLayout
	local holderXPos = holder.AbsolutePosition.X
	local holderXSize = holder.AbsoluteSize.X
	local topbarInset = holderUIList.Padding.Offset
	local topbarPadding = holderUIList.Padding.Offset
	local BOUNDARY_GAP = topbarInset
	local ourOrderedIcons = Overflow.updateAvailableIcons(alignment)
	local boundWidth = 0
	local ourTotal = 0

	for _, icon in pairs(ourOrderedIcons) do
		boundWidth += Overflow.getWidth(icon) + topbarPadding
		ourTotal += 1
	end

	if ourTotal <= 0 then
		return
	end

	local isCentral = alignment == "Center"
	local isLeft = alignment == "Left"
	local isRight = not isLeft
	local overflowIcon = overflowIcons[alignment]

	if not overflowIcon and not isCentral and #ourOrderedIcons > 0 then
		local order = (isLeft and -9999999) or 9999999
		
		overflowIcon = Icon.new() --:setLabel(`{alignment}`)
		overflowIcon:setImage(6069276526, "Deselected")
		overflowIcon:setName("Overflow" .. alignment)
		overflowIcon:setOrder(order)
		overflowIcon:setAlignment(alignment)
		overflowIcon:autoDeselect(false)
		overflowIcon.isAnOverflow = true
		--overflowIcon:freezeMenu()
		overflowIcon:select("OverflowStart", overflowIcon)
		overflowIcon:setEnabled(false)
		overflowIcons[alignment] = overflowIcon
		overflowIconUIDs[overflowIcon.UID] = true
		 
		if not Icon.closeableOverflowMenus then
			local iconSpot = overflowIcon:getInstance("IconSpot")
			iconSpot.Visible = false
		end
	end
 
	local oppositeAlignment = (alignment == "Left" and "Right") or "Left"
	local oppositeHolder = holders[oppositeAlignment]
	local oppositeOrderedIcons = Overflow.updateAvailableIcons(oppositeAlignment)
	local nearestOppositeIcon = (isLeft and oppositeOrderedIcons[1])
		or (isRight and oppositeOrderedIcons[#oppositeOrderedIcons])
	local oppositeOverflowIcon = overflowIcons[oppositeAlignment]
	local boundary = (isLeft and holderXPos + holderXSize) or holderXPos

	local usingExternalHolders = Icon and Icon.topbarHoldersOverride == holders

	if usingExternalHolders and oppositeHolder then
		if isLeft then
			local minX = nil

			for _, child in ipairs(oppositeHolder:GetChildren()) do
				if child:IsA("GuiObject") and child.Visible and child.AbsoluteSize.X > 0 then
					local x = child.AbsolutePosition.X

					if not minX or x < minX then
						minX = x
					end
				end
			end

			if minX then
				boundary = minX - BOUNDARY_GAP
			end
		else
			local maxX = nil

			for _, child in ipairs(oppositeHolder:GetChildren()) do
				if child:IsA("GuiObject") and child.Visible and child.AbsoluteSize.X > 0 then
					local xEnd = child.AbsolutePosition.X + child.AbsoluteSize.X

					if not maxX or xEnd > maxX then
						maxX = xEnd
					end
				end
			end
			
			if maxX then
				boundary = maxX + BOUNDARY_GAP
			end
		end
	elseif nearestOppositeIcon then
		local oppositeRealXPositions = Overflow.getRealXPositions(oppositeAlignment, oppositeOrderedIcons)
		local oppositeX = oppositeRealXPositions[nearestOppositeIcon.UID]
		local oppositeXSize = Overflow.getWidth(nearestOppositeIcon)

		boundary = (isLeft and oppositeX - BOUNDARY_GAP) or oppositeX + oppositeXSize + BOUNDARY_GAP
	end

	local totalChecks = 0
	local usingNearestCenter = false

	local function checkToShiftCentralIcon()
		local centerOrderedIcons = Overflow.getAvailableIcons("Center")
		local centerPos = (isLeft and 1) or #centerOrderedIcons
		local nearestCenterIcon = centerOrderedIcons[centerPos]

		if nearestCenterIcon and not nearestCenterIcon.hasRelocatedInOverflow then
			local ourNearestIcon = (isLeft and ourOrderedIcons[#ourOrderedIcons]) or (isRight and ourOrderedIcons[1])
			local centralNearestXPos = nearestCenterIcon.widget.AbsolutePosition.X
			local ourNearestXPos = ourNearestIcon.widget.AbsolutePosition.X
			local ourNearestXSize = Overflow.getWidth(ourNearestIcon)
			local centerBoundary = (isLeft and centralNearestXPos - BOUNDARY_GAP)
				or centralNearestXPos + Overflow.getWidth(nearestCenterIcon) + BOUNDARY_GAP
			local removeBoundary = (isLeft and ourNearestXPos + ourNearestXSize) or ourNearestXPos
			local hasShifted = false
			
			if centralNearestXPos == 0 and ourNearestXPos == 0 then
				return
			end

			if isLeft then
				if centerBoundary < removeBoundary then
					nearestCenterIcon:align("Left")
					nearestCenterIcon.hasRelocatedInOverflow = true
					hasShifted = true
				end
			elseif isRight then
				if centerBoundary > removeBoundary and removeBoundary >= 0 then
					nearestCenterIcon:align("Right")
					nearestCenterIcon.hasRelocatedInOverflow = true
					hasShifted = true
				end
			end

			if hasShifted then
				totalChecks += 1

				if totalChecks <= 4 then
					Overflow.updateAvailableIcons("Center")
					checkToShiftCentralIcon()
				end
			end
		end
	end
	checkToShiftCentralIcon()

	if overflowIcon then
		local menuBoundary = boundary
		local menu = overflowIcon:getInstance("Menu")
		local holderXEndPos = holderXPos + holderXSize
		local menuWidth = holderXSize

		if menu and oppositeOverflowIcon then
			local oppositeWidget = oppositeOverflowIcon.widget
			local oppositeXPos = oppositeWidget.AbsolutePosition.X
			local oppositeXSize = Overflow.getWidth(oppositeOverflowIcon)
			local oppositeBoundary = (isLeft and oppositeXPos - BOUNDARY_GAP)
				or oppositeXPos + oppositeXSize + BOUNDARY_GAP
			local oppositeMenu = oppositeOverflowIcon:getInstance("Menu")
			local isDominant = menu.AbsoluteCanvasSize.X >= oppositeMenu.AbsoluteCanvasSize.X

			if not usingNearestCenter then
				local halfwayXPos = holderXPos + holderXSize / 2
				local halfwayBoundary = (isLeft and halfwayXPos - BOUNDARY_GAP / 2) or halfwayXPos + BOUNDARY_GAP / 2

				menuBoundary = halfwayBoundary

				if isDominant then
					menuBoundary = oppositeBoundary
				end
			end

			menuWidth = (isLeft and menuBoundary - holderXPos) or (holderXEndPos - menuBoundary)
		end

		local currentMaxWidth = menu and menu:GetAttribute("MaxWidth")

		menuWidth = Utility.round(menuWidth)

		if menu and currentMaxWidth ~= menuWidth then
			menu:SetAttribute("MaxWidth", menuWidth)
		end
	end

	local joinOverflow = false
	for i = #ourOrderedIcons, 1, -1 do
		local icon = ourOrderedIcons[i]
		local widgetX = Overflow.getWidth(icon)
		local xPos

		if usingExternalHolders then
			xPos = icon.widget.AbsolutePosition.X
		else
			local realXPositions = Overflow.getRealXPositions(alignment, ourOrderedIcons)

			xPos = realXPositions[icon.UID]
		end

		if (isLeft and xPos + widgetX >= boundary) or (isRight and xPos <= boundary) then
			joinOverflow = true
		end
	end
	for i = #ourOrderedIcons, 1, -1 do
		local icon = ourOrderedIcons[i]
		local isOverflow = overflowIconUIDs[icon.UID]

		if not isOverflow then
			if joinOverflow and not icon.parentIconUID then
				icon:joinMenu(overflowIcon)
			elseif not joinOverflow and icon.parentIconUID then
				icon:leave()
			end
		end
	end

	if overflowIcon.isEnabled ~= joinOverflow then
		overflowIcon:setEnabled(joinOverflow)
	end

	if overflowIcon.isEnabled and not overflowIcon.overflowAlreadyOpened then
		overflowIcon.overflowAlreadyOpened = true
		overflowIcon:select()
	end
end

return Overflow
