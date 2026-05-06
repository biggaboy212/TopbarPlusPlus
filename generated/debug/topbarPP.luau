--!nolint
--!nocheck
--!optimize 2
--!native

--[[
    @link https://github.com/biggaboy212/TopbarPlusPlus
    @author biggaboy212
    @repository TopbarPlusPlus
    @license MIT*

    ---
    Copyright © 2026 biggaboy212

    *Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

    ---

    This file was automatically @generated with ProCMP, it is not intended for manual editing.
--]]

if not game:IsLoaded() then
	game.Loaded:Wait()
end


type ExpectedObject__DARKLUA_TYPE_a = ((...any) -> ...any) | Instance | ServiceProvider
--!strict

-- GoodSignal Types (...but simpler!)

--- Connection

type Connection__DARKLUA_TYPE_b<Variant...= ...any> = {
	Disconnect: (self: Connection__DARKLUA_TYPE_b<Variant...>) -> (),
}

--- Signal

type Signal__DARKLUA_TYPE_c<Variant...= ...any> = {
	Connect: (self: Signal__DARKLUA_TYPE_c<Variant...>, func: (Variant...) -> ()) -> Connection__DARKLUA_TYPE_b<Variant...>,
    Once: (self: Signal__DARKLUA_TYPE_c<Variant...>, func: (Variant...) -> ()) -> Connection__DARKLUA_TYPE_b<Variant...>,
	Wait: (self: Signal__DARKLUA_TYPE_c<Variant...>) -> Variant...,
}
type IconState__DARKLUA_TYPE_d = "Deselected" | "Selected" | "Viewing"
type Events__DARKLUA_TYPE_e = "selected" | "deselected" | "toggled" | "viewingStarted" | "viewingEnded" | "notified"
type Alignment__DARKLUA_TYPE_f = "Left" | "Center" | "Right"
type EventSource__DARKLUA_TYPE_g = "User" | "OneClick" | "AutoDeselect" | "HideParentFeature" | "Overflow"
type Modification__DARKLUA_TYPE_h = { any }


type StaticFunctions__DARKLUA_TYPE_i = {
	getIcons: typeof(
		--[[
			Returns a dictionary of icons where the key is the icon's UID and value the icon.
		]]
		function(): { Icon__DARKLUA_TYPE_l }
			return (nil :: any) :: { Icon__DARKLUA_TYPE_l }
		end
	),
	getIcon: typeof(
		--[[
			Returns an icon of the given name or UID.
		]]
		function(nameOrUID: string): Icon__DARKLUA_TYPE_l?
			return nil :: any
		end
	),
	setTopbarEnabled: typeof(
		--[[
			When set to <code>false</code> all TopbarPlus ScreenGuis are hidden.
			This does not impact Roblox's Topbar.
		]]
		function(enabled: boolean)

		end
	),
	modifyBaseTheme: typeof(
		--[[
			Updates the appearance of all icons.
		]]
		function(modifications: { Modification__DARKLUA_TYPE_h })

		end
	),
	setDisplayOrder: typeof(
		--[[
			Sets the base DisplayOrder of all TopbarPlus ScreenGuis.
		]]
		function(order: number)

		end
	),
}

type Methods__DARKLUA_TYPE_j = {
	
	-- CLASS FUNCTIONS
	setName: typeof(
		--[[
			Sets the name of the Widget instance. This can be used in conjunction with <code>Icon.getIcon(name)</code>
		]]
		function(self: Icon__DARKLUA_TYPE_l, name: string): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	getInstance: typeof(
		--[[
			Returns the first descendant found within the widget of name <code>instanceName</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, instanceName: string): Instance?
			return (nil :: any) :: Instance?
		end
	),
	modifyTheme: typeof(
		--[[
			Updates the appearance of the icon.
		]]
		function(self: Icon__DARKLUA_TYPE_l, modifications: {Modification__DARKLUA_TYPE_h} | Modification__DARKLUA_TYPE_h): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	modifyChildTheme: typeof(
		--[[
			Updates the appearance of all icons that are parented to this icon (for example when a menu or dropdown).
		]]
		function(self: Icon__DARKLUA_TYPE_l, modifications: { Modification__DARKLUA_TYPE_h }): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setEnabled: typeof(
		--[[
			When set to <code>false</code> the icon will be disabled and hidden.
		]]
		function(self: Icon__DARKLUA_TYPE_l, enabled: boolean): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	select: typeof(
		--[[
			Selects the icon (as if it were clicked once).
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	deselect: typeof(
		--[[
			Deselects the icon (as if it were clicked, then clicked again).
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	notify: typeof(
		--[[
			Prompts a notice bubble which accumulates the further it is prompted.
			If the icon belongs to a dropdown or menu, then the notice will appear on the parent icon when the parent icon is deselected.
		]]
		function(self: Icon__DARKLUA_TYPE_l, clearNoticeEvent: Signal__DARKLUA_TYPE_c?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	clearNotices: typeof(
		--[[
			
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	disableOverlay: typeof(
		--[[
			When set to <code>true</code>, disables the shade effect which appears when the icon is pressed and released.
		]]
		function(self: Icon__DARKLUA_TYPE_l, disabled: boolean): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setImage: typeof(
		--[[
			Applies an image to the icon based on the given <code>imageId</code>. <code>imageId</code> can be an assetId or a complete asset string.
		]]
		function(self: Icon__DARKLUA_TYPE_l, imageId: string | number, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setLabel: typeof(
		--[[
			
		]]
		function(self: Icon__DARKLUA_TYPE_l, text: string, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setOrder: typeof(
		--[[
			
		]]
		function(self: Icon__DARKLUA_TYPE_l, order: number, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setCornerRadius: typeof(
		--[[
			
		]]
		function(self: Icon__DARKLUA_TYPE_l, udim: UDim2, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	align: typeof(
		--[[
			This enables you to set the icon to the <code>"Left"</code> (default), <code>"Center"</code> or <code>"Right"</code> side of the screen.
		]]
		function(self: Icon__DARKLUA_TYPE_l, alignment: Alignment__DARKLUA_TYPE_f?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setWidth: typeof(
		--[[
			This sets the minimum width the icon can be (it can be larger for instance when setting a long label). The default width is <code>44</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, minimumSize: number, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setImageScale: typeof(
		--[[
			How large the image is relative to the icon. The default value is <code>0.5</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, scale: number, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setImageRatio: typeof(
		--[[
			How stretched the image will appear. The default value is <code>1</code> (a perfect square).
		]]
		function(self: Icon__DARKLUA_TYPE_l, ratio: number, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setTextSize: typeof(
		--[[
			The size of the icon labels' text. The default value is <code>16</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, textSize: number, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setTextColor: typeof(
		--[[
			The color of the icon labels' text
		]]
		function(self: Icon__DARKLUA_TYPE_l, color: Color3, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setTextFont: typeof(
		--[[
			Sets the labels FontFace.
			<code>font</code> can be a font family name (such as <code>"Creepster"</code>),
			a font enum (such as <code>Enum.Font.Bangers</code>),
			a font ID (such as <code>12187370928</code>),
			or font family link (such as <code>"rbxasset://fonts/families/Sarpanch.json"</code>).
		]]
		function(self: Icon__DARKLUA_TYPE_l, font: string | Enum.Font, fontWeight: Enum.FontWeight?, fontStyle: Enum.FontSize?, iconState: IconState__DARKLUA_TYPE_d?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	bindToggleItem: typeof(
		--[[
			Binds a GuiObject or LayerCollector to appear and disappeared when the icon is toggled.
		]]
		function(self: Icon__DARKLUA_TYPE_l, guiObjectOrLayerCollector: GuiObject | LayerCollector): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	unbindToggleItem: typeof(
		--[[
			Unbinds the given GuiObject or LayerCollector from the toggle.
		]]
		function(self: Icon__DARKLUA_TYPE_l, guiObjectOrLayerCollector: GuiObject | LayerCollector): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	bindEvent: typeof(
		--[[
			Connects to an icon event with <code>iconEventName</code>.
			It's important to remember all event names are in <code>camelCase</code>.
			<code>callback</code> is called with arguments <code>(self, ...)</code> when the event is triggered.
		]]
		function(self: Icon__DARKLUA_TYPE_l, event: Events__DARKLUA_TYPE_e, callback: (...any) -> ()): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	unbindEvent: typeof(
		--[[
			Unbinds the connection of the associated <code>iconEventName</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, event: Events__DARKLUA_TYPE_e): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	bindToggleKey: typeof(
		--[[
			Binds a keycode which toggles the icon when pressed.
		]]
		function(self: Icon__DARKLUA_TYPE_l, keycode: Enum.KeyCode): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	unbindToggleKey: typeof(
		--[[
			Unbinds the given keycode.
		]]
		function(self: Icon__DARKLUA_TYPE_l, keycode: Enum.KeyCode): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	call: typeof(
		--[[
			Calls the function immediately via <code>task.spawn</code>.
			The first argument passed is the icon itself.
			This is useful when needing to extend the behaviour of an icon while remaining in the chain.
		]]
		function(self: Icon__DARKLUA_TYPE_l, func: (self: Icon__DARKLUA_TYPE_l) -> (...any), ...: any): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	addToJanitor: typeof(
		--[[
			Passes the given userdata to the icons janitor to be destroyed/disconnected on the icons destruction.
			If a function is passed, it will be called when the icon is destroyed.
		]]
		function(self: Icon__DARKLUA_TYPE_l, userdata: unknown): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	lock: typeof(
		--[[
			Prevents the icon being toggled by user-input (such as clicking), however, the icon can still be toggled via localscript using methods such as <code>icon:select()</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	unlock: typeof(
		--[[
			Re-enables user-input to toggle the icon again.
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	debounce: typeof(
		--[[
			Locks the icon, yields for the given time, then unlocks the icon, effectively shorthand for <code>icon:lock() task.wait(seconds) icon:unlock()</code>.
			This is useful for applying cooldowns (to prevent an icon from being pressed again) after an icon has been selected or deselected.
		]]
		function(self: Icon__DARKLUA_TYPE_l, seconds: number): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	autoDeselect: typeof(
		--[[
			When set to <code>true</code> (the default) the icon is deselected when another icon (with autoDeselect enabled) is pressed.
			Set to <code>false</code> to prevent the icon being deselected when another icon is selected (a useful behaviour in dropdowns).
		]]
		function(self: Icon__DARKLUA_TYPE_l, enabled: boolean?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	oneClick: typeof(
		--[[
			When set to true the icon will automatically deselect when selected.
			This creates the effect of a single click button.
		]]
		function(self: Icon__DARKLUA_TYPE_l, enabled: boolean?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setCaption: typeof(
		--[[
			Sets a caption. To remove, pass <code>nil</code> as <code>text</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, text: string?): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setCaptionHint: typeof(
		--[[
			This customizes the appearance of the caption's hint without having to use <code>icon:bindToggleKey</code>.
		]]
		function(self: Icon__DARKLUA_TYPE_l, keyCode: Enum.KeyCode): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setDropdown: typeof(
		--[[
			Creates a vertical dropdown based upon the given table array of icons.
			Pass an empty table <code>{}</code> to remove the dropdown.
		]]
		function(self: Icon__DARKLUA_TYPE_l, icons: { Icon__DARKLUA_TYPE_l }): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	joinDropdown: typeof(
		--[[
			Joins the dropdown of <code>parentIcon</code>.
			This is what <code>icon:setDropdown</code> calls internally on the icons within its array.
		]]
		function(self: Icon__DARKLUA_TYPE_l, parent: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setMenu: typeof(
		--[[
			Creates a horizontal menu based upon the given array of icons.
			Pass an empty table <code>{}</code> to remove the menu.
		]]
		function(self: Icon__DARKLUA_TYPE_l, icons: { Icon__DARKLUA_TYPE_l }): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	setFixedMenu: typeof(
		--[[
			Creates a menu that is always selected and has it's close button hidden.
			Pass an empty table <code>{}</code> to remove the menu.
		]]
		function(self: Icon__DARKLUA_TYPE_l, icons: { Icon__DARKLUA_TYPE_l }): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	joinMenu: typeof(
		--[[
			Joins the menu of <code>parentIcon</code>.
			This is what <code>icon:setMenu</code> calls internally on the icons within its array.
		]]
		function(self: Icon__DARKLUA_TYPE_l, parentIcon: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	leave: typeof(
		--[[
			Unparents an icon from a parentIcon if it belongs to a dropdown or menu.
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	convertLabelToNumberSpinner: typeof(
		--[[
			Unparents an icon from a parentIcon if it belongs to a dropdown or menu.
		]]
		function(self: Icon__DARKLUA_TYPE_l, numberSpinner: any, func: (...any) -> (...any), ...: any): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
	destroy: typeof(
		--[[
			Clears all connections and destroys all instances associated with the icon.
		]]
		function(self: Icon__DARKLUA_TYPE_l): Icon__DARKLUA_TYPE_l
			return nil :: any
		end
	),
} & StaticFunctions__DARKLUA_TYPE_i

type Fields__DARKLUA_TYPE_k = {
	-- CLASS PROPERTIES
	name: string,
	isSelected: boolean,
	isEnabled: boolean,
	totalNotices: number,
	locked: boolean,

	-- CLASS EVENTS
	selected: Signal__DARKLUA_TYPE_c<EventSource__DARKLUA_TYPE_g>,
	deselected: Signal__DARKLUA_TYPE_c<EventSource__DARKLUA_TYPE_g>,
	toggled: Signal__DARKLUA_TYPE_c<boolean, EventSource__DARKLUA_TYPE_g>,
	viewingStarted: Signal__DARKLUA_TYPE_c,
	viewingEnded: Signal__DARKLUA_TYPE_c,
	notified: Signal__DARKLUA_TYPE_c,
}
type Icon__DARKLUA_TYPE_l = Methods__DARKLUA_TYPE_j & StaticFunctions__DARKLUA_TYPE_i --typeof(setmetatable({} :: Fields, MT))
type StaticIcon__DARKLUA_TYPE_m = {
	new: typeof(
		--[[
			Constructs an empty <code>32x32</code> icon on the topbar.
		]]
		function(): Icon__DARKLUA_TYPE_l
			return (nil :: any) :: Icon__DARKLUA_TYPE_l
		end
	),
} & StaticFunctions__DARKLUA_TYPE_i
local __DIST={cache={}::any}do do local function __modImpl()--------------------------------------------------------------------------------
--               Batched Yield-Safe Signal Implementation                     --
-- This is a Signal class which has effectively identical behavior to a       --
-- normal RBXScriptSignal, with the only difference being a couple extra      --
-- stack frames at the bottom of the stack trace when an error is thrown.     --
-- This implementation caches runner coroutines, so the ability to yield in   --
-- the signal handlers comes at minimal extra cost over a naive signal        --
-- implementation that either always or never spawns a thread.                --
--                                                                            --
-- API:                                                                       --
--   local Signal = require(THIS MODULE)                                      --
--   local sig = Signal.new()                                                 --
--   local connection = sig:Connect(function(arg1, arg2, ...) ... end)        --
--   sig:Fire(arg1, arg2, ...)                                                --
--   connection:Disconnect()                                                  --
--   sig:DisconnectAll()                                                      --
--   local arg1, arg2, ... = sig:Wait()                                       --
--                                                                            --
-- Licence:                                                                   --
--   Licenced under the MIT licence.                                          --
--                                                                            --
-- Authors:                                                                   --
--   stravant - July 31st, 2021 - Created the file.                           --
--------------------------------------------------------------------------------

-- The currently idle thread to run the next handler on
local freeRunnerThread = nil

-- Function which acquires the currently idle handler runner thread, runs the
-- function fn on it, and then releases the thread, returning it to being the
-- currently idle one.
-- If there was a currently idle runner thread already, that's okay, that old
-- one will just get thrown and eventually GCed.
local function acquireRunnerThreadAndCallEventHandler(fn, ...)
	local acquiredRunnerThread = freeRunnerThread
	freeRunnerThread = nil
	fn(...)
	-- The handler finished running, this runner thread is free again.
	freeRunnerThread = acquiredRunnerThread
end

-- Coroutine runner that we create coroutines of. The coroutine can be 
-- repeatedly resumed with functions to run followed by the argument to run
-- them with.
local function runEventHandlerInFreeThread()
	-- Note: We cannot use the initial set of arguments passed to
	-- runEventHandlerInFreeThread for a call to the handler, because those
	-- arguments would stay on the stack for the duration of the thread's
	-- existence, temporarily leaking references. Without access to raw bytecode
	-- there's no way for us to clear the "..." references from the stack.
	while true do
		acquireRunnerThreadAndCallEventHandler(coroutine.yield())
	end
end

-- Connection class
local Connection = {}
Connection.__index = Connection

function Connection.new(signal, fn)
	return setmetatable({
		_connected = true,
		_signal = signal,
		_fn = fn,
		_next = false,
	}, Connection)
end

function Connection:Disconnect()
	self._connected = false

	-- Unhook the node, but DON'T clear it. That way any fire calls that are
	-- currently sitting on this node will be able to iterate forwards off of
	-- it, but any subsequent fire calls will not hit it, and it will be GCed
	-- when no more fire calls are sitting on it.
	if self._signal._handlerListHead == self then
		self._signal._handlerListHead = self._next
	else
		local prev = self._signal._handlerListHead
		while prev and prev._next ~= self do
			prev = prev._next
		end
		if prev then
			prev._next = self._next
		end
	end
end
Connection.Destroy = Connection.Disconnect

-- Make Connection strict
setmetatable(Connection, {
	__index = function(tb, key)
		error(("Attempt to get Connection::%s (not a valid member)"):format(tostring(key)), 2)
	end,
	__newindex = function(tb, key, value)
		error(("Attempt to set Connection::%s (not a valid member)"):format(tostring(key)), 2)
	end
})

-- Signal class
local Signal = {}
Signal.__index = Signal

function Signal.new()
	return setmetatable({
		_handlerListHead = false,
	}, Signal)
end

function Signal:Connect(fn)
	local connection = Connection.new(self, fn)
	if self._handlerListHead then
		connection._next = self._handlerListHead
		self._handlerListHead = connection
	else
		self._handlerListHead = connection
	end
	return connection
end

-- Disconnect all handlers. Since we use a linked list it suffices to clear the
-- reference to the head handler.
function Signal:DisconnectAll()
	self._handlerListHead = false
end
Signal.Destroy = Signal.DisconnectAll

-- Signal:Fire(...) implemented by running the handler functions on the
-- coRunnerThread, and any time the resulting thread yielded without returning
-- to us, that means that it yielded to the Roblox scheduler and has been taken
-- over by Roblox scheduling, meaning we have to make a new coroutine runner.
function Signal:Fire(...)
	local item = self._handlerListHead
	while item do
		if item._connected then
			if not freeRunnerThread then
				freeRunnerThread = coroutine.create(runEventHandlerInFreeThread)
				-- Get the freeRunnerThread to the first yield
				coroutine.resume(freeRunnerThread)
			end
			task.spawn(freeRunnerThread, item._fn, ...)
		end
		item = item._next
	end
end

-- Implement Signal:Wait() in terms of a temporary connection using
-- a Signal:Connect() which disconnects itself.
function Signal:Wait()
	local waitingCoroutine = coroutine.running()
	local cn;
	cn = self:Connect(function(...)
		cn:Disconnect()
		task.spawn(waitingCoroutine, ...)
	end)
	return coroutine.yield()
end

-- Implement Signal:Once() in terms of a connection which disconnects
-- itself before running the handler.
function Signal:Once(fn)
	local cn;
	cn = self:Connect(function(...)
		if cn._connected then
			cn:Disconnect()
		end
		fn(...)
	end)
	return cn
end

-- Make signal strict
setmetatable(Signal, {
	__index = function(tb, key)
		error(("Attempt to get Signal::%s (not a valid member)"):format(tostring(key)), 2)
	end,
	__newindex = function(tb, key, value)
		error(("Attempt to set Signal::%s (not a valid member)"):format(tostring(key)), 2)
	end
})

return Signal end function __DIST.a():typeof(__modImpl())local v=__DIST.cache.a if not v then v={c=__modImpl()}__DIST.cache.a=v end return v.c end end do local function __modImpl()--[[
-------------------------------------
This package was modified by ForeverHD.

PACKAGE MODIFICATIONS:
	1. Added pascalCase aliases for all methods
	2. Modified behaviour of :add so that it takes both objects and promises (previously only objects)
	3. Slight change to how promises are tracked
	4. Added isAnInstanceBeingDestroyed check to line 228
	5. Added 'OriginalTraceback' to help determine where an error was added to the janitor
	6. Likely some additional changes which weren't record here
	7. Removed comments as these were detected by Moonwave
-------------------------------------
--]]



-- Janitor
-- Original by Validark
-- Modifications by pobammer
-- roblox-ts support by OverHash and Validark
-- LinkToInstance fixed by Elttob.

local RunService = game:GetService("RunService")
local Heartbeat = RunService.Heartbeat
local function getPromiseReference()
	return false
end

local IndicesReference = newproxy(true)
getmetatable(IndicesReference).__tostring = function()
	return "IndicesReference"
end

local LinkToInstanceIndex = newproxy(true)
getmetatable(LinkToInstanceIndex).__tostring = function()
	return "LinkToInstanceIndex"
end

local METHOD_NOT_FOUND_ERROR = "Object %s doesn't have method %s, are you sure you want to add it? Traceback: %s"
local NOT_A_PROMISE = "Invalid argument #1 to 'Janitor:AddPromise' (Promise expected, got %s (%s))"

local Janitor = {
	IGNORE_MEMORY_DEBUG = true,
	ClassName = "Janitor";
	__index = {
		CurrentlyCleaning = true;
		[IndicesReference] = nil;
	};
}

local TypeDefaults = {
	["function"] = true;
	["Promise"] = "cancel";
	RBXScriptConnection = "Disconnect";
}

function Janitor.new()
	return setmetatable({
		CurrentlyCleaning = false;
		[IndicesReference] = nil;
	}, Janitor)
end

function Janitor.Is(Object)
	return type(Object) == "table" and getmetatable(Object) == Janitor
end

Janitor.is = Janitor.Is

function Janitor.__index:Add(Object, MethodName, Index)
	if Index then
		self:Remove(Index)

		local This = self[IndicesReference]
		if not This then
			This = {}
			self[IndicesReference] = This
		end

		This[Index] = Object
	end

	local objectType = typeof(Object)
	if objectType == "table" and string.match(tostring(Object), "Promise") then
		objectType = "Promise"
		--local status = Object:getStatus()
		--print("status =", status, status == "Rejected")
	end
	MethodName = MethodName or TypeDefaults[objectType] or "Destroy"
	if type(Object) ~= "function" and not Object[MethodName] then
		warn(string.format(METHOD_NOT_FOUND_ERROR, tostring(Object), tostring(MethodName), debug.traceback(nil :: any, 2)))
	end

	local OriginalTraceback = debug.traceback("")
	self[Object] = {MethodName, OriginalTraceback}
	return Object
end
Janitor.__index.Give = Janitor.__index.Add

-- My version of Promise has PascalCase, but I converted it to use lowerCamelCase for this release since obviously that's important to do.

function Janitor.__index:AddPromise(PromiseObject)
	local Promise = getPromiseReference()
	if Promise then
		if not Promise.is(PromiseObject) then
			error(string.format(NOT_A_PROMISE, typeof(PromiseObject), tostring(PromiseObject)))
		end
		if PromiseObject:getStatus() == Promise.Status.Started then
			local Id = newproxy(false)
			local NewPromise = self:Add(Promise.new(function(Resolve, _, OnCancel)
				if OnCancel(function()
						PromiseObject:cancel()
					end) then
					return
				end

				Resolve(PromiseObject)
			end), "cancel", Id)

			NewPromise:finallyCall(self.Remove, self, Id)
			return NewPromise
		else
			return PromiseObject
		end
	else
		return PromiseObject
	end
end
Janitor.__index.GivePromise = Janitor.__index.AddPromise

-- This will assume whether or not the object is a Promise or a regular object.
function Janitor.__index:AddObject(Object)
	local Id = newproxy(false)
	local Promise = getPromiseReference()
	if Promise and Promise.is(Object) then
		if Object:getStatus() == Promise.Status.Started then
			local NewPromise = self:Add(Promise.resolve(Object), "cancel", Id)
			NewPromise:finallyCall(self.Remove, self, Id)
			return NewPromise, Id
		else
			return Object
		end
	else
		return self:Add(Object, false, Id), Id
	end
end

Janitor.__index.GiveObject = Janitor.__index.AddObject

function Janitor.__index:Remove(Index)
	local This = self[IndicesReference]
	if This then
		local Object = This[Index]

		if Object then
			local ObjectDetail = self[Object]
			local MethodName = ObjectDetail and ObjectDetail[1]

			if MethodName then
				if MethodName == true then
					Object()
				else
					local ObjectMethod = Object[MethodName]
					if ObjectMethod then
						ObjectMethod(Object)
					end
				end

				self[Object] = nil
			end

			This[Index] = nil
		end
	end

	return self
end

function Janitor.__index:Get(Index)
	local This = self[IndicesReference]
	if This then
		return This[Index]
	end
	return nil
end

function Janitor.__index:Cleanup()
	if not self.CurrentlyCleaning then
		self.CurrentlyCleaning = nil
		for Object, ObjectDetail in next, self do
			if Object == IndicesReference then
				continue
			end

			-- Weird decision to rawset directly to the janitor in Agent. This should protect against it though.
			local TypeOf = type(Object)
			if TypeOf == "string" or TypeOf == "number" then
				self[Object] = nil
				continue
			end

			local MethodName = ObjectDetail[1]
			local OriginalTraceback = ObjectDetail[2]
			local function warnUser(warning)
				local cleanupLine = debug.traceback("", 3)--string.gsub(debug.traceback("", 3), "%c", "")
				local addedLine = OriginalTraceback
				warn("-------- Janitor Error --------".."\n"..tostring(warning).."\n"..cleanupLine..""..addedLine)
			end
			if MethodName == true then
				local success, warning = pcall(Object)
				if not success then
					warnUser(warning)
				end
			else
				local ObjectMethod = Object[MethodName]
				if ObjectMethod then
					local success, warning = pcall(ObjectMethod, Object)
					local isAnInstanceBeingDestroyed = typeof(Object) == "Instance" and ObjectMethod == "Destroy"
					if not success and not isAnInstanceBeingDestroyed then
						warnUser(warning)
					end
				end
			end

			self[Object] = nil
		end

		local This = self[IndicesReference]
		if This then
			for Index in next, This do
				This[Index] = nil
			end

			self[IndicesReference] = {}
		end

		self.CurrentlyCleaning = false
	end
end

Janitor.__index.Clean = Janitor.__index.Cleanup

function Janitor.__index:Destroy()
	self:Cleanup()
	--table.clear(self)
	--setmetatable(self, nil)
end

Janitor.__call = Janitor.__index.Cleanup

local Disconnect = {Connected = true}
Disconnect.__index = Disconnect
function Disconnect:Disconnect()
	if self.Connected then
		self.Connected = false
		self.Connection:Disconnect()
	end
end

function Disconnect:__tostring()
	return "Disconnect<" .. tostring(self.Connected) .. ">"
end

function Janitor.__index:LinkToInstance(Object, AllowMultiple)
	local Connection
	local IndexToUse = AllowMultiple and newproxy(false) or LinkToInstanceIndex
	local IsNilParented = Object.Parent == nil
	local ManualDisconnect = setmetatable({}, Disconnect)

	local function ChangedFunction(_DoNotUse, NewParent)
		if ManualDisconnect.Connected then
			_DoNotUse = nil
			IsNilParented = NewParent == nil

			if IsNilParented then
				coroutine.wrap(function()
					Heartbeat:Wait()
					if not ManualDisconnect.Connected then
						return
					elseif not Connection.Connected then
						self:Cleanup()
					else
						while IsNilParented and Connection.Connected and ManualDisconnect.Connected do
							Heartbeat:Wait()
						end

						if ManualDisconnect.Connected and IsNilParented then
							self:Cleanup()
						end
					end
				end)()
			end
		end
	end

	Connection = Object.AncestryChanged:Connect(ChangedFunction)
	ManualDisconnect.Connection = Connection

	if IsNilParented then
		ChangedFunction(nil, Object.Parent)
	end

	Object = nil
	return self:Add(ManualDisconnect, "Disconnect", IndexToUse)
end

function Janitor.__index:LinkToInstances(...)
	local ManualCleanup = Janitor.new()
	for _, Object in ipairs({...}) do
		ManualCleanup:Add(self:LinkToInstance(Object, true), "Disconnect")
	end

	return ManualCleanup
end

for FunctionName, Function in next, Janitor.__index do
	local NewFunctionName = string.sub(string.lower(FunctionName), 1, 1) .. string.sub(FunctionName, 2)
	Janitor.__index[NewFunctionName] = Function
end

return Janitor end function __DIST.b():typeof(__modImpl())local v=__DIST.cache.b if not v then v={c=__modImpl()}__DIST.cache.b=v end return v.c end end do local function __modImpl()-- Just generic utility functions which I use and repeat across all my projects



-- LOCAL

local Utility = {}
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer



Utility.Clone = function(object: any)
	local clonedObject: any

	if type(object) == "function" then
		clonedObject = clonefunction and clonefunction(object)
	elseif typeof(object) == "Instance" then
		clonedObject = cloneref and cloneref(object)
	end

	return clonedObject or object
end

Utility.ProtectUI = function(gui: Instance?): Instance | string
	local sHiddenUi, hiddenUi = pcall(function()
		return gethui()
	end)

	local sCoreGui, coreGui = pcall(function()
		local layer = Utility.Clone(game:GetService("CoreGui"))

		if layer and layer.ClassName then
			return layer
		end

		return
	end)

	local container = sHiddenUi and hiddenUi
		or sCoreGui and coreGui
		or Utility.Clone(game:GetService("Players")).LocalPlayer.PlayerGui

	if gui then
		local success, err = pcall(function()
			gui.Parent = container
		end)
		
		return success and gui or err
	end

	return container
end

-- FUNCTIONS
function Utility.createStagger(delayTime, callback, delayInitially)
	-- This creates and returns a function which when called
	-- acts identically to callback, however will only be called
	-- for a maximum of once per delayTime. If the returned function
	-- is called more than once during the delayTime, then it will
	-- wait until the expiryTime then perform another recall.
	-- This is useful for visual interfaces and effects which may be
	-- triggered multiple times within a frame or short period, but which
	-- we don't necessary need to (for performance reasons).
	local staggerActive = false
	local multipleCalls = false
	if not delayTime or delayTime == 0 then
		-- We make 0.01 instead of 0 because devices can now run at
		-- different frame rates
		delayTime = 0.01
	end
	local function staggeredCallback(...)
		if staggerActive then
			multipleCalls = true
			return
		end
		local packedArgs = table.pack(...)
		staggerActive = true
		multipleCalls = false
		task.spawn(function()
			if delayInitially then
				task.wait(delayTime)
			end
			callback(table.unpack(packedArgs))
		end)
		task.delay(delayTime, function()
			staggerActive = false
			if multipleCalls then
				-- This means it has been called at least once during
				-- the stagger period, so call again
				staggeredCallback(table.unpack(packedArgs))
			end
		end)
	end
	return staggeredCallback
end

function Utility.round(n)
	-- Credit to Darkmist101 for this
	return math.floor(n + 0.5)
end

function Utility.reverseTable(t)
	for i = 1, math.floor(#t/2) do
		local j = #t - i + 1
		t[i], t[j] = t[j], t[i]
	end
end

function Utility.copyTable(t)
	-- Credit to Stephen Leitnick (September 13, 2017) for this function from TableUtil
	assert(type(t) == "table", "First argument must be a table")
	local tCopy = table.create(#t)
	for k,v in pairs(t) do
		if (type(v) == "table") then
			tCopy[k] = Utility.copyTable(v)
		else
			tCopy[k] = v
		end
	end
	return tCopy
end

local validCharacters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0","<",">","?","@","{","}","[","]","!","(",")","=","+","~","#"}
function Utility.generateUID(length)
	length = length or 8
	local UID = ""
	local list = validCharacters
	local total = #list
	for i = 1, length do
		local randomCharacter = list[math.random(1, total)]
		UID = UID..randomCharacter
	end
	return UID
end

local instanceTrackers = {}
function Utility.setVisible(instance, bool, sourceUID)
	-- This effectively works like a buff object but
	-- incredibly simplified. It stacks false values
	-- so that if there is more than more than, the 
	-- instance remains hidden even if set visible true
	local tracker = instanceTrackers[instance]
	if not tracker then
		tracker = {}
		instanceTrackers[instance] = tracker
		instance.Destroying:Once(function()
			instanceTrackers[instance] = nil
		end)
	end
	if not bool then
		tracker[sourceUID] = true
	else
		tracker[sourceUID] = nil
	end
	local isVisible = bool
	if bool then
		for sourceUID, _ in pairs(tracker) do
			isVisible = false
			break
		end
	end
	instance.Visible = isVisible
end

function Utility.formatStateName(incomingStateName)
	return string.upper(string.sub(incomingStateName, 1, 1))..string.lower(string.sub(incomingStateName, 2))
end

function Utility.localPlayerRespawned(callback)
	-- The client localscript may be located under a ScreenGui with ResetOnSpawn set to true
	-- In these scenarios, traditional methods like CharacterAdded won't be called by the
	-- time the localscript has been destroyed, therefore we listen for removing instead
	-- If humanoid and health == 0, then reset/died normally, else was
	-- forcefully reset via a method such as LoadCharacter
	-- We wrap this behaviour in case any additional quirks need to be accounted for
	localPlayer.CharacterRemoving:Connect(callback)
end

function Utility.getClippedContainer(screenGui)
	-- We always want clipped items to display in front hence
	-- why we have this
	local clippedContainer = screenGui:FindFirstChild("ClippedContainer")
	if not clippedContainer then
		clippedContainer = Instance.new("Folder")
		clippedContainer.Name = "ClippedContainer"
		clippedContainer.Parent = screenGui
	end
	return clippedContainer
end

local Janitor = __DIST.b()
local GuiService = game:GetService("GuiService")
function Utility.clipOutside(icon, instance)
	local cloneJanitor = icon.janitor:add(Janitor.new())
	instance.Destroying:Once(function()
		cloneJanitor:Destroy()
	end)
	icon.janitor:add(instance)

	local originalParent = instance.Parent
	local clone = cloneJanitor:add(Instance.new("Frame"))
	clone:SetAttribute("IsAClippedClone", true)
	clone.Name = instance.Name
	clone.AnchorPoint = instance.AnchorPoint
	clone.Size = instance.Size
	clone.Position = instance.Position
	clone.BackgroundTransparency = 1
	clone.LayoutOrder = instance.LayoutOrder
	clone.Parent = originalParent

	local valueInstance = Instance.new("ObjectValue")
	valueInstance.Name = "OriginalInstance"
	valueInstance.Value = instance
	valueInstance.Parent = clone

	local valueInstanceCopy = valueInstance:Clone()
	instance:SetAttribute("HasAClippedClone", true)
	valueInstanceCopy.Name = "ClippedClone"
	valueInstanceCopy.Value = clone
	valueInstanceCopy.Parent = instance

	local screenGui
	local Icon = icon._iconRef
	local container = Icon.container
	local function updateScreenGui()
		local originalScreenGui = originalParent and originalParent:FindFirstAncestorWhichIsA("ScreenGui")
		if not originalScreenGui then
			return
		end
		if string.match(originalScreenGui.Name, "Clipped") then
			screenGui = originalScreenGui
			return
		end
		-- If we're integrated into an external topbar, there may be no matching
		-- "Clipped" ScreenGui in our container. Fall back gracefully.
		screenGui = container[originalScreenGui.Name.."Clipped"] or originalScreenGui
		instance.AnchorPoint = Vector2.new(0, 0)
		instance.Parent = Utility.getClippedContainer(screenGui)
	end
	cloneJanitor:add(icon.alignmentChanged:Connect(updateScreenGui))
	updateScreenGui()

	-- Lets copy over children that modify size
	for _, child in pairs(instance:GetChildren()) do
		if child:IsA("UIAspectRatioConstraint") then
			child:Clone().Parent = clone
		end
	end

	-- If the icon is hidden, its important we are too (as
	-- setting a parent to visible = false no longer makes
	-- this hidden)
	local widget = icon.widget
	local isOutsideParent = false
	local ignoreVisibilityUpdater = instance:GetAttribute("IgnoreVisibilityUpdater")
	local function updateVisibility()
		if ignoreVisibilityUpdater then
			return
		end
		local isVisible = widget.Visible
		if isOutsideParent then
			isVisible = false
		end
		Utility.setVisible(instance, isVisible, "ClipHandler")
	end
	cloneJanitor:add(widget:GetPropertyChangedSignal("Visible"):Connect(updateVisibility))

	local previousScroller
	local function checkIfOutsideParentXBounds()
		-- Defer so that roblox's properties reflect their true values
		task.defer(function()
			-- If the instance is within a parent item (such as a dropdown or menu)
			-- then we hide it if it exceeds the bounds of that parent
			local parentInstance
			local ourUID = icon.UID
			local nextIconUID = ourUID
			local shouldClipToParent = instance:GetAttribute("ClipToJoinedParent")
			if shouldClipToParent then
				for i = 1, 10 do -- This is safer than while true do and should never be > 4 parents
					local nextIcon = Icon.getIconByUID(nextIconUID)
					if not nextIcon then
						break
					end
					local nextParentInstance = nextIcon.joinedFrame
					nextIconUID = nextIcon.parentIconUID
					if not nextParentInstance then
						break
					end
					parentInstance = nextParentInstance
					if parentInstance and parentInstance.Name == "DropdownScroller" then
						break
					end
				end
			end
			if not parentInstance then
				isOutsideParent = false
				updateVisibility()
				return
			end
			local pos = instance.AbsolutePosition
			local halfSize = instance.AbsoluteSize/2
			local parentPos = parentInstance.AbsolutePosition
			local parentSize = parentInstance.AbsoluteSize
			local posHalf = (pos + halfSize)
			local exceededLeft = posHalf.X < parentPos.X
			local exceededRight = posHalf.X > (parentPos.X + parentSize.X)
			local exceededTop = posHalf.Y < parentPos.Y
			local exceededBottom = posHalf.Y > (parentPos.Y + parentSize.Y)
			local hasExceeded = exceededLeft or exceededRight or exceededTop or exceededBottom
			if hasExceeded ~= isOutsideParent then
				isOutsideParent = hasExceeded
				updateVisibility()
			end
			if parentInstance:IsA("ScrollingFrame") and previousScroller ~= parentInstance then
				previousScroller = parentInstance
				local connection = parentInstance:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function()
					checkIfOutsideParentXBounds()
				end)
				cloneJanitor:add(connection, "Disconnect", "TrackUtilityScroller-"..ourUID)
			end
		end)
	end

	local camera = workspace.CurrentCamera
	local additionalOffsetX = instance:GetAttribute("AdditionalOffsetX") or 0
	local function trackProperty(property)
		local absoluteProperty = "Absolute"..property
		local function updateProperty()
			local cloneValue = clone[absoluteProperty]
			local absoluteValue = UDim2.fromOffset(cloneValue.X, cloneValue.Y)
			if property == "Position" then

				-- This binds the instances within the bounds of the screen
				local SIDE_PADDING = 4
				local limitX = camera.ViewportSize.X - instance.AbsoluteSize.X - SIDE_PADDING
				local inputX = absoluteValue.X.Offset
				if inputX < SIDE_PADDING then
					inputX = SIDE_PADDING
				elseif inputX > limitX then
					inputX = limitX
				end
				absoluteValue = UDim2.fromOffset(inputX, absoluteValue.Y.Offset)

				-- AbsolutePosition does not perfectly match with TopbarInsets enabled
				-- This corrects this
				local topbarInset = GuiService.TopbarInset
				local viewportWidth = workspace.CurrentCamera.ViewportSize.X
				local guiWidth = screenGui.AbsoluteSize.X
				local guiOffset = screenGui.AbsolutePosition.X
				--local widthDifference = guiOffset - topbarInset.Min.X
				local oldTopbarCenterOffset = 0--widthDifference/30
				local offsetX = if Icon.isOldTopbar then guiOffset else viewportWidth - guiWidth - oldTopbarCenterOffset
				
				-- Also add additionalOffset
				offsetX -= additionalOffsetX
				absoluteValue += UDim2.fromOffset(-offsetX, topbarInset.Height)

				-- Finally check if within its direct parents bounds
				checkIfOutsideParentXBounds()

			end
			instance[property] = absoluteValue
		end
		
		-- This defer is essential as the listener may be in a different screenGui to the actor
		local updatePropertyStaggered = Utility.createStagger(0.01, updateProperty)
		cloneJanitor:add(clone:GetPropertyChangedSignal(absoluteProperty):Connect(updatePropertyStaggered))
		cloneJanitor:add(clone:GetAttributeChangedSignal("ForceUpdate"):Connect(function()
			updatePropertyStaggered()
		end))

		-- This is to patch a weirddddd bug with ScreenGuis with SreenInsets set to
		-- 'TopbarSafeInsets'. For some reason the absolute position of gui instances
		-- within this type of screenGui DO NOT accurately update to match their new
		-- real world position; instead they jump around almost randomly for a few frames.
		-- I have spent way too many hours trying to solve this bug, I think the only way
		-- for the time being is to not use ScreenGuis with TopbarSafeInsets, but I don't
		-- have time to redesign the entire system around that at the moment.
		-- Here's a GIF of this bug: https://i.imgur.com/VitHdC1.gif
		local updatePropertyPatch = Utility.createStagger(0.5, updateProperty, true)
		cloneJanitor:add(clone:GetPropertyChangedSignal(absoluteProperty):Connect(updatePropertyPatch))
		
		-- When the screenGui is resized (such as when chat is hidden/shown), we need
		-- to update the position of the clone. Ths especially fixes the following:
		-- https://devforum.roblox.com/t/bug/1017485/1732
		if property == "Position" then
			cloneJanitor:add(screenGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				updatePropertyStaggered()
			end))
		end

	end
	task.delay(0.1, checkIfOutsideParentXBounds)
	checkIfOutsideParentXBounds()
	updateVisibility()
	trackProperty("Position")
	
	-- Track visiblity changes
	cloneJanitor:add(instance:GetPropertyChangedSignal("Visible"):Connect(function()
		--print("Visiblity changed:", instance, clone, instance.Visible)
		--clone.Visible = instance.Visible
	end))

	-- To ensure accurate positioning, it's important the clone also remains the same size as the instance
	local shouldTrackCloneSize = instance:GetAttribute("TrackCloneSize")
	if shouldTrackCloneSize then
		trackProperty("Size")
	else
		cloneJanitor:add(instance:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			local absolute = instance.AbsoluteSize
			clone.Size = UDim2.fromOffset(absolute.X, absolute.Y)
		end))
	end

	return clone
end

function Utility.joinFeature(originalIcon, parentIcon, iconsArray, scrollingFrameOrFrame)

	-- This is resonsible for moving the icon under a feature like a dropdown
	local joinJanitor = originalIcon.joinJanitor
	joinJanitor:Cleanup()
	if not scrollingFrameOrFrame then
		originalIcon:leave()
		return
	end
	originalIcon.parentIconUID = parentIcon.UID
	originalIcon.joinedFrame = scrollingFrameOrFrame
	local function updateAlignent()
		local parentAlignment = parentIcon.alignment
		if parentAlignment == "Center" then
			parentAlignment = "Left"
		end
		originalIcon:setAlignment(parentAlignment, true)
	end
	joinJanitor:add(parentIcon.alignmentChanged:Connect(updateAlignent))
	updateAlignent()
	originalIcon:modifyTheme({"IconButton", "BackgroundTransparency", 1}, "JoinModification")
	originalIcon:modifyTheme({"ClickRegion", "Active", false}, "JoinModification")
	if parentIcon.childModifications then
		-- We defer so that the default values (such as dropdown
		-- minimum width can be applied before any custom
		-- child modifications from the user)
		task.defer(function()
			originalIcon:modifyTheme(parentIcon.childModifications, parentIcon.childModificationsUID)
		end)
	end
	--
	local clickRegion = originalIcon:getInstance("ClickRegion")
	local function makeSelectable()
		clickRegion.Selectable = parentIcon.isSelected
	end
	joinJanitor:add(parentIcon.toggled:Connect(makeSelectable))
	task.defer(makeSelectable)
	joinJanitor:add(function()
		clickRegion.Selectable = true
	end)
	--

	-- We track icons in arrays and dictionaries using their UID instead of the icon
	-- itself to prevent heavy cyclical tables when printing the icons
	local originalIconUID = originalIcon.UID
	table.insert(iconsArray, originalIconUID)
	parentIcon:autoDeselect(false)
	parentIcon.childIconsDict[originalIconUID] = true
	if not parentIcon.isEnabled then
		parentIcon:setEnabled(true)
	end
	originalIcon.joinedParent:Fire(parentIcon)

	-- This is responsible for removing it from that feature and updating
	-- their parent icon so its informed of the icon leaving it
	joinJanitor:add(function()
		local joinedFrame = originalIcon.joinedFrame
		if not joinedFrame then
			return
		end
		for i, iconUID in pairs(iconsArray) do
			if iconUID == originalIconUID then
				table.remove(iconsArray, i)
				break
			end
		end
		local Icon = originalIcon._iconRef
		local parentIcon = Icon.getIconByUID(originalIcon.parentIconUID)
		if not parentIcon then
			return
		end
		originalIcon:setAlignment(originalIcon.originalAlignment)
		originalIcon.parentIconUID = false
		originalIcon.joinedFrame = false
		--originalIcon:setBehaviour("IconButton", "BackgroundTransparency", nil, true)
		originalIcon:removeModification("JoinModification")
		
		local parentHasNoChildren = true
		local parentChildIcons = parentIcon.childIconsDict
		parentChildIcons[originalIconUID] = nil
		for childIconUID, _ in pairs(parentChildIcons) do
			parentHasNoChildren = false
			break
		end
		if parentHasNoChildren and not parentIcon.isAnOverflow then
			parentIcon:setEnabled(false)
		end
		updateAlignent()

	end)

end



return Utility end function __DIST.c():typeof(__modImpl())local v=__DIST.cache.c if not v then v={c=__modImpl()}__DIST.cache.c=v end return v.c end end do local function __modImpl()-- Themes in v3 work simply by applying the value (agument[3])
-- to the property (agument[2]) of an instance within the icon which
-- matches the name of argument[1]. Argument[1] can also be used to
-- specify a collection of instances with a corresponding 'collective'
-- value. A colletive is simply an attribute applied to some instances
-- within the icon to group them together (such as "IconCorners").
-- If the property (argument[2]) does not exist within the instance,
-- it will instead be applied as an attribute on the instance:
-- (i.e. ``instance:SetAttribute(argument[2], [argument[3])``)
-- Use argument[4] to specify a state: "Deselected", "Selected"
-- or "Viewing". If argument[4] is empty the state will default
-- to "Deselected".
-- I've designed themes this way so you have full control over
-- the appearance of the widget and its descendants



return {
	
	-- When no state is specified the modification is applied to *all* states (Deselected, Selected and Viewing)
	{"IconCorners", "CornerRadius", UDim.new(1, 0)},
	{"Selection", "RotationSpeed", 1},
	{"Selection", "Size", UDim2.new(1, 0, 1, 1)},
	{"Selection", "Position", UDim2.new(0, 0, 0, 0)},
	{"SelectionGradient", "Color", ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(86, 86, 86)),
	})},
	
	-- When the icon is deselected
	{"IconImage", "Image", "", "Deselected"},
	{"IconLabel", "Text", "", "Deselected"},
	{"IconLabel", "Position", UDim2.fromOffset(0, 0), "Deselected"}, -- 0, -1
	{"Widget", "DesiredWidth", 44, "Deselected"},
	{"Widget", "MinimumWidth", 44, "Deselected"},
	{"Widget", "MinimumHeight", 44, "Deselected"},
	{"Widget", "BorderSize", 4, "Deselected"},
  	{"IconButton", "BackgroundColor3", Color3.fromRGB(18, 18, 21), "Deselected"},
	{"IconButton", "BackgroundTransparency", 0.08, "Deselected"},
	{"IconImageScale", "Value", 0.5, "Deselected"},
	{"IconImageCorner", "CornerRadius", UDim.new(0, 0), "Deselected"},
	{"IconImage", "ImageColor3", Color3.fromRGB(255, 255, 255), "Deselected"},
	{"IconImage", "ImageTransparency", 0, "Deselected"},
	{"IconImageRatio", "AspectRatio", 1, "Deselected"},
	{"IconLabel", "FontFace", Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal), "Deselected"},
	{"IconLabel", "TextSize", 16, "Deselected"},
	{"IconSpot", "BackgroundTransparency", 1, "Deselected"},
	{"IconOverlay", "BackgroundTransparency", 0.85, "Deselected"},
	{"IconSpotGradient", "Enabled", false, "Deselected"},
	{"IconGradient", "Enabled", false, "Deselected"},
	{"ClickRegion", "Active", true, "Deselected"},  -- This is set to false within scrollers to ensure scroller can be dragged on mobile
	{"Menu", "Active", false, "Deselected"},
	{"ContentsList", "HorizontalAlignment", Enum.HorizontalAlignment.Center, "Deselected"},
  	{"Dropdown", "BackgroundColor3", Color3.fromRGB(18, 18, 21), "Deselected"},
	{"Dropdown", "BackgroundTransparency", 0.08, "Deselected"},
	{"Dropdown", "MaxIcons", 4.5, "Deselected"},
	{"Menu", "MaxIcons", 4, "Deselected"},
	{"Notice", "Position", UDim2.new(1, -12, 0, -1), "Deselected"},
	{"Notice", "Size", UDim2.new(0, 20, 0, 20), "Deselected"},
	{"NoticeLabel", "TextSize", 13, "Deselected"},
	{"PaddingLeft", "Size", UDim2.new(0, 9, 1, 0), "Deselected"},
	{"PaddingRight", "Size", UDim2.new(0, 11, 1, 0), "Deselected"},
	
	-- When the icon is selected
	-- Selected also inherits everything from Deselected if nothing is set
	{"IconSpot", "BackgroundTransparency", 0.7, "Selected"},
	{"IconSpot", "BackgroundColor3", Color3.fromRGB(255, 255, 255), "Selected"},
	{"IconSpotGradient", "Enabled", true, "Selected"},
	{"IconSpotGradient", "Rotation", 45, "Selected"},
	{"IconSpotGradient", "Color", ColorSequence.new(Color3.fromRGB(96, 98, 100), Color3.fromRGB(77, 78, 80)), "Selected"},
	
	
	-- When a cursor is hovering above, a controller highlighting, or touchpad (mobile) pressing (but not released)
	--{"IconSpot", "BackgroundTransparency", 0.75, "Viewing"},
	
}end function __DIST.d():typeof(__modImpl())local v=__DIST.cache.d if not v then v={c=__modImpl()}__DIST.cache.d=v end return v.c end end do local function __modImpl()-- The functions here are dedicated solely to managing theme state
-- and updating the appearance of instances to match that state.
-- You don't need to use any of these functions, the useful ones
-- have been abstracted as icon methods



-- LOCAL

local Themes = {}
local Utility = __DIST.c()
local baseTheme = __DIST.d()



-- FUNCTIONS
function Themes.getThemeValue(stateGroup, instanceName, property, iconState)
	if stateGroup then
		for _, detail in pairs(stateGroup) do
			local checkingInstanceName, checkingPropertyName, checkingValue = unpack(detail)
			if instanceName == checkingInstanceName and property == checkingPropertyName then
				return checkingValue
			end
		end
	end
	return nil
end

function Themes.getInstanceValue(instance, property)
	local success, value = pcall(function()
		return instance[property]
	end)
	if not success then
		value = instance:GetAttribute(property)
	end
	return value
end

function Themes.getRealInstance(instance)
	if not instance:GetAttribute("IsAClippedClone") then
		return
	end
	local originalInstance = instance:FindFirstChild("OriginalInstance")
	if not originalInstance then
		return
	end
	return originalInstance.Value
end

function Themes.getClippedClone(instance)
	if not instance:GetAttribute("HasAClippedClone") then
		return
	end
	local clippedClone = instance:FindFirstChild("ClippedClone")
	if not clippedClone then
		return
	end
	return clippedClone.Value
end

function Themes.refresh(icon, instance, specificProperty)
	-- Some instances such as notices need immediate refreshing upon creation as
	-- they're added in after the initial refresh period
	if specificProperty then
		local stateGroup = icon:getStateGroup()
		local value = Themes.getThemeValue(stateGroup, instance.Name, specificProperty) or Themes.getInstanceValue(instance, specificProperty)
		Themes.apply(icon, instance, specificProperty, value, true)
		return
	end
	-- If no property is specified we update all properties that exist within
	-- the applied theme appearance
	local stateGroup = icon:getStateGroup()
	if not stateGroup then
		return
	end
	local validInstances = {[instance.Name] = instance}
	for _, child in pairs(instance:GetDescendants()) do
		local collective = child:GetAttribute("Collective")
		if collective then
			validInstances[collective] = child
		end
		validInstances[child.Name] = child
	end
	for _, detail in pairs(stateGroup) do
		local checkingInstanceName, checkingPropertyName, checkingValue = unpack(detail)
		local instanceToUpdate = validInstances[checkingInstanceName]
		if instanceToUpdate then
			Themes.apply(icon, instanceToUpdate.Name, checkingPropertyName, checkingValue, true)
		end
	end
	return
end

function Themes.apply(icon, collectiveOrInstanceNameOrInstance, property, value, forceApply)
	-- This is responsible for **applying** appearance changes to instances within the icon
	-- however it IS NOT responsible for updating themes. Use :modifyTheme for that.
	-- This also calls callbacks given by :setBehaviour before applying these property changes
	-- to the given instances
	if icon.isDestroyed then
		return
	end
	local instances
	local collectiveOrInstanceName = collectiveOrInstanceNameOrInstance
	if typeof(collectiveOrInstanceNameOrInstance) == "Instance" then
		instances = {collectiveOrInstanceNameOrInstance}
		collectiveOrInstanceName = collectiveOrInstanceNameOrInstance.Name
	else
		instances = icon:getInstanceOrCollective(collectiveOrInstanceNameOrInstance)
	end
	local key = collectiveOrInstanceName.."-"..property
	local customBehaviour = icon.customBehaviours[key]
	for _, instance in pairs(instances) do
		local clippedClone = Themes.getClippedClone(instance)
		if clippedClone then
			-- This means theme effects are applied to both the original
			-- instance and its clone (instead of just the instance).
			-- This is important for some properties such as position
			-- and size which might be dictated by the clone
			table.insert(instances, clippedClone)
		end
	end
	for _, instance in pairs(instances) do
		if property == "Position" and Themes.getClippedClone(instance) then
			-- The clone manages the position of the real instance so ignore
			continue
		elseif property == "Size" and Themes.getRealInstance(instance) then
			-- The real instance manages the size of the clone so ignore
			continue
		end
		local currentValue = Themes.getInstanceValue(instance, property)
		if not forceApply and value == currentValue then
			continue
		end
		if customBehaviour then
			local newValue = customBehaviour(value, instance, property)
			if newValue ~= nil then
				value = newValue
			end
		end
		local success = pcall(function()
			instance[property] = value
		end)
		if not success then
			-- If property is not a real property, we set
			-- the value as an attribute instead. This is useful
			-- for instance in :setWidth where we also want to
			-- specify a desired width for every state which can
			-- then be easily read by the widget element
			instance:SetAttribute(property, value)
		end
	end
end

function Themes.getModifications(modifications)
	if typeof(modifications[1]) ~= "table" then
		-- This enables users to do :modifyTheme({a,b,c,d})
		-- in addition of :modifyTheme({{a,b,c,d}})
		modifications = {modifications}
	end
	return modifications
end

function Themes.merge(detail, modification, callback)
	local instanceName, property, value, stateName = table.unpack(modification)
	local checkingInstanceName, checkingPropertyName, _, checkingStateName = table.unpack(detail)
	if instanceName == checkingInstanceName and property == checkingPropertyName and Themes.statesMatch(stateName, checkingStateName) then
		detail[3] = value
		if callback then
			callback(detail)
		end
		return true
	end
	return false
end

function Themes.modify(icon, modifications, modificationsUID)
	-- This is what the 'old set' used to do (although for clarity that behaviour has now been
	-- split into two methods, .modifyTheme and .apply).
	-- modifyTheme is responsible for UPDATING the internal values within a theme for a particular
	-- state, then checking to see if the appearance of the icon needs to be updated.
	-- If no iconState is specified, the change is applied to both Deselected and Selected
	-- A modification can also be 'undone' using :removeModification and passing in
	-- the UID returned from this method
	task.spawn(function()
		modificationsUID = modificationsUID or Utility.generateUID()
		modifications = Themes.getModifications(modifications)
		for _, modification in pairs(modifications) do
			local instanceName, property, value, iconState = table.unpack(modification)
			if iconState == nil then
				-- If no state specified, apply to all states
				Themes.modify(icon, {instanceName, property, value, "Selected"}, modificationsUID)
				Themes.modify(icon, {instanceName, property, value, "Viewing"}, modificationsUID)
			end
			local chosenState = Utility.formatStateName(iconState or "Deselected")
			local stateGroup = icon:getStateGroup(chosenState)
			local function nowSetIt()
				if chosenState == icon.activeState then
					Themes.apply(icon, instanceName, property, value)
				end
			end
			local function updateRecord()
				for stateName, detail in pairs(stateGroup) do
					local didMerge = Themes.merge(detail, modification, function(detail)
						detail[5] = modificationsUID
						nowSetIt()
					end)
					if didMerge then
						return
					end
				end
				local detail = {instanceName, property, value, chosenState, modificationsUID}
				table.insert(stateGroup, detail)
				nowSetIt()
			end
			updateRecord()
		end
	end)
	return modificationsUID
end

function Themes.remove(icon, modificationsUID)
	for iconState, stateGroup in pairs(icon.appearance) do
		for i = #stateGroup, 1, -1 do
			local detail = stateGroup[i]
			local checkingUID = detail[5]
			if checkingUID == modificationsUID then
				table.remove(stateGroup, i)
			end
		end
	end
	Themes.rebuild(icon)
end

function Themes.removeWith(icon, instanceName, property, state)
	for iconState, stateGroup in pairs(icon.appearance) do
		if state == iconState or not state then
			for i = #stateGroup, 1, -1 do
				local detail = stateGroup[i]
				local detailName = detail[1]
				local detailProperty = detail[2]
				if detailName == instanceName and detailProperty == property then
					table.remove(stateGroup, i)
				end
			end
		end
	end
	Themes.rebuild(icon)
end

function Themes.change(icon)
	-- This changes the theme to the appearance of whatever
	-- state is currently active
	local stateGroup = icon:getStateGroup()
	for _, detail in pairs(stateGroup) do
		local instanceName, property, value = unpack(detail)
		Themes.apply(icon, instanceName, property, value)
	end
end

function Themes.set(icon, theme)
	-- This is responsible for processing the final appearance of a given theme (such as
	-- ensuring Deselected merge into missing Selected, saving that internal state,
	-- then checking to see if the appearance of the icon needs to be updated
	local themesJanitor = icon.themesJanitor
	themesJanitor:Cleanup()
	themesJanitor:add(icon.stateChanged:Connect(function()
		Themes.change(icon)
	end))
	icon.appliedTheme = theme
	Themes.rebuild(icon)
end

function Themes.statesMatch(state1, state2)
	-- States match if they have the same name OR if nil (because unspecified represents all states)
	local state1lower = (state1 and string.lower(state1))
	local state2lower = (state2 and string.lower(state2))
	return state1lower == state2lower or not state1 or not state2
end

function Themes.rebuild(icon)
	-- A note for my future self: this code can be optimised further by
	-- converting appearance into a instanceName-property dictionary
	-- as apposed to an array of every potential change. When converting
	-- in the future, .modify and .apply would also have to be updated.
	local appliedTheme = icon.appliedTheme
	local statesArray = {"Deselected", "Selected", "Viewing"}
	local function generateTheme()
		for _, stateName in pairs(statesArray) do
			-- This applies themes in layers
			-- The last layers take higher priority as they overwrite
			-- any duplicate earlier applied effects
			local stateAppearance = {}
			local function updateDetails(theme, incomingStateName)
				-- This ensures there's always a base 'default' layer
				if not theme then
					return
				end
				for _, detail in pairs(theme) do
					local modificationsUID = detail[5]
					local detailStateName = detail[4]
					if Themes.statesMatch(incomingStateName, detailStateName) then
						local key = detail[1].."-"..detail[2]
						local newDetail = Utility.copyTable(detail)
						newDetail[5] = modificationsUID
						stateAppearance[key] = newDetail
					end
				end
			end
			-- First we apply the base theme (i.e. the Default module)
			if stateName == "Selected" then
				updateDetails(baseTheme, "Deselected")
			end
			updateDetails(baseTheme, "Empty")
			updateDetails(baseTheme, stateName)
			-- Next we apply any custom themes by the games developer
			if appliedTheme ~= baseTheme then
				if stateName == "Selected" then
					updateDetails(appliedTheme, "Deselected")
				end
				updateDetails(baseTheme, "Empty")
				updateDetails(appliedTheme, stateName)
			end
			-- Finally we apply any modifications that have already been made
			-- Modifiers are all the changes made using icon:modifyTheme(...)
			local alreadyAppliedTheme = {}
			local alreadyAppliedGroup = icon.appearance[stateName]
			if alreadyAppliedGroup then
				for _, modifier in pairs(alreadyAppliedGroup) do
					local modificationsUID = modifier[5]
					if modificationsUID ~= nil then
						local modification = {modifier[1], modifier[2], modifier[3], stateName, modificationsUID}
						table.insert(alreadyAppliedTheme, modification)
					end
				end
			end
			updateDetails(alreadyAppliedTheme, stateName)
			-- This now converts it into our final appearance
			local finalStateAppearance = {}
			for _, detail in pairs(stateAppearance) do
				table.insert(finalStateAppearance, detail)
			end
			icon.appearance[stateName] = finalStateAppearance
		end
		Themes.change(icon)
	end
	generateTheme()
end



return Themes end function __DIST.e():typeof(__modImpl())local v=__DIST.cache.e if not v then v={c=__modImpl()}__DIST.cache.e=v end return v.c end end do local function __modImpl()
return function(Icon)

	-- Credit to lolmansReturn and Canary Software for
	-- retrieving these values
	local selectionContainer = Instance.new("Frame")
	selectionContainer.Name = "SelectionContainer"
	selectionContainer.Visible = false
	
	local selection = Instance.new("Frame")
	selection.Name = "Selection"
	selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	selection.BackgroundTransparency = 1
	selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
	selection.BorderSizePixel = 0
	selection.Parent = selectionContainer

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Name = "UIStroke"
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.Thickness = 3
	UIStroke.Parent = selection

	local selectionGradient = Instance.new("UIGradient")
	selectionGradient.Name = "SelectionGradient"
	selectionGradient.Parent = UIStroke

	local UICorner = Instance.new("UICorner")
	UICorner:SetAttribute("Collective", "IconCorners")
	UICorner.Name = "UICorner"
	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = selection
	
	local RunService = game:GetService("RunService")
	local GuiService = game:GetService("GuiService")
	local rotationSpeed = 1
	selection:GetAttributeChangedSignal("RotationSpeed"):Connect(function()
		rotationSpeed = selection:GetAttribute("RotationSpeed")
	end)
	RunService.Heartbeat:Connect(function()
		if not GuiService.SelectedObject then
			return
		end
		selectionGradient.Rotation = (os.clock() * rotationSpeed * 100) % 360
	end)

	return selectionContainer
	
end end function __DIST.f():typeof(__modImpl())local v=__DIST.cache.f if not v then v={c=__modImpl()}__DIST.cache.f=v end return v.c end end do local function __modImpl()-- As the name suggests, this handles everything related to gamepads
-- (i.e. Xbox or Playstation controllers) and their navigation
-- I created a separate module for gamepads (and not touchpads or
-- keyboards) because gamepads are greatly more unqiue and require
-- additional tailored programming



-- SERVICES

local GamepadService = game:GetService("GamepadService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")



-- LOCAL
local DEFAULT_HIGHLIGHT_KEY = Enum.KeyCode.DPadUp -- The default key to highlight the topbar icon
local GAMEPAD_INPUT = Enum.PreferredInput.Gamepad
local Gamepad = {}
local Icon



-- FUNCTIONS
-- This is called upon the Icon initializing
function Gamepad.start(incomingIcon)
	
	-- Public variables
	Icon = incomingIcon
	Icon.highlightKey = if Icon.highlightKey ~= nil then Icon.highlightKey else DEFAULT_HIGHLIGHT_KEY -- What controller key to highlight the topbar (or set to false to disable)
	Icon.highlightIcon = false -- Change to a specific icon if you'd like to highlight a specific icon instead of the left-most
	
	-- We defer so the developer can make changes before the
	-- gamepad controls are initialized
	task.delay(1, function()
		-- Some local utility
		local iconsDict = Icon.iconsDictionary
		local function getIconFromSelectedObject()
			local clickRegion = GuiService.SelectedObject
			local iconUID = clickRegion and clickRegion:GetAttribute("CorrespondingIconUID")
			local icon = iconUID and iconsDict[iconUID]
			return icon
		end
		
		-- This enables users to instantly open up their last selected icon
		local previousHighlightedIcon
		local usedIndicatorOnce = DEFAULT_HIGHLIGHT_KEY ~= Icon.highlightKey
		local usedBOnce = DEFAULT_HIGHLIGHT_KEY ~= Icon.highlightKey
		local Selection = __DIST.f()
		local function updateSelectedObject()
			local icon = getIconFromSelectedObject()
			local isUsingGamepad = UserInputService.PreferredInput == GAMEPAD_INPUT
			if icon then
				if isUsingGamepad then
					local clickRegion = icon:getInstance("ClickRegion")
					local selection = icon.selection
					if not selection then
						selection = icon.janitor:add(Selection(Icon))
						selection:SetAttribute("IgnoreVisibilityUpdater", true)
						selection.Parent = icon.widget
						icon.selection = selection
						icon:refreshAppearance(selection) --icon:clipOutside(selection)
					end
					clickRegion.SelectionImageObject = selection.Selection
				end
				if previousHighlightedIcon and previousHighlightedIcon ~= icon then
					previousHighlightedIcon:setIndicator()
				end
				local newIndicator = if isUsingGamepad and not usedBOnce and not icon.parentIconUID then Enum.KeyCode.ButtonB else nil
				previousHighlightedIcon = icon
				Icon.lastHighlightedIcon = icon
				icon:setIndicator(newIndicator)
			else
				local newIndicator = if isUsingGamepad and not usedIndicatorOnce then Icon.highlightKey else nil
				if not previousHighlightedIcon then
					previousHighlightedIcon = Gamepad.getIconToHighlight()
				end
				if newIndicator == Icon.highlightKey then
					-- We only display the highlightKey once to show
					-- the user how to highlight the topbar icon
					usedIndicatorOnce = true
				else
					--usedBOnce = true
				end
				if previousHighlightedIcon then
					previousHighlightedIcon:setIndicator(newIndicator)
				end
			end
		end
		GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(updateSelectedObject)

		-- This listens for a gamepad being present/added/removed
		local function preferredInputChanged()
			local preferredInput = UserInputService.PreferredInput
			local isUsingGamepad = preferredInput == GAMEPAD_INPUT

			if not isUsingGamepad then
				usedIndicatorOnce = false
				usedBOnce = false
			end
			updateSelectedObject()
		end
		UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(preferredInputChanged)
		preferredInputChanged()

		-- This allows for easy highlighting of the topbar when the
		-- when ``Icon.highlightKey`` (i.e. DPadUp) is pressed.
		-- If you'd like to disable, do ``Icon.highlightKey = false``
		UserInputService.InputBegan:Connect(function(input, touchingAnObject)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				-- Sometimes the Roblox gamepad glitches when combined with a cursor
				-- This fixes that by unhighlighting if the cursor is pressed down
				-- (i.e. a mouse click)
				local icon = getIconFromSelectedObject()
				if icon then
					GuiService.SelectedObject = nil
				end
				return
			end
			if input.KeyCode ~= Icon.highlightKey then
				return
			end
			local iconToHighlight = Gamepad.getIconToHighlight()
			if iconToHighlight then
				if GamepadService.GamepadCursorEnabled then
					task.wait(0.2)
					GamepadService:DisableGamepadCursor()
				end
				local clickRegion = iconToHighlight:getInstance("ClickRegion")
				GuiService.SelectedObject = clickRegion
			end
		end)
	end)
end

function Gamepad.getIconToHighlight()
	-- If an icon has already been selected, returns the last selected icon
	-- Else if more than 0 icons, it selects the left-most icon
	local iconsDict = Icon.iconsDictionary
	local iconToHighlight = Icon.highlightIcon or Icon.lastHighlightedIcon
	if not iconToHighlight then
		local currentX
		for _, icon in pairs(iconsDict) do
			if icon.parentIconUID then
				continue
			end
			local thisX = icon.widget.AbsolutePosition.X
			if not currentX or thisX < currentX then
				iconToHighlight = icon
				currentX = iconToHighlight.widget.AbsolutePosition.X
			end
		end
	end
	return iconToHighlight
end

-- This called when the icon's ClickRegion is created
function Gamepad.registerButton(buttonInstance)
	-- This provides a basic level of support for controllers by making
	-- the icons easy to highlight via the virtual cursor, then
	-- when selected, focuses in on the selected icon and hops
	-- between other nearby icons simply by toggling the joystick
	local inputBegan = false
	buttonInstance.InputBegan:Connect(function(input)
		-- Two wait frames required to ensure inputBegan is detected within
		-- UserInputService.InputBegan. We do this because object.InputBegan
		-- does not return the correct input objects (unlike the service)
		inputBegan = true
		task.wait()
		task.wait()
		inputBegan = false
	end)
	local connection = UserInputService.InputBegan:Connect(function(input)
		task.wait()
		if input.KeyCode == Enum.KeyCode.ButtonA and inputBegan then
			-- We focus on an icon when selected via the virtual cursor
			task.wait(0.2)
			GamepadService:DisableGamepadCursor()
			GuiService.SelectedObject = buttonInstance
			return
		end
		local isSelected = GuiService.SelectedObject == buttonInstance
		local unselectKeyCodes = {"ButtonB", "ButtonSelect"}
		local keyName = input.KeyCode.Name
		if table.find(unselectKeyCodes, keyName) and isSelected then
			-- We unfocus when back button is pressed, but ignore
			-- if the virtual cursor is disabled otherwise it will be
			-- impossible to select the topbar
			if not(keyName == "ButtonSelect" and not GamepadService.GamepadCursorEnabled) then
				GuiService.SelectedObject = nil
			end
		end
	end)
	buttonInstance.Destroying:Once(function()
		connection:Disconnect()
	end)
end



return Gamepad
end function __DIST.g():typeof(__modImpl())local v=__DIST.cache.g if not v then v={c=__modImpl()}__DIST.cache.g=v end return v.c end end do local function __modImpl()--// Imports

local Utility = __DIST.c()

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

-- FIX
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

	-- FIX
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

	-- FIX
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

			-- FIX
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
end function __DIST.h():typeof(__modImpl())local v=__DIST.cache.h if not v then v={c=__modImpl()}__DIST.cache.h=v end return v.c end end do local function __modImpl()




























































































































































































































































































































































































































































































return {}end function __DIST.i():typeof(__modImpl())local v=__DIST.cache.i if not v then v={c=__modImpl()}__DIST.cache.i=v end return v.c end end do local function __modImpl()-- This is to provide backwards compatability with the old Roblox
-- topbar while experiences transition over to the new topbar
-- You don't need to apply this yourself, topbarplus automatically
-- applies it if the old roblox topbar is detected



return {
	{"Selection", "Size", UDim2.new(1, -6, 1, -5)},
	{"Selection", "Position", UDim2.new(0, 3, 0, 3)},
	
	{"Widget", "MinimumWidth", 32, "Deselected"},
	{"Widget", "MinimumHeight", 32, "Deselected"},
	{"Widget", "BorderSize", 0, "Deselected"},
	{"IconCorners", "CornerRadius", UDim.new(0, 9), "Deselected"},
	{"IconButton", "BackgroundTransparency", 0.5, "Deselected"},
	{"IconLabel", "TextSize", 14, "Deselected"},
	{"Dropdown", "BackgroundTransparency", 0.5, "Deselected"},
	{"Notice", "Position", UDim2.new(1, -12, 0, -3), "Deselected"},
	{"Notice", "Size", UDim2.new(0, 15, 0, 15), "Deselected"},
	{"NoticeLabel", "TextSize", 11, "Deselected"},
	
	{"IconSpot", "BackgroundColor3", Color3.fromRGB(0, 0, 0), "Selected"},
	{"IconSpot", "BackgroundTransparency", 0.702, "Selected"},
	{"IconSpotGradient", "Enabled", false, "Selected"},
	{"IconOverlay", "BackgroundTransparency", 0.97, "Selected"},
	
}end function __DIST.j():typeof(__modImpl())local v=__DIST.cache.j if not v then v={c=__modImpl()}__DIST.cache.j=v end return v.c end end do local function __modImpl()
local hasBecomeOldTheme = false
local previousInsetHeight = 0
return function(Icon)
	
	-- Has to be included for the time being due to this bug mentioned here:
	-- https://devforum.roblox.com/t/bug/2973508/7
	local GuiService = game:GetService("GuiService")
	local Players =  game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local container = {}
	local Signal = __DIST.a()
	local insetChanged = Signal.new()
	local guiInset = GuiService:GetGuiInset()
	local startInset = 0
	local yDownOffset = 0
	local ySizeOffset = 0
	local checkCount = 0
	local isConsoleScreen = false
	local isUsingVR = false
	local function checkInset(status)
		local currentHeight = GuiService.TopbarInset.Height
		local isOldTopbar = currentHeight <= 36
		

		-- These additional checks are needed to ensure *it is actually* the old topbar
		-- and not a client which takes a really long time to load
		-- There's unfortunately no APIs to do this a prettier way
		isConsoleScreen = GuiService:IsTenFootInterface()
		isUsingVR = UserInputService.VREnabled
		Icon.isOldTopbar = isOldTopbar
		checkCount += 1
		if currentHeight == 0 and status == nil then
			task.defer(function()
				task.wait(8)
				checkInset("ForceConvertToOld")
			end)
		elseif checkCount == 1 then
			task.delay(5, function()
				if checkCount == 1 then
					checkInset()
				end
			end)
		end

		-- Conver to old theme if verified
		if Icon.isOldTopbar and not isConsoleScreen and not isUsingVR and hasBecomeOldTheme == false and (currentHeight ~= 0 or status == "ForceConvertToOld") then
			hasBecomeOldTheme = true
			task.defer(function()
				-- If oldtopbar, apply the Classic theme
				local Classic = __DIST.j()
				Icon.modifyBaseTheme(Classic)

				-- Also configure the oldtopbar correctly
				local function decideToHideTopbar()
					if GuiService.MenuIsOpen then
						Icon.setTopbarEnabled(false, true)
					else
						Icon.setTopbarEnabled()
					end
				end
				GuiService:GetPropertyChangedSignal("MenuIsOpen"):Connect(decideToHideTopbar)
				decideToHideTopbar()
			end)
		end

		-- Modify the offsets slightly depending on device type
		guiInset = GuiService:GetGuiInset()
		startInset = if isOldTopbar then 12 else guiInset.Y - 50
		yDownOffset = if isOldTopbar then 2 else 0 --if isOldTopbar then 2 else 0 
		ySizeOffset = -2
		if isConsoleScreen then
			startInset = 10
			yDownOffset = 0 ---9
		end
		if GuiService.TopbarInset.Height == 0 and not hasBecomeOldTheme then
			yDownOffset += 13
			ySizeOffset = 50
		end

		-- Now inform other areas of the change
		insetChanged:Fire(guiInset)
		local insetHeight = guiInset.Y
		if insetHeight ~= previousInsetHeight then
			previousInsetHeight = insetHeight
			task.defer(function()
				Icon.insetHeightChanged:Fire(insetHeight)
			end)
		end
		
	end
	GuiService:GetPropertyChangedSignal("TopbarInset"):Connect(checkInset)
	checkInset("FirstTime")

	local screenGui = Instance.new("ScreenGui")
	insetChanged:Connect(function()
		screenGui:SetAttribute("StartInset", startInset)
	end)
	screenGui.Name = "TopbarStandard"
	screenGui.Enabled = true
	screenGui.DisplayOrder = Icon.baseDisplayOrder
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.IgnoreGuiInset = true
	screenGui.ResetOnSpawn = false
	screenGui.ScreenInsets = Enum.ScreenInsets.TopbarSafeInsets
	container[screenGui.Name] = screenGui
	Icon.baseDisplayOrderChanged:Connect(function()
		screenGui.DisplayOrder = Icon.baseDisplayOrder
	end)

	local holders = Instance.new("Frame")
	holders.Name = "Holders"
	holders.BackgroundTransparency = 1
	insetChanged:Connect(function()
		local holderY = if isUsingVR then 36 else 56
		local holderSize = if isConsoleScreen then UDim2.new(1, 0, 0, holderY) else UDim2.new(1, 0, 1, ySizeOffset)
		holders.Position = UDim2.new(0, 0, 0, yDownOffset)
		holders.Size = holderSize
	end)
	holders.Visible = true
	holders.ZIndex = 1
	holders.Parent = screenGui
	
	local screenGuiCenter = screenGui:Clone()
	local holdersCenter = screenGuiCenter.Holders
	local function updateCenteredHoldersHeight()
		holdersCenter.Size = UDim2.new(1, 0, 0, GuiService.TopbarInset.Height+ySizeOffset)
	end
	screenGuiCenter.Name = "TopbarCentered"
	screenGuiCenter.DisplayOrder = Icon.baseDisplayOrder
	screenGuiCenter.ScreenInsets = Enum.ScreenInsets.None
	Icon.baseDisplayOrderChanged:Connect(function()
		screenGuiCenter.DisplayOrder = Icon.baseDisplayOrder
	end)
	container[screenGuiCenter.Name] = screenGuiCenter
	
	insetChanged:Connect(updateCenteredHoldersHeight)
	updateCenteredHoldersHeight()
	
	local screenGuiClipped = screenGui:Clone()
	screenGuiClipped.Name = screenGuiClipped.Name.."Clipped"
	screenGuiClipped.DisplayOrder = (Icon.baseDisplayOrder + 1)
	Icon.baseDisplayOrderChanged:Connect(function()
		screenGuiClipped.DisplayOrder = (Icon.baseDisplayOrder + 1)
	end)
	container[screenGuiClipped.Name] = screenGuiClipped
	
	local screenGuiCenterClipped = screenGuiCenter:Clone()
	screenGuiCenterClipped.Name = screenGuiCenterClipped.Name.."Clipped"
	screenGuiCenterClipped.DisplayOrder = (Icon.baseDisplayOrder + 1)
	Icon.baseDisplayOrderChanged:Connect(function()
		screenGuiCenterClipped.DisplayOrder = (Icon.baseDisplayOrder + 1)
	end)
	container[screenGuiCenterClipped.Name] = screenGuiCenterClipped
	
	local holderReduction = -24
	local left = Instance.new("ScrollingFrame")
	left:SetAttribute("IsAHolder", true)
	left.Name = "Left"
	insetChanged:Connect(function()
		left.Position = UDim2.fromOffset(startInset, 0)
	end)
	left.Size = UDim2.new(1, holderReduction, 1, 0)
	left.BackgroundTransparency = 1
	left.Visible = true
	left.ZIndex = 1
	left.Active = false
	left.ClipsDescendants = true
	left.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	left.CanvasSize = UDim2.new(0, 0, 1, -1) -- This -1 prevents a dropdown scrolling appearance bug
	left.AutomaticCanvasSize = Enum.AutomaticSize.X
	left.ScrollingDirection = Enum.ScrollingDirection.X
	left.ScrollBarThickness = 0
	left.BorderSizePixel = 0
	left.Selectable = false
	left.ScrollingEnabled = false--true
	left.ElasticBehavior = Enum.ElasticBehavior.Never
	left.Parent = holders
	
	local UIListLayout = Instance.new("UIListLayout")
	insetChanged:Connect(function()
		UIListLayout.Padding = UDim.new(0, startInset)
	end)
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	UIListLayout.Parent = left
	
	local center = left:Clone()
	insetChanged:Connect(function()
		center.UIListLayout.Padding = UDim.new(0, startInset)
	end)
	center.ScrollingEnabled = false
	center.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	center.Name = "Center"
	center.Parent = holdersCenter
	
	local right = left:Clone()
	insetChanged:Connect(function()
		right.UIListLayout.Padding = UDim.new(0, startInset)
	end)
	right.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	right.Name = "Right"
	right.AnchorPoint = Vector2.new(1, 0)
	right.Position = UDim2.new(1, -12, 0, 0)
	right.Parent = holders

	-- This is important so that all elements update instantly
	insetChanged:Fire(guiInset)

	return container
end end function __DIST.k():typeof(__modImpl())local v=__DIST.cache.k if not v then v={c=__modImpl()}__DIST.cache.k=v end return v.c end end do local function __modImpl()--[[

	TopbarPlus was developed by ForeverHD and is possible thanks to HD Admin.

	By using TopbarPlus in your experience or application, you agree to either:
		1. Keep Attribute unchanged, or
		2. If an experience, to credit TopbarPlus in your description, or in a
		   devforum post linked from your experience's description.

	v3 has involved over 350 hours of work to develop, so please consider supporting
	its development by reporting any issues or feedback you have at its repository:
	https://github.com/1ForeverHD/TopbarPlus

	You can get in touch with me on Discord via the social link here:
	https://create.roblox.com/store/asset/92368439343389/TopbarPlus

	Many thanks! ~Ben, June 10th 2025
	
]]


return {}end function __DIST.l():typeof(__modImpl())local v=__DIST.cache.l if not v then v={c=__modImpl()}__DIST.cache.l=v end return v.c end end do local function __modImpl()
return function(icon)

	local menu = Instance.new("ScrollingFrame")
	menu.Name = "Menu"
	menu.BackgroundTransparency = 1
	menu.Visible = true
	menu.ZIndex = 1
	menu.Size = UDim2.fromScale(1, 1)
	menu.ClipsDescendants = true
	menu.TopImage = ""
	menu.BottomImage = ""
	menu.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
	menu.CanvasSize = UDim2.new(0, 0, 1, -1) -- This -1 prevents a dropdown scrolling appearance bug
	menu.ScrollingEnabled = true
	menu.ScrollingDirection = Enum.ScrollingDirection.X
	menu.ZIndex = 20
	menu.ScrollBarThickness = 3
	menu.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
	menu.ScrollBarImageTransparency = 0.8
	menu.BorderSizePixel = 0
	menu.Selectable = false
	
	local Icon = icon._iconRef
	local uiListLayoutSource
	do
		local override = Icon.topbarHoldersOverride
		local holder = override and (override.Left or override.Center or override.Right)
		uiListLayoutSource = holder and holder:FindFirstChildWhichIsA("UIListLayout")
		if not uiListLayoutSource then
			uiListLayoutSource = Icon.container.TopbarStandard:FindFirstChild("UIListLayout", true)
		end
	end
	local menuUIListLayout = uiListLayoutSource:Clone()
	menuUIListLayout.Name = "MenuUIListLayout"
	menuUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	menuUIListLayout.Parent = menu

	local menuGap = Instance.new("Frame")
	menuGap.Name = "MenuGap"
	menuGap.BackgroundTransparency = 1
	menuGap.Visible = false
	menuGap.AnchorPoint = Vector2.new(0, 0.5)
	menuGap.ZIndex = 5
	menuGap.Parent = menu
	
	local hasStartedMenu = false
	local Themes = __DIST.e()
	local function totalChildrenChanged()
		
		local menuJanitor = icon.menuJanitor
		local totalIcons = #icon.menuIcons
		if hasStartedMenu then
			if totalIcons <= 0 then
				menuJanitor:Cleanup()
				hasStartedMenu = false
			end
			return
		end
		hasStartedMenu = true
		
		-- Listen for changes
		menuJanitor:add(icon.toggled:Connect(function()
			if #icon.menuIcons > 0 then
				icon.updateSize:Fire()
			end
		end))
		
		-- Modify appearance of menu icon when joined
		local _, modificationUID = icon:modifyTheme({
			{"Menu", "Active", true},
		})
		task.defer(function()
			menuJanitor:add(function()
				icon:removeModification(modificationUID)
			end)
		end)
		
		-- For right-aligned icons, this ensures their menus
		-- close button appear instantly when selected (instead
		-- of partially hidden from view)
		local previousCanvasX = menu.AbsoluteCanvasSize.X
		local function rightAlignCanvas()
			if icon.alignment == "Right" then
				local newCanvasX = menu.AbsoluteCanvasSize.X
				local difference = previousCanvasX - newCanvasX
				previousCanvasX = newCanvasX
				menu.CanvasPosition = Vector2.new(menu.CanvasPosition.X - difference, 0)
			end
		end
		menuJanitor:add(icon.selected:Connect(rightAlignCanvas))
		menuJanitor:add(menu:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(rightAlignCanvas))
		
		-- Apply a close selected image if the user hasn't applied thier own
		local stateGroup = icon:getStateGroup()
		local imageDeselected = Themes.getThemeValue(stateGroup, "IconImage", "Image", "Deselected")
		local imageSelected = Themes.getThemeValue(stateGroup, "IconImage", "Image", "Selected")
		if imageDeselected == imageSelected then
			local fontLink = "rbxasset://fonts/families/FredokaOne.json"
			local fontFace = Font.new(fontLink, Enum.FontWeight.Light, Enum.FontStyle.Normal)
			icon:removeModificationWith("IconLabel", "Text", "Viewing")
			icon:removeModificationWith("IconLabel", "Image", "Viewing")
			icon:modifyTheme({
				{"IconLabel", "FontFace", fontFace, "Selected"},
				{"IconLabel", "Text", "X", "Selected"},
				{"IconLabel", "TextSize", 20, "Selected"},
				{"IconLabel", "TextStrokeTransparency", 0.8, "Selected"},
				{"IconImage", "Image", "", "Selected"},
			})
		end

		-- Change order of spot when alignment changes
		local menuGap = icon:getInstance("MenuGap")
		local function updateAlignent()
			local alignment = icon.alignment
			local spotIndex = -99999
			local gapIndex = -99998
			if alignment == "Right" then
				spotIndex = 99999
				gapIndex = 99998
			end
			icon:modifyTheme({"IconSpot", "LayoutOrder", spotIndex})
			menuGap.LayoutOrder = gapIndex
		end
		menuJanitor:add(icon.alignmentChanged:Connect(updateAlignent))
		updateAlignent()
		
		-- This updates the scrolling frame to only display a scroll
		-- length equal to the distance produced by its MaxIcons
		menu:GetAttributeChangedSignal("MenuCanvasWidth"):Connect(function()
			local canvasWidth = menu:GetAttribute("MenuCanvasWidth")
			local canvasY = menu.CanvasSize.Y
			menu.CanvasSize = UDim2.new(0, canvasWidth, canvasY.Scale, canvasY.Offset)
		end)
		menuJanitor:add(icon.updateMenu:Connect(function()
			local maxIcons = menu:GetAttribute("MaxIcons")
			if not maxIcons then
				return
			end
			local orderedInstances = {}
			for _, child in pairs(menu:GetChildren()) do
				local widgetUID = child:GetAttribute("WidgetUID")
				if widgetUID and child.Visible then
					table.insert(orderedInstances, {child, child.AbsolutePosition.X})
				end
			end
			table.sort(orderedInstances, function(groupA, groupB)
				return groupA[2] < groupB[2]
			end)
			local totalWidth = 0
			for i = 1, maxIcons do
				local group = orderedInstances[i]
				if not group then
					break
				end
				local child = group[1]
				local width = child.AbsoluteSize.X + menuUIListLayout.Padding.Offset
				totalWidth += width
			end
			menu:SetAttribute("MenuWidth", totalWidth)
		end))
		local function startMenuUpdate()
			task.delay(0.1, function()
				icon.startMenuUpdate:Fire()
			end)
		end
		menuJanitor:add(menu.ChildAdded:Connect(startMenuUpdate))
		menuJanitor:add(menu.ChildRemoved:Connect(startMenuUpdate))
		menuJanitor:add(menu:GetAttributeChangedSignal("MaxIcons"):Connect(startMenuUpdate))
		menuJanitor:add(menu:GetAttributeChangedSignal("MaxWidth"):Connect(startMenuUpdate))
		startMenuUpdate()
	end
	
	icon.menuChildAdded:Connect(totalChildrenChanged)
	icon.menuSet:Connect(function(arrayOfIcons)
		-- Reset any previous icons
		for i, otherIconUID in pairs(icon.menuIcons) do
			local otherIcon = Icon.getIconByUID(otherIconUID)
			otherIcon:destroy()
		end
		-- Apply new icons
		if type(arrayOfIcons) == "table" then
			for i, otherIcon in pairs(arrayOfIcons) do
				otherIcon:joinMenu(icon)
			end
		end
	end)
	
	return menu
end end function __DIST.m():typeof(__modImpl())local v=__DIST.cache.m if not v then v={c=__modImpl()}__DIST.cache.m=v end return v.c end end do local function __modImpl()-- I named this 'Widget' instead of 'Icon' to make a clear difference between the icon *object* and
-- the icon (aka Widget) instance.
-- This contains the core components of the icon such as the button, image, label and notice. It's
-- also responsible for handling the automatic resizing of the widget (based upon image visibility and text length)


return function(icon, Icon)

	local widget = Instance.new("Frame")
	widget:SetAttribute("WidgetUID", icon.UID)
	widget.Name = "Widget"
	widget.BackgroundTransparency = 1
	widget.Visible = true
	widget.ZIndex = 20
	widget.Active = false
	widget.ClipsDescendants = true

	local button = Instance.new("Frame")
	button.Name = "IconButton"
	button.Visible = true
	button.ZIndex = 2
	button.BorderSizePixel = 0
	button.Parent = widget
	button.ClipsDescendants = true
	button.Active = false -- This is essential for mobile scrollers to work when dragging
	icon.deselected:Connect(function()
		button.ClipsDescendants = true
		task.delay(0.2, function()
			if icon.isSelected then
				button.ClipsDescendants = false
			end
		end)
	end)

	-- Account for PreferredTransparency which can be set by every player
	local GuiService = game:GetService("GuiService")
	icon:setBehaviour("IconButton", "BackgroundTransparency", function(value)
		local preference = GuiService.PreferredTransparency
		local newValue = value * preference
		if value == 1 then
			return value
		end
		return newValue
	end)
	icon.janitor:add(GuiService:GetPropertyChangedSignal("PreferredTransparency"):Connect(function()
		icon:refreshAppearance(button, "BackgroundTransparency")
	end))

	local iconCorner = Instance.new("UICorner")
	iconCorner:SetAttribute("Collective", "IconCorners")
	iconCorner.Name = "UICorner"
	iconCorner.Parent = button

	local menu = __DIST.m()(icon)
	local menuUIListLayout = menu.MenuUIListLayout
	local menuGap = menu.MenuGap
	menu.Parent = button

	local iconSpot = Instance.new("Frame")
	iconSpot.Name = "IconSpot"
	iconSpot.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
	iconSpot.BackgroundTransparency = 0.9
	iconSpot.Visible = true
	iconSpot.AnchorPoint = Vector2.new(0, 0.5)
	iconSpot.ZIndex = 5
	iconSpot.Parent = menu

	local iconSpotCorner = iconCorner:Clone()
	iconSpotCorner.Parent = iconSpot

	local overlay = iconSpot:Clone()
	overlay.UICorner.Name = "OverlayUICorner"
	overlay.Name = "IconOverlay"
	overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	overlay.ZIndex = iconSpot.ZIndex + 1
	overlay.Size = UDim2.new(1, 0, 1, 0)
	overlay.Position = UDim2.new(0, 0, 0, 0)
	overlay.AnchorPoint = Vector2.new(0, 0)
	overlay.Visible = false
	overlay.Parent = iconSpot

	local clickRegion = Instance.new("TextButton")
	clickRegion:SetAttribute("CorrespondingIconUID", icon.UID)
	clickRegion.Name = "ClickRegion"
	clickRegion.BackgroundTransparency = 1
	clickRegion.Visible = true
	clickRegion.Text = ""
	clickRegion.ZIndex = 20
	clickRegion.Selectable = true
	clickRegion.SelectionGroup = true
	clickRegion.Parent = iconSpot
	
	local Gamepad = __DIST.g()
	Gamepad.registerButton(clickRegion)

	local clickRegionCorner = iconCorner:Clone()
	clickRegionCorner.Parent = clickRegion

	local contents = Instance.new("Frame")
	contents.Name = "Contents"
	contents.BackgroundTransparency = 1
	contents.Size = UDim2.fromScale(1, 1)
	contents.Parent = iconSpot

	local contentsList = Instance.new("UIListLayout")
	contentsList.Name = "ContentsList"
	contentsList.FillDirection = Enum.FillDirection.Horizontal
	contentsList.VerticalAlignment = Enum.VerticalAlignment.Center
	contentsList.SortOrder = Enum.SortOrder.LayoutOrder
	contentsList.VerticalFlex = Enum.UIFlexAlignment.SpaceEvenly
	contentsList.Padding = UDim.new(0, 3)
	contentsList.Parent = contents

	local paddingLeft = Instance.new("Frame")
	paddingLeft.Name = "PaddingLeft"
	paddingLeft.LayoutOrder = 1
	paddingLeft.ZIndex = 5
	paddingLeft.BorderColor3 = Color3.fromRGB(0, 0, 0)
	paddingLeft.BackgroundTransparency = 1
	paddingLeft.BorderSizePixel = 0
	paddingLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	paddingLeft.Parent = contents

	local paddingCenter = Instance.new("Frame")
	paddingCenter.Name = "PaddingCenter"
	paddingCenter.LayoutOrder = 3
	paddingCenter.ZIndex = 5
	paddingCenter.Size = UDim2.new(0, 0, 1, 0)
	paddingCenter.BorderColor3 = Color3.fromRGB(0, 0, 0)
	paddingCenter.BackgroundTransparency = 1
	paddingCenter.BorderSizePixel = 0
	paddingCenter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	paddingCenter.Parent = contents

	local paddingRight = Instance.new("Frame")
	paddingRight.Name = "PaddingRight"
	paddingRight.LayoutOrder = 5
	paddingRight.ZIndex = 5
	paddingRight.BorderColor3 = Color3.fromRGB(0, 0, 0)
	paddingRight.BackgroundTransparency = 1
	paddingRight.BorderSizePixel = 0
	paddingRight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	paddingRight.Parent = contents

	local iconLabelContainer = Instance.new("Frame")
	iconLabelContainer.Name = "IconLabelContainer"
	iconLabelContainer.LayoutOrder = 4
	iconLabelContainer.ZIndex = 3
	iconLabelContainer.AnchorPoint = Vector2.new(0, 0.5)
	iconLabelContainer.Size = UDim2.new(0, 0, 0.5, 0)
	iconLabelContainer.BackgroundTransparency = 1
	iconLabelContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
	iconLabelContainer.Parent = contents

	local iconLabel = Instance.new("TextLabel")
	local viewportX = workspace.CurrentCamera.ViewportSize.X+200
	iconLabel.Name = "IconLabel"
	iconLabel.LayoutOrder = 4
	iconLabel.ZIndex = 15
	iconLabel.AnchorPoint = Vector2.new(0, 0)
	iconLabel.Size = UDim2.new(0, viewportX, 1, 0)
	iconLabel.ClipsDescendants = false
	iconLabel.BackgroundTransparency = 1
	iconLabel.Position = UDim2.fromScale(0, 0)
	iconLabel.RichText = true
	iconLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	iconLabel.TextXAlignment = Enum.TextXAlignment.Left
	iconLabel.Text = ""
	iconLabel.TextWrapped = true
	iconLabel.TextWrap = true
	iconLabel.TextScaled = false
	iconLabel.Active = false
	iconLabel.AutoLocalize = true
	iconLabel.Parent = iconLabelContainer

	local iconImage = Instance.new("ImageLabel")
	iconImage.Name = "IconImage"
	iconImage.LayoutOrder = 2
	iconImage.ZIndex = 15
	iconImage.AnchorPoint = Vector2.new(0, 0.5)
	iconImage.Size = UDim2.new(0, 0, 0.5, 0)
	iconImage.BackgroundTransparency = 1
	iconImage.Position = UDim2.new(0, 11, 0.5, 0)
	iconImage.ScaleType = Enum.ScaleType.Stretch
	iconImage.Active = false
	iconImage.Parent = contents

	local iconImageCorner = iconCorner:Clone()
	iconImageCorner:SetAttribute("Collective", nil)
	iconImageCorner.CornerRadius = UDim.new(0, 0)
	iconImageCorner.Name = "IconImageCorner"
	iconImageCorner.Parent = iconImage

	local TweenService = game:GetService("TweenService")
	local resizingCount = 0
	local function handleLabelAndImageChangesUnstaggered(forceUpdateString)

		-- We defer changes by a frame to eliminate all but 1 requests which
		-- could otherwise stack up to 20+ requests in a single frame
		-- We then repeat again once to account for any final changes
		-- Deferring is also essential because properties are set immediately
		-- afterwards (therefore calculations will use the correct values)
		task.defer(function()
			local indicator = icon.indicator
			local usingIndicator = indicator and indicator.Visible
			local usingText = usingIndicator or iconLabel.Text ~= ""
			local usingImage = iconImage.Image ~= "" and iconImage.Image ~= nil
			local _alignment = Enum.HorizontalAlignment.Center
			local NORMAL_BUTTON_SIZE = UDim2.fromScale(1, 1)
			local buttonSize = NORMAL_BUTTON_SIZE
			if usingImage and not usingText then
				iconLabelContainer.Visible = false
				iconImage.Visible = true
				paddingLeft.Visible = false
				paddingCenter.Visible = false
				paddingRight.Visible = false
			elseif not usingImage and usingText then
				iconLabelContainer.Visible = true
				iconImage.Visible = false
				paddingLeft.Visible = true
				paddingCenter.Visible = false
				paddingRight.Visible = true
			elseif usingImage and usingText then
				iconLabelContainer.Visible = true
				iconImage.Visible = true
				paddingLeft.Visible = true
				paddingCenter.Visible = not usingIndicator
				paddingRight.Visible = not usingIndicator
				_alignment = Enum.HorizontalAlignment.Left
			end
			button.Size = buttonSize

			local function getItemWidth(item)
				local targetWidth = item:GetAttribute("TargetWidth") or item.AbsoluteSize.X
				return targetWidth
			end
			local contentsPadding = contentsList.Padding.Offset
			local initialWidgetWidth = contentsPadding --0
			local textWidth = iconLabel.TextBounds.X
			iconLabelContainer.Size = UDim2.new(0, textWidth, iconLabel.Size.Y.Scale, 0)
			for _, child in pairs(contents:GetChildren()) do
				if child:IsA("GuiObject") and child.Visible == true then
					local itemWidth = getItemWidth(child)
					initialWidgetWidth += itemWidth + contentsPadding
				end
			end
			local widgetMinimumWidth = widget:GetAttribute("MinimumWidth") or 0
			local widgetMinimumHeight = widget:GetAttribute("MinimumHeight") or 0
			local widgetBorderSize = widget:GetAttribute("BorderSize") or 0
			local widgetWidth = math.clamp(initialWidgetWidth, widgetMinimumWidth, viewportX)
			local menuIcons = icon.menuIcons
			local additionalWidth = 0
			local hasMenu = #menuIcons > 0
			local showMenu = hasMenu and icon.isSelected
			if showMenu then
				for _, frame in pairs(menu:GetChildren()) do
					if frame ~= iconSpot and frame:IsA("GuiObject") and frame.Visible then
						additionalWidth += getItemWidth(frame) + menuUIListLayout.Padding.Offset
					end
				end
				if not iconSpot.Visible then
					widgetWidth -= (getItemWidth(iconSpot) + menuUIListLayout.Padding.Offset*2 + widgetBorderSize)
				end
				additionalWidth -= (widgetBorderSize*0.5)
				widgetWidth += additionalWidth - (widgetBorderSize*0.75)
			end
			menuGap.Visible = showMenu and iconSpot.Visible
			local desiredWidth = widget:GetAttribute("DesiredWidth")
			if desiredWidth and widgetWidth < desiredWidth then
				widgetWidth = desiredWidth
			end

			icon.updateMenu:Fire()
			local preWidth = math.max(widgetWidth-additionalWidth, widgetMinimumWidth)
			local spotWidth = preWidth-(widgetBorderSize*2)
			local menuWidth = menu:GetAttribute("MenuWidth")
			local totalMenuWidth = menuWidth and menuWidth + spotWidth + menuUIListLayout.Padding.Offset + 10
			if totalMenuWidth then
				local maxWidth = menu:GetAttribute("MaxWidth")
				if maxWidth then
					totalMenuWidth = math.max(maxWidth, widgetMinimumWidth)
				end
				menu:SetAttribute("MenuCanvasWidth", widgetWidth)
				if totalMenuWidth < widgetWidth then
					widgetWidth = totalMenuWidth
				end
			end

			local style = Enum.EasingStyle.Quint
			local direction = Enum.EasingDirection.Out
			local spotWidthMax = math.max(spotWidth, getItemWidth(iconSpot), iconSpot.AbsoluteSize.X)
			local widgetWidthMax = math.max(widgetWidth, getItemWidth(widget), widget.AbsoluteSize.X)
			local SPEED = 750
			local spotTweenInfo = TweenInfo.new(spotWidthMax/SPEED, style, direction)
			local widgetTweenInfo = TweenInfo.new(widgetWidthMax/SPEED, style, direction)
			TweenService:Create(iconSpot, spotTweenInfo, {
				Position = UDim2.new(0, widgetBorderSize, 0.5, 0),
				Size = UDim2.new(0, spotWidth, 1, -widgetBorderSize*2),
			}):Play()
			TweenService:Create(clickRegion, spotTweenInfo, {
				Size = UDim2.new(0, spotWidth, 1, 0),
			}):Play()
			local newWidgetSize = UDim2.fromOffset(widgetWidth, widgetMinimumHeight)
			local updateInstantly = widget.Size.Y.Offset ~= widgetMinimumHeight
			if updateInstantly then
				widget.Size = newWidgetSize
			end
			widget:SetAttribute("TargetWidth", newWidgetSize.X.Offset)
			local movingTween = TweenService:Create(widget, widgetTweenInfo, {
				Size = newWidgetSize,
			})
			movingTween:Play()
			resizingCount += 1
			for i = 1, widgetTweenInfo.Time * 100 do
				task.delay(i/100, function()
					Icon.iconChanged:Fire(icon)
				end)
			end
			task.delay(widgetTweenInfo.Time-0.2, function()
				resizingCount -= 1
				task.defer(function()
					if resizingCount == 0 then
						icon.resizingComplete:Fire()
					end
				end)
			end)
			icon:updateParent()
		end)
	end
	local Utility = __DIST.c()
	local handleLabelAndImageChanges = Utility.createStagger(0.01, handleLabelAndImageChangesUnstaggered)
	local firstTimeSettingFontFace = true
	icon:setBehaviour("IconLabel", "Text", handleLabelAndImageChanges)
	icon:setBehaviour("IconLabel", "FontFace", function(value)
		local previousFontFace = iconLabel.FontFace
		if previousFontFace == value then
			return
		end
		task.spawn(function()
			--[[
			local fontLink = value.Family
			if string.match(fontLink, "rbxassetid://") then
				local ContentProvider = game:GetService("ContentProvider")
				local assets = {fontLink}
				ContentProvider:PreloadAsync(assets)
			end--]]

			-- Afaik there's no way to determine when a Font Family has
			-- loaded (even with ContentProvider), so we just have to try
			-- a few times and hope it loads within the refresh period
			handleLabelAndImageChanges()
			if firstTimeSettingFontFace then
				firstTimeSettingFontFace = false
				for i = 1, 10 do
					task.wait(1)
					handleLabelAndImageChanges()
				end
			end
		end)
	end)
	local function updateBorderSize()
		task.defer(function()
			local borderOffset = widget:GetAttribute("BorderSize") or 0
			local alignment = icon.alignment
			local alignmentOffset = (iconSpot.Visible == false and 0) or (alignment == "Right" and -borderOffset) or borderOffset
			menu.Position = UDim2.new(0, alignmentOffset, 0, 0)
			menuGap.Size = UDim2.fromOffset(borderOffset, 0)
			menuUIListLayout.Padding = UDim.new(0, 0)
			handleLabelAndImageChanges()
		end)
	end
	icon:setBehaviour("Widget", "BorderSize", updateBorderSize)
	icon:setBehaviour("IconSpot", "Visible", updateBorderSize)
	icon.startMenuUpdate:Connect(handleLabelAndImageChanges)
	icon.updateSize:Connect(handleLabelAndImageChanges)
	icon:setBehaviour("ContentsList", "HorizontalAlignment", handleLabelAndImageChanges)
	icon:setBehaviour("Widget", "Visible", handleLabelAndImageChanges)
	icon:setBehaviour("Widget", "DesiredWidth", handleLabelAndImageChanges)
	icon:setBehaviour("Widget", "MinimumWidth", handleLabelAndImageChanges)
	icon:setBehaviour("Widget", "MinimumHeight", handleLabelAndImageChanges)
	icon:setBehaviour("Indicator", "Visible", handleLabelAndImageChanges)
	icon:setBehaviour("IconImageRatio", "AspectRatio", handleLabelAndImageChanges)
	icon:setBehaviour("IconImage", "Image", function(value)
		local textureId = (tonumber(value) and "http://www.roblox.com/asset/?id="..value) or value or ""
		if iconImage.Image ~= textureId then
			handleLabelAndImageChanges()
		end
		return textureId
	end)
	icon.alignmentChanged:Connect(function(newAlignment)
		if newAlignment == "Center" then
			newAlignment = "Left"
		end
		menuUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment[newAlignment]
		updateBorderSize()
	end)

	-- Localization support (refresh icon size whenever player changes language changes in-game)
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local lastLocaleId = localPlayer.LocaleId
	icon.janitor:add(localPlayer:GetPropertyChangedSignal("LocaleId"):Connect(function()
		task.delay(0.2, function()
			local newLocaleId = localPlayer.LocaleId
			if newLocaleId ~= lastLocaleId then
				lastLocaleId = newLocaleId
				icon:refresh()
				task.wait(0.5)
				icon:refresh()
			end
		end)
	end))
	
	local iconImageScale = Instance.new("NumberValue")
	iconImageScale.Name = "IconImageScale"
	iconImageScale.Parent = iconImage
	iconImageScale:GetPropertyChangedSignal("Value"):Connect(function()
		iconImage.Size = UDim2.new(iconImageScale.Value, 0, iconImageScale.Value, 0)
	end)

	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	UIAspectRatioConstraint.Name = "IconImageRatio"
	UIAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
	UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
	UIAspectRatioConstraint.Parent = iconImage

	local iconGradient = Instance.new("UIGradient")
	iconGradient.Name = "IconGradient"
	iconGradient.Enabled = true
	iconGradient.Parent = button

	local iconSpotGradient = Instance.new("UIGradient")
	iconSpotGradient.Name = "IconSpotGradient"
	iconSpotGradient.Enabled = true
	iconSpotGradient.Parent = iconSpot

	return widget
end end function __DIST.n():typeof(__modImpl())local v=__DIST.cache.n if not v then v={c=__modImpl()}__DIST.cache.n=v end return v.c end end do local function __modImpl()
return function(icon, Icon)

	local notice = Instance.new("Frame")
	notice.Name = "Notice"
	notice.ZIndex = 25
	notice.AutomaticSize = Enum.AutomaticSize.X
	notice.BorderColor3 = Color3.fromRGB(0, 0, 0)
	notice.BorderSizePixel = 0
	notice.BackgroundTransparency = 0.1
	notice.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	notice.Visible = false
	notice.Parent = icon.widget

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = notice

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Parent = notice

	local noticeLabel = Instance.new("TextLabel")
	noticeLabel.Name = "NoticeLabel"
	noticeLabel.ZIndex = 26
	noticeLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	noticeLabel.AutomaticSize = Enum.AutomaticSize.X
	noticeLabel.Size = UDim2.new(1, 0, 1, 0)
	noticeLabel.BackgroundTransparency = 1
	noticeLabel.Position = UDim2.new(0.5, 0, 0.515, 0)
	noticeLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	noticeLabel.FontSize = Enum.FontSize.Size14
	noticeLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	noticeLabel.Text = "1"
	noticeLabel.TextWrapped = true
	noticeLabel.TextWrap = true
	noticeLabel.Font = Enum.Font.Arial
	noticeLabel.Parent = notice
	
	local Janitor = __DIST.b()
	local Signal = __DIST.a()
	local Utility = __DIST.c()
	icon.noticeChanged:Connect(function(totalNotices)

		-- Notice amount
		if not totalNotices then
			return
		end
		local exceeded99 = totalNotices > 99
		local noticeDisplay = (exceeded99 and "99+") or totalNotices
		noticeLabel.Text = noticeDisplay
		if exceeded99 then
			noticeLabel.TextSize = 11
		end

		-- Should enable
		local enabled = true
		if totalNotices < 1 then
			enabled = false
		end
		local parentIcon = Icon.getIconByUID(icon.parentIconUID)
		local dropdownOrMenuActive = #icon.dropdownIcons > 0 or #icon.menuIcons > 0
		if icon.isSelected and dropdownOrMenuActive then
			enabled = false
		elseif parentIcon and not parentIcon.isSelected then
			enabled = false
		end
		Utility.setVisible(notice, enabled, "NoticeHandler")

	end)
	icon.noticeStarted:Connect(function(customClearSignal, noticeId)
	
		if not customClearSignal then
			customClearSignal = icon.deselected
		end
		local parentIcon = Icon.getIconByUID(icon.parentIconUID)
		if parentIcon then
			parentIcon:notify(customClearSignal)
		end
		
		local noticeJanitor = icon.janitor:add(Janitor.new())
		local noticeComplete = noticeJanitor:add(Signal.new())
		noticeJanitor:add(icon.endNotices:Connect(function()
			noticeComplete:Fire()
		end))
		noticeJanitor:add(customClearSignal:Connect(function()
			noticeComplete:Fire()
		end))
		noticeId = noticeId or Utility.generateUID()
		icon.notices[noticeId] = {
			completeSignal = noticeComplete,
			clearNoticeEvent = customClearSignal,
		}
		local function updateNotice()
			icon.noticeChanged:Fire(icon.totalNotices)
		end
		icon.notified:Fire(noticeId)
		icon.totalNotices += 1
		updateNotice()
		noticeComplete:Once(function()
			noticeJanitor:destroy()
			icon.totalNotices -= 1
			icon.notices[noticeId] = nil
			updateNotice()
		end)
	end)
	
	-- Establish the notice
	notice:SetAttribute("ClipToJoinedParent", true)
	icon:clipOutside(notice)
	
	return notice
end end function __DIST.o():typeof(__modImpl())local v=__DIST.cache.o if not v then v={c=__modImpl()}__DIST.cache.o=v end return v.c end end do local function __modImpl()
local CAPTION_COLOR = Color3.fromRGB(39, 41, 48)
local TEXT_SIZE = 15
return function(icon)

	-- Credit to lolmansReturn and Canary Software for
	-- retrieving these values
	local clickRegion = icon:getInstance("ClickRegion")
	local caption = Instance.new("CanvasGroup")
	caption.Name = "Caption"
	caption.AnchorPoint = Vector2.new(0.5, 0)
	caption.BackgroundTransparency = 1
	caption.BorderSizePixel = 0
	caption.GroupTransparency = 1
	caption.Position = UDim2.fromOffset(0, 0)
	caption.Visible = true
	caption.ZIndex = 30
	caption.Parent = clickRegion

	local box = Instance.new("Frame")
	box.Name = "Box"
	box.AutomaticSize = Enum.AutomaticSize.XY
	box.BackgroundColor3 = CAPTION_COLOR
	box.Position = UDim2.fromOffset(4, 7)
	box.ZIndex = 12
	box.Parent = caption

	local header = Instance.new("TextLabel")
	header.Name = "Header"
	header.FontFace = Font.new(
		"rbxasset://fonts/families/BuilderSans.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	header.Text = "Caption"
	header.TextColor3 = Color3.fromRGB(255, 255, 255)
	header.TextSize = TEXT_SIZE
	header.TextTruncate = Enum.TextTruncate.None
	header.TextWrapped = false
	header.TextXAlignment = Enum.TextXAlignment.Left
	header.AutomaticSize = Enum.AutomaticSize.X
	header.BackgroundTransparency = 1
	header.LayoutOrder = 1
	header.Size = UDim2.fromOffset(0, 16)
	header.ZIndex = 18
	header.Parent = box

	local layout = Instance.new("UIListLayout")
	layout.Name = "Layout"
	layout.Padding = UDim.new(0, 8)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Parent = box

	local UICorner = Instance.new("UICorner")
	UICorner.Name = "CaptionCorner"
	UICorner.Parent = box

	local padding = Instance.new("UIPadding")
	padding.Name = "Padding"
	padding.PaddingBottom = UDim.new(0, 12)
	padding.PaddingLeft = UDim.new(0, 12)
	padding.PaddingRight = UDim.new(0, 12)
	padding.PaddingTop = UDim.new(0, 12)
	padding.Parent = box

	local hotkeys = Instance.new("Frame")
	hotkeys.Name = "Hotkeys"
	hotkeys.AutomaticSize = Enum.AutomaticSize.Y
	hotkeys.BackgroundTransparency = 1
	hotkeys.LayoutOrder = 3
	hotkeys.Size = UDim2.fromScale(1, 0)
	hotkeys.Visible = false
	hotkeys.Parent = box

	local layout1 = Instance.new("UIListLayout")
	layout1.Name = "Layout1"
	layout1.Padding = UDim.new(0, 6)
	layout1.FillDirection = Enum.FillDirection.Vertical
	layout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	layout1.HorizontalFlex = Enum.UIFlexAlignment.None
	layout1.ItemLineAlignment = Enum.ItemLineAlignment.Automatic
	layout1.VerticalFlex = Enum.UIFlexAlignment.None
	layout1.SortOrder = Enum.SortOrder.LayoutOrder
	layout1.Parent = hotkeys

	local keyTag1 = Instance.new("ImageLabel")
	keyTag1.Name = "Key1"
	keyTag1.Image = "rbxasset://textures/ui/Controls/key_single.png"
	keyTag1.ImageTransparency = 0.7
	keyTag1.ScaleType = Enum.ScaleType.Slice
	keyTag1.SliceCenter = Rect.new(5, 5, 23, 24)
	keyTag1.AutomaticSize = Enum.AutomaticSize.X
	keyTag1.BackgroundTransparency = 1
	keyTag1.LayoutOrder = 1
	keyTag1.Size = UDim2.fromOffset(0, 30)
	keyTag1.ZIndex = 15
	keyTag1.Parent = hotkeys

	local inset = Instance.new("UIPadding")
	inset.Name = "Inset"
	inset.PaddingLeft = UDim.new(0, 8)
	inset.PaddingRight = UDim.new(0, 8)
	inset.Parent = keyTag1

	local labelContent = Instance.new("TextLabel")
	labelContent.AutoLocalize = false
	labelContent.Name = "LabelContent"
	labelContent.FontFace = Font.new(
		"rbxasset://fonts/families/GothamSSm.json",
		Enum.FontWeight.Medium,
		Enum.FontStyle.Normal
	)
	labelContent.Text = ""
	labelContent.TextColor3 = Color3.fromRGB(189, 190, 190)
	labelContent.TextSize = TEXT_SIZE
	labelContent.AutomaticSize = Enum.AutomaticSize.X
	labelContent.BackgroundTransparency = 1
	labelContent.Position = UDim2.fromOffset(0, -1)
	labelContent.Size = UDim2.fromScale(1, 1)
	labelContent.ZIndex = 16
	labelContent.Parent = keyTag1
	
	local caret = Instance.new("ImageLabel")
	caret.Name = "Caret"
	caret.Image = "rbxassetid://101906294438076"
	caret.ImageColor3 = CAPTION_COLOR
	caret.AnchorPoint = Vector2.new(0, 0.5)
	caret.BackgroundTransparency = 1
	caret.Position = UDim2.new(0, 0, 0, 4)
	caret.Size = UDim2.fromOffset(16, 8)
	caret.ZIndex = 12
	caret.Parent = caption

	local dropShadow = Instance.new("ImageLabel")
	dropShadow.Visible = true
	dropShadow.Name = "DropShadow"
	dropShadow.Image = "rbxassetid://124920646932671"
	dropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	dropShadow.ImageTransparency = 0.45
	dropShadow.ScaleType = Enum.ScaleType.Slice
	dropShadow.SliceCenter = Rect.new(12, 12, 13, 13)
	dropShadow.BackgroundTransparency = 1
	dropShadow.Position = UDim2.fromOffset(0, 5)
	dropShadow.Size = UDim2.new(1, 0, 0, 48)
	dropShadow.Parent = caption
	box:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		dropShadow.Size = UDim2.new(1, 0, 0, box.AbsoluteSize.Y + 8)
	end)
	
	-- It's important we match the sizes as this is not
	-- handles within clipOutside (as it assumes the sizes
	-- are already the same)
	local captionJanitor = icon.captionJanitor
	local _, captionClone = icon:clipOutside(caption)
	captionClone.AutomaticSize = Enum.AutomaticSize.None
	local function matchSize()
		local absolute = caption.AbsoluteSize
		captionClone.Size = UDim2.fromOffset(absolute.X, absolute.Y)
	end
	captionJanitor:add(caption:GetPropertyChangedSignal("AbsoluteSize"):Connect(matchSize))
	matchSize()
	
	
	
	-- This handles the appearing/disappearing/positioning of the caption
	local isCompletelyEnabled = false
	local captionHeader = caption.Box.Header
	local UserInputService = game:GetService("UserInputService")
	local function updateHotkey(keyCodeEnum)
		local hasKeyboard = UserInputService.KeyboardEnabled
		local text = caption:GetAttribute("CaptionText") or ""
		local hideHeader = text == "_hotkey_"
		if not hasKeyboard and hideHeader then
			icon:setCaption()
			return
		end
		captionHeader.Text = text
		captionHeader.Visible = not hideHeader
		if keyCodeEnum then
			labelContent.Text = keyCodeEnum.Name
			hotkeys.Visible = true
		end
		if not hasKeyboard then
			hotkeys.Visible = false
		end
	end
	caption:GetAttributeChangedSignal("CaptionText"):Connect(updateHotkey)

	local EASING_STYLE = Enum.EasingStyle.Quad
	local TWEEN_SPEED = 0.2
	local TWEEN_INFO_IN = TweenInfo.new(TWEEN_SPEED, EASING_STYLE, Enum.EasingDirection.In)
	local TWEEN_INFO_OUT = TweenInfo.new(TWEEN_SPEED, EASING_STYLE, Enum.EasingDirection.Out)
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local function getCaptionPosition(customEnabled)
		local enabled = if customEnabled ~= nil then customEnabled else isCompletelyEnabled
		local yOut = 2
		local yIn = yOut + 8
		local yOffset = if enabled then yIn else yOut
		return UDim2.new(0.5, 0, 1, yOffset)
	end
	local function updatePosition(forcedEnabled)
		
		-- Ignore changes if not enabled to reduce redundant calls
		if not isCompletelyEnabled then
			return
		end
		
		-- Currently the one thing which isn't accounted for are the bounds of the screen
		-- This would be an issue if someone sets a long caption text for the left or
		-- right most icon
		local enabled = if forcedEnabled ~= nil then forcedEnabled else isCompletelyEnabled
		local startPosition = getCaptionPosition(not enabled)
		local endPosition = getCaptionPosition(enabled)
		
		-- It's essential we reset the carets position to prevent the x sizing bounds
		-- of the caption from infinitely scaling up
		if enabled then
			local caretY = caret.Position.Y.Offset
			caret.Position = UDim2.fromOffset(0, caretY)
			caption.AutomaticSize = Enum.AutomaticSize.XY
			caption.Size = UDim2.fromOffset(32, 53)
		else
			local absolute = caption.AbsoluteSize
			caption.AutomaticSize = Enum.AutomaticSize.Y
			caption.Size = UDim2.fromOffset(absolute.X, absolute.Y)
		end
		
		-- We initially default to the opposite state
		local previousCaretX
		local function updateCaret()
			local caretX = clickRegion.AbsolutePosition.X - caption.AbsolutePosition.X + clickRegion.AbsoluteSize.X/2 - caret.AbsoluteSize.X/2
			local caretY = caret.Position.Y.Offset
			local newCaretPosition = UDim2.fromOffset(caretX, caretY)
			if previousCaretX ~= caretX then
				-- Again, it's essential we reset the caret if
				-- a difference in X position is detected otherwise
				-- a slight quirk with AutomaticCanvas can cause
				-- the caption to infinitely scale
				previousCaretX = caretX
				caret.Position = UDim2.fromOffset(0, caretY)
				task.wait()
			end
			caret.Position = newCaretPosition
		end
		captionClone.Position = startPosition
		updateCaret()
		
		-- Now we tween into the new state
		local tweenInfo = (enabled and TWEEN_INFO_IN) or TWEEN_INFO_OUT
		local tween = TweenService:Create(captionClone, tweenInfo, {Position = endPosition})
		local updateCaretConnection = RunService.Heartbeat:Connect(updateCaret)
		tween:Play()
		tween.Completed:Once(function()
			updateCaretConnection:Disconnect()
		end)
		
	end
	captionJanitor:add(clickRegion:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		updatePosition()
	end))
	updatePosition(false)
	
	captionJanitor:add(icon.toggleKeyAdded:Connect(updateHotkey))
	for keyCodeEnum, _ in pairs(icon.bindedToggleKeys) do
		updateHotkey(keyCodeEnum)
		break
	end
	captionJanitor:add(icon.fakeToggleKeyChanged:Connect(updateHotkey))
	local fakeToggleKey = icon.fakeToggleKey
	if fakeToggleKey then
		updateHotkey(fakeToggleKey)
	end

	local function setCaptionEnabled(enabled)
		if isCompletelyEnabled == enabled then
			return
		end
		local joinedFrame = icon.joinedFrame
		if joinedFrame and string.match(joinedFrame.Name, "Dropdown") then
			enabled = false
		end
		isCompletelyEnabled = enabled
		local newTransparency = (enabled and 0) or 1
		local tweenInfo = (enabled and TWEEN_INFO_IN) or TWEEN_INFO_OUT
		local tweenTransparency = TweenService:Create(caption, tweenInfo, {
			GroupTransparency = newTransparency
		})
		tweenTransparency:Play()
		if enabled then
			captionClone:SetAttribute("ForceUpdate", true)
		end
		updatePosition()
		updateHotkey()
	end
	
	local WAIT_DURATION = 0.5
	local RECOVER_PERIOD = 0.3
	local Icon = icon._iconRef
	captionJanitor:add(icon.stateChanged:Connect(function(stateName)
		if stateName == "Viewing" then
			local lastClock = Icon.captionLastClosedClock
			local clockDifference = (lastClock and os.clock() - lastClock) or 999
			local waitDuration = (clockDifference < RECOVER_PERIOD and 0) or WAIT_DURATION
			task.delay(waitDuration, function()
				if icon.activeState == "Viewing" then
					setCaptionEnabled(true)
				end
			end)
		else
			Icon.captionLastClosedClock = os.clock()
			setCaptionEnabled(false)
		end
	end))
	
	return caption
end end function __DIST.p():typeof(__modImpl())local v=__DIST.cache.p if not v then v={c=__modImpl()}__DIST.cache.p=v end return v.c end end do local function __modImpl()
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Themes = __DIST.e()
local PADDING = 0 -- used to be 8
return function(icon)
	
	local dropdown = Instance.new("Frame") -- Instance.new("CanvasGroup")
	dropdown.Name = "Dropdown"
	dropdown.AutomaticSize = Enum.AutomaticSize.X
	dropdown.BackgroundTransparency = 1
	dropdown.BorderSizePixel = 0
	dropdown.AnchorPoint = Vector2.new(0.5, 0)
	dropdown.Position = UDim2.new(0.5, 0, 1, 10)
	dropdown.ZIndex = -2
	dropdown.ClipsDescendants = true
	dropdown.Parent = icon.widget

	-- Account for PreferredTransparency which can be set by every player
	local GuiService = game:GetService("GuiService")
	icon:setBehaviour("Dropdown", "BackgroundTransparency", function(value)
		local preference = GuiService.PreferredTransparency
		local newValue = value * preference
		if value == 1 then
			return value
		end
		return newValue
	end)
	icon.janitor:add(GuiService:GetPropertyChangedSignal("PreferredTransparency"):Connect(function()
		icon:refreshAppearance(dropdown, "BackgroundTransparency")
	end))

	local UICorner = Instance.new("UICorner")
	UICorner.Name = "DropdownCorner"
	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = dropdown

	local dropdownScroller = Instance.new("ScrollingFrame")
	dropdownScroller.Name = "DropdownScroller"
	dropdownScroller.AutomaticSize = Enum.AutomaticSize.X
	dropdownScroller.BackgroundTransparency = 1
	dropdownScroller.BorderSizePixel = 0
	dropdownScroller.AnchorPoint = Vector2.new(0, 0)
	dropdownScroller.Position = UDim2.new(0, 0, 0, 0)
	dropdownScroller.ZIndex = -1
	dropdownScroller.ClipsDescendants = true
	dropdownScroller.Visible = true
	dropdownScroller.VerticalScrollBarInset = Enum.ScrollBarInset.None --ScrollBar
	dropdownScroller.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
	dropdownScroller.Active = false
	dropdownScroller.ScrollingEnabled = true
	dropdownScroller.AutomaticCanvasSize = Enum.AutomaticSize.Y
	dropdownScroller.ScrollBarThickness = 5
	dropdownScroller.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
	dropdownScroller.ScrollBarImageTransparency = 0.8
	dropdownScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
	dropdownScroller.Selectable = false
	dropdownScroller.Active = true
	dropdownScroller.Parent = dropdown

	local TweenDuration = Instance.new("NumberValue") -- this helps to change the speed to open / close in modifyTheme()
	TweenDuration.Name = "DropdownSpeed"
	TweenDuration.Value = 0.07
	TweenDuration.Parent = dropdown

	local dropdownPadding = Instance.new("UIPadding")
	dropdownPadding.Name = "DropdownPadding"
	dropdownPadding.PaddingTop = UDim.new(0, PADDING)
	dropdownPadding.PaddingBottom = UDim.new(0, PADDING)
	dropdownPadding.Parent = dropdownScroller

	local dropdownList = Instance.new("UIListLayout")
	dropdownList.Name = "DropdownList"
	dropdownList.FillDirection = Enum.FillDirection.Vertical
	dropdownList.SortOrder = Enum.SortOrder.LayoutOrder
	dropdownList.HorizontalAlignment = Enum.HorizontalAlignment.Center
	dropdownList.HorizontalFlex = Enum.UIFlexAlignment.SpaceEvenly
	dropdownList.Parent = dropdownScroller

	local dropdownJanitor = icon.dropdownJanitor
	local Icon = icon._iconRef
	icon.dropdownChildAdded:Connect(function(childIcon)
		local _, modificationUID = childIcon:modifyTheme({
			{"Widget", "BorderSize", 0},
			{"IconCorners", "CornerRadius", UDim.new(0, 10)},
			{"Widget", "MinimumWidth", 190},
			{"Widget", "MinimumHeight", 58},
			{"IconLabel", "TextSize", 20},
			{"IconOverlay", "Size", UDim2.new(1, 0, 1, 0)},
			{"PaddingLeft", "Size", UDim2.fromOffset(25, 0)},
			{"Notice", "Position", UDim2.new(1, -24, 0, 5)},
			{"ContentsList", "HorizontalAlignment", Enum.HorizontalAlignment.Left},
			{"Selection", "Size", UDim2.new(1, -PADDING, 1, -PADDING)},
			{"Selection", "Position", UDim2.new(0, PADDING/2, 0, PADDING/2)},
		})
		task.defer(function()
			childIcon.joinJanitor:add(function()
				childIcon:removeModification(modificationUID)
			end)
		end)
	end)
	icon.dropdownSet:Connect(function(arrayOfIcons)
		for i, otherIconUID in pairs(icon.dropdownIcons) do
			local otherIcon = Icon.getIconByUID(otherIconUID)
			otherIcon:destroy()
		end
		if type(arrayOfIcons) == "table" then
			for i, otherIcon in pairs(arrayOfIcons) do
				otherIcon:joinDropdown(icon)
			end
		end
	end)

	local function updateMaxIcons()
		--icon:modifyTheme({"Dropdown", "Visible", icon.isSelected})
		local maxIcons = dropdown:GetAttribute("MaxIcons")
		if not maxIcons then return 0 end
		local children = {}
		for _, child in pairs(dropdownScroller:GetChildren()) do
			if child:IsA("GuiObject") and child.Visible then
				table.insert(children, child)
			end
		end

		table.sort(children, function(a, b) return a.AbsolutePosition.Y < b.AbsolutePosition.Y end)
		local totalHeight = 0
		local maxIconsRoundedUp = math.ceil(maxIcons)
		for i = 1, maxIconsRoundedUp do
			local child = children[i]
			if not child then break end
			local height = child.AbsoluteSize.Y
			local isReduced = i == maxIconsRoundedUp and maxIconsRoundedUp ~= maxIcons
			if isReduced then
				height *= (maxIcons - maxIconsRoundedUp + 1)
			end
			totalHeight += height
		end
		totalHeight += dropdownPadding.PaddingTop.Offset + dropdownPadding.PaddingBottom.Offset
		return totalHeight
	end
	
	local openTween = nil
	local closeTween = nil
	local currentSpeedMultiplier = nil
	local currentTweenInfo = nil
	local function getTweenInfo()
		local speedMultiplier = Themes.getInstanceValue(dropdown, "MaxIcons") or 1
		if currentSpeedMultiplier and currentSpeedMultiplier == speedMultiplier and currentTweenInfo then
			return currentTweenInfo
		end
		local newTweenInfo = TweenInfo.new(
			TweenDuration.Value * speedMultiplier,
			Enum.EasingStyle.Exponential,
			Enum.EasingDirection.Out
		)
		currentTweenInfo = newTweenInfo
		currentSpeedMultiplier = speedMultiplier
		return newTweenInfo
	end
	local function updateVisibility()
		-- Update visibiliy of dropdown using tween transition
		local tweenInfo = getTweenInfo()
		
		if openTween then
			openTween:Cancel()
			openTween = nil
		end
		if closeTween then
			closeTween:Cancel()
			closeTween = nil
		end

		if icon.isSelected then
			local height = updateMaxIcons()
			dropdown.Visible = true
			dropdown.BackgroundTransparency = 0 -- no transparency so it looks solid
			dropdown.Size = UDim2.new(0, dropdown.Size.X.Offset, 0, 0) -- reset height to 0 before tween

			openTween = TweenService:Create(dropdown, tweenInfo, {Size = UDim2.new(0, dropdown.Size.X.Offset, 0, height)})
			openTween:Play()
			openTween.Completed:Connect(function()
				openTween = nil
			end)
		else
			local closeTweenInfo = TweenInfo.new(0)
			closeTween = TweenService:Create(dropdown, closeTweenInfo, {Size = UDim2.new(0, dropdown.Size.X.Offset, 0, 0)})
			closeTween:Play()
			closeTween.Completed:Connect(function()
				closeTween = nil
			end)
		end
	end

	dropdownJanitor:add(icon.toggled:Connect(updateVisibility))
	updateVisibility()
	--task.delay(0.2, updateVisibility)

	local function updateChildSize()
		local tweenInfo = getTweenInfo()
		if not icon.isSelected then return end
		if openTween then
			openTween:Cancel()
			openTween = nil
		end
		if closeTween then
			closeTween:Cancel()
			closeTween = nil
		end
		
		RunService.Heartbeat:Wait()
		
		local height = updateMaxIcons()

		openTween = TweenService:Create(dropdown, tweenInfo, {Size = UDim2.new(0, dropdown.Size.X.Offset, 0, height)})
		openTween:Play()
		openTween.Completed:Connect(function()	
			openTween = nil
		end)
	end

	dropdownJanitor:add(icon.toggled:Connect(updateVisibility))

	-- Ensures canvas and size stay synced (original updateMaxIcons logic)
	local updateCount = 0
	local isUpdating = false

	-- This updates the scrolling frame to only display a scroll
	-- length equal to the distance produced by its MaxIcons
	local function updateMaxIconsListener()
		updateCount += 1
		if isUpdating then return end
		local myUpdateCount = updateCount
		isUpdating = true
		task.defer(function()
			isUpdating = false
			if updateCount ~= myUpdateCount then
				updateMaxIconsListener()
			end
		end)
		local maxIcons = dropdown:GetAttribute("MaxIcons")
		if not maxIcons then return end

		local orderedInstances = {}
		for _, child in pairs(dropdownScroller:GetChildren()) do
			if child:IsA("GuiObject") and child.Visible then
				table.insert(orderedInstances, {child, child.AbsolutePosition.Y})
			end
		end
		table.sort(orderedInstances, function(a, b) return a[2] < b[2] end)

		local totalHeight = 0
		local hasSetNextSelection = false
		local maxIconsRoundedUp = math.ceil(maxIcons)
		for i = 1, maxIconsRoundedUp do
			local group = orderedInstances[i]
			if not group then break end
			local child = group[1]
			local height = child.AbsoluteSize.Y
			local isReduced = i == maxIconsRoundedUp and maxIconsRoundedUp ~= maxIcons
			if isReduced then
				height = height * (maxIcons - maxIconsRoundedUp + 1)
			end
			totalHeight += height
			if isReduced then
				continue
			end
			local iconUID = child:GetAttribute("WidgetUID")
			local childIcon = iconUID and Icon.getIconByUID(iconUID)
			if childIcon then
				local nextSelection = nil
				if not hasSetNextSelection then
					hasSetNextSelection = true
					nextSelection = icon:getInstance("ClickRegion")
				end
				childIcon:getInstance("ClickRegion").NextSelectionUp = nextSelection
			end
		end
		totalHeight += dropdownPadding.PaddingTop.Offset + dropdownPadding.PaddingBottom.Offset

		dropdownScroller.Size = UDim2.fromOffset(0, totalHeight)

	end

	dropdownJanitor:add(dropdownScroller:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(updateMaxIconsListener))
	dropdownJanitor:add(dropdownScroller.ChildAdded:Connect(updateMaxIconsListener))
	dropdownJanitor:add(dropdownScroller.ChildRemoved:Connect(updateChildSize)) -- rezise the dropdown when icon delects or adds
	dropdownJanitor:add(dropdownScroller.ChildRemoved:Connect(updateMaxIconsListener))
	dropdownJanitor:add(dropdown:GetAttributeChangedSignal("MaxIcons"):Connect(updateMaxIconsListener))
	dropdownJanitor:add(dropdown:GetAttributeChangedSignal("MaxIcons"):Connect(updateChildSize))
	dropdownJanitor:add(icon.childThemeModified:Connect(updateMaxIconsListener))
	updateMaxIconsListener()

	-- Ensures each child listens to visibility changes
	local function connectVisibilityListeners(child)
		if child:IsA("GuiObject") then
			child:GetPropertyChangedSignal("Visible"):Connect(updateChildSize)
			child:GetPropertyChangedSignal("Size"):Connect(updateChildSize) -- -- update max icons when child size changes
		end
	end
	
	-- For existing children
	for _, child in pairs(dropdownScroller:GetChildren()) do
		connectVisibilityListeners(child)
	end
	-- For new children
	dropdownScroller.ChildAdded:Connect(function(child)
		RunService.Heartbeat:Wait()
		connectVisibilityListeners(child)
		updateChildSize()
	end)

	-- On start, hide dropdown (prevent it showing as opened)
	dropdown.Visible = false

	return dropdown
end end function __DIST.q():typeof(__modImpl())local v=__DIST.cache.q if not v then v={c=__modImpl()}__DIST.cache.q=v end return v.c end end do local function __modImpl()
return function(icon, Icon)

	local widget = icon.widget
	local contents = icon:getInstance("Contents")
	local indicator = Instance.new("Frame")
	indicator.Name = "Indicator"
	indicator.LayoutOrder = 9999999
	indicator.ZIndex = 6
	indicator.Size = UDim2.new(0, 42, 0, 42)
	indicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
	indicator.BackgroundTransparency = 1
	indicator.Position = UDim2.new(1, 0, 0.5, 0)
	indicator.BorderSizePixel = 0
	indicator.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	indicator.Parent = contents

	local indicatorButton = Instance.new("Frame")
	indicatorButton.Name = "IndicatorButton"
	indicatorButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	indicatorButton.AnchorPoint = Vector2.new(0.5, 0.5)
	indicatorButton.BorderSizePixel = 0
	indicatorButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	indicatorButton.Parent = indicator
	
	local GuiService = game:GetService("GuiService")
	local GamepadService = game:GetService("GamepadService")
	local ourClickRegion = icon:getInstance("ClickRegion")
	local function selectionChanged()
		local selectedClickRegion = GuiService.SelectedObject
		if selectedClickRegion == ourClickRegion then
			indicatorButton.BackgroundTransparency = 1
			indicatorButton.Position = UDim2.new(0.5, -2, 0.5, 0)
			indicatorButton.Size = UDim2.fromScale(1.2, 1.2)
		else
			indicatorButton.BackgroundTransparency = 0.75
			indicatorButton.Position = UDim2.new(0.5, 2, 0.5, 0)
			indicatorButton.Size = UDim2.fromScale(1, 1)
		end
	end
	icon.janitor:add(GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(selectionChanged))
	selectionChanged()

	local imageLabel = Instance.new("ImageLabel")
	imageLabel.LayoutOrder = 2
	imageLabel.ZIndex = 15
	imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	imageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	imageLabel.Image = "rbxasset://textures/ui/Controls/XboxController/DPadUp@2x.png"
	imageLabel.Parent = indicatorButton

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = indicatorButton

	local UserInputService = game:GetService("UserInputService")
	local function setIndicatorVisible(visibility)
		if visibility == nil then
			visibility = indicator.Visible
		end
		if GamepadService.GamepadCursorEnabled then
			visibility = false
		end
		if visibility then
			icon:modifyTheme({"PaddingRight", "Size", UDim2.new(0, 0, 1, 0)}, "IndicatorPadding")
		elseif indicator.Visible then
			icon:removeModification("IndicatorPadding")
		end
		icon:modifyTheme({"Indicator", "Visible", visibility})
		icon.updateSize:Fire()
	end
	icon.janitor:add(GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"):Connect(setIndicatorVisible))
	icon.indicatorSet:Connect(function(keyCode)
		local visibility = false
		if keyCode then
			imageLabel.Image = UserInputService:GetImageForKeyCode(keyCode)
			visibility = true
		end
		setIndicatorVisible(visibility)
	end)

	local function updateSize()
		local ySize = widget.AbsoluteSize.Y*0.96
		indicator.Size = UDim2.new(0, ySize, 0, ySize)
	end
	widget:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateSize)
	updateSize()

	return indicator
end end function __DIST.r():typeof(__modImpl())local v=__DIST.cache.r if not v then v={c=__modImpl()}__DIST.cache.r=v end return v.c end end end--!nonstrict
--[[
	
	The majority of this code is an interface designed to make it easy for you to
	work with TopbarPlus (most methods for instance reference :modifyTheme()).
	The processing overhead mainly consists of applying themes and calculating 
	appearance (such as size and width of labels) which is handled in about
	200 lines of code here and the Widget UI module. This has been achieved
	in v3 by outsourcing a majority of previous calculations to inbuilt Roblox
	features like UIListLayouts.


	v3 provides inbuilt support for controllers (simply press DPadUp),
	touch devices (phones, tablets , etc), localization (automatic resizing
	of widgets, autolocalize for relevant labels), backwards compatability
	with the old topbar, and more.


	My primary goals for the v3 re-write have been to:
		
	1. Improve code readability and organisation (reduced lines of code within
	   Icon+IconController from 3200 to ~950, separated UI elements, etc)
		
	2. Improve ease-of-use (themes now actually make sense and can account
	   for any modifications you want, converted to a package for
	   quick installation and easy-comparisons of new updates, etc)
	
	3. Provide support for all key features of the new Roblox topbar
	   while improving performance of the module (deferring and collecting
	   changes then calling as a singular, utilizing inbuilt Roblox features
	   such as UILIstLayouts, etc)

--]]




-- MODULES

local Signal = __DIST.a()
local Janitor = __DIST.b()
local Utility = __DIST.c()
local Themes = __DIST.e()
local Gamepad = __DIST.g()
local Overflow = __DIST.h()
local Icon = {}
Icon.__index = Icon

-- SERVICES
local UserInputService = Utility.Clone(game:GetService("UserInputService"))
local ContentProvider = Utility.Clone(game:GetService("ContentProvider"))
local StarterGui = Utility.Clone(game:GetService("StarterGui"))
local Types = __DIST.i()

-- TYPES
export type Icon = Icon__DARKLUA_TYPE_l


--- LOCAL

local iconsDict = {}
local anyIconSelected = Signal.new()
local totalCreatedIcons = 0
local preferredInput = {
	mobile = Enum.PreferredInput.Touch,
	desktop = Enum.PreferredInput.KeyboardAndMouse,
	console = Enum.PreferredInput.Gamepad
}



-- PUBLIC VARIABLES
Icon.baseDisplayOrderChanged = Signal.new()
Icon.baseDisplayOrder = 10
Icon.baseTheme = __DIST.d()
Icon.isOldTopbar = false -- Logic has been moved to Container
Icon.iconsDictionary = iconsDict
Icon.insetHeightChanged = Signal.new()
Icon.container = __DIST.k()(Icon)
-- Optional integration point: if a different TopbarPlus-like module already
-- created holders in CoreGui/PlayerGui, Overflow can populate these so that
-- icons render inside the host topbar instead of a private container.
Icon.topbarHoldersOverride = nil
Icon.topbarPrimaryScreenGuiOverride = nil
Icon.topbarEnabled = true
Icon.iconAdded = Signal.new()
Icon.iconRemoved = Signal.new()
Icon.iconChanged = Signal.new()



-- PUBLIC FUNCTIONS
function Icon.getIcons()
	return Icon.iconsDictionary
end

function Icon.getIconByUID(UID)
	local match = Icon.iconsDictionary[UID]
	if match then
		return match
	end
	return nil
end

function Icon.getIcon(nameOrUID)
	local match = Icon.getIconByUID(nameOrUID)
	if match then
		return match
	end
	for _, icon in pairs(iconsDict) do
		if icon.name == nameOrUID then
			return icon
		end
	end
	return nil
end

function Icon.setTopbarEnabled(bool, isInternal)
	if typeof(bool) ~= "boolean" then
		bool = Icon.topbarEnabled
	end
	if not isInternal then
		Icon.topbarEnabled = bool
	end
	for _, screenGui in pairs(Icon.container) do
		screenGui.Enabled = bool
	end
end

function Icon.modifyBaseTheme(modifications)
	modifications = Themes.getModifications(modifications)
	for _, modification in pairs(modifications) do
		for _, detail in pairs(Icon.baseTheme) do
			Themes.merge(detail, modification)
		end
	end
	for _, icon in pairs(iconsDict) do
		icon:setTheme(Icon.baseTheme)
	end
end

function Icon.setDisplayOrder(int)
	Icon.baseDisplayOrder = int
	Icon.baseDisplayOrderChanged:Fire(int)
end



-- SETUP
task.defer(Gamepad.start, Icon)
task.defer(Overflow.start, Icon)
task.defer(function()
	for _, screenGui in pairs(Icon.container) do
		Utility.ProtectUI(screenGui)
	end
__DIST.l()
end)



-- CONSTRUCTOR
function Icon.new()
	local self = {}
	setmetatable(self, Icon)

	--- Janitors (for cleanup)
	local janitor = Janitor.new()
	self.janitor = janitor
	self.themesJanitor = janitor:add(Janitor.new())
	self.singleClickJanitor = janitor:add(Janitor.new())
	self.captionJanitor = janitor:add(Janitor.new())
	self.joinJanitor = janitor:add(Janitor.new())
	self.menuJanitor = janitor:add(Janitor.new())
	self.dropdownJanitor = janitor:add(Janitor.new())

	-- Register
	local iconUID = Utility.generateUID()
	iconsDict[iconUID] = self
	janitor:add(function()
		iconsDict[iconUID] = nil
	end)

	-- Signals (events)
	self.selected = janitor:add(Signal.new())
	self.deselected = janitor:add(Signal.new())
	self.toggled = janitor:add(Signal.new())
	self.viewingStarted = janitor:add(Signal.new())
	self.viewingEnded = janitor:add(Signal.new())
	self.stateChanged = janitor:add(Signal.new())
	self.notified = janitor:add(Signal.new())
	self.noticeStarted = janitor:add(Signal.new())
	self.noticeChanged = janitor:add(Signal.new())
	self.endNotices = janitor:add(Signal.new())
	self.toggleKeyAdded = janitor:add(Signal.new())
	self.fakeToggleKeyChanged = janitor:add(Signal.new())
	self.alignmentChanged = janitor:add(Signal.new())
	self.updateSize = janitor:add(Signal.new())
	self.resizingComplete = janitor:add(Signal.new())
	self.joinedParent = janitor:add(Signal.new())
	self.menuSet = janitor:add(Signal.new())
	self.dropdownSet = janitor:add(Signal.new())
	self.updateMenu = janitor:add(Signal.new())
	self.startMenuUpdate = janitor:add(Signal.new())
	self.childThemeModified = janitor:add(Signal.new())
	self.indicatorSet = janitor:add(Signal.new())
	self.dropdownChildAdded = janitor:add(Signal.new())
	self.menuChildAdded = janitor:add(Signal.new())

	-- Properties
	self._iconRef = Icon
	self.UID = iconUID
	self.isEnabled = true
	self.enabled = self.isEnabled -- Backwards compatability
	self.isSelected = false
	self.isViewing = false
	self.joinedFrame = false
	self.parentIconUID = false
	self.deselectWhenOtherIconSelected = true
	self.totalNotices = 0
	self.activeState = "Deselected"
	self.alignment = ""
	self.originalAlignment = ""
	self.appliedTheme = {}
	self.appearance = {}
	self.cachedInstances = {}
	self.cachedNamesToInstances = {}
	self.cachedCollectives = {}
	self.bindedToggleKeys = {}
	self.customBehaviours = {}
	self.toggleItems = {}
	self.bindedEvents = {}
	self.notices = {}
	self.menuIcons = {}
	self.dropdownIcons = {}
	self.childIconsDict = {}
	self.creationTime = os.clock()

	-- Widget is the new name for an icon
	local widget = janitor:add(__DIST.n()(self, Icon))
	self.widget = widget
	self:setAlignment()
	
	-- It's important we set an order otherwise icons will not align
	-- correctly within menus
	totalCreatedIcons += 1
	local ourOrder = 1+(totalCreatedIcons*0.01)
	self:setOrder(ourOrder, "deselected")
	self:setOrder(ourOrder, "selected")

	-- This applies the default them
	self:setTheme(Icon.baseTheme)

	-- Button Clicked (for states "Selected" and "Deselected")
	local clickRegion = self:getInstance("ClickRegion")
	local hasUsedMouseButton1Click = false
	local lastToggleTime = 0
	local DEBOUNCE_TIME = 0.1 -- 100ms debounce to prevent rapid toggles

	local function handleToggle()
		if self.locked then
			return
		end

		-- Debounce logic to prevent rapid toggling
		local currentTime = tick()
		if currentTime - lastToggleTime < DEBOUNCE_TIME then
			return
		end
		lastToggleTime = currentTime

		if self.isSelected then
			self:deselect("User", self)
		else
			self:select("User", self)
		end
	end

	clickRegion.MouseButton1Click:Connect(function()
		hasUsedMouseButton1Click = true
		handleToggle()
	end)

	clickRegion.TouchTap:Connect(function()
		-- This resolves the bug report by @28Pixels:
		-- https://devforum.roblox.com/t/topbarplus/1017485/1104
		-- Only use TouchTap if MouseButton1Click has never fired
		-- This handles edge cases where ONLY TouchTap works
		-- Also prevents double-toggle bug with multi-touch on mobile
		-- Credit to @sayer80 for this fix
		if not hasUsedMouseButton1Click then
			handleToggle()
		end
	end)

	-- Keys can be bound to toggle between Selected and Deselected
	janitor:add(UserInputService.InputBegan:Connect(function(input, touchingAnObject)
		if self.locked then
			return
		end
		if self.bindedToggleKeys[input.KeyCode] and not touchingAnObject then
			handleToggle()
		end
	end))

	-- Button Hovering (for state "Viewing")
	-- Hovering is a state only for devices with keyboards
	-- and controllers (not touchpads)
	local function viewingStarted(dontSetState)
		if self.locked then
			return
		end
		self.isViewing = true
		self.viewingStarted:Fire(true)
		if not dontSetState then
			self:setState("Viewing", "User", self)
		end
	end
	local function viewingEnded()
		if self.locked then
			return
		end
		self.isViewing = false
		self.viewingEnded:Fire(true)
		self:setState(nil, "User", self)
	end
	self.joinedParent:Connect(function()
		if self.isViewing then
			viewingEnded()
		end
	end)
	clickRegion.MouseEnter:Connect(function()
		local dontSetState = UserInputService.PreferredInput ~= preferredInput.desktop
		viewingStarted(dontSetState)
	end)
	local touchCount = 0
	janitor:add(UserInputService.TouchEnded:Connect(viewingEnded))
	clickRegion.MouseLeave:Connect(viewingEnded)
	clickRegion.SelectionGained:Connect(viewingStarted)
	clickRegion.SelectionLost:Connect(viewingEnded)
	clickRegion.MouseButton1Down:Connect(function()
		if not self.locked and UserInputService.PreferredInput == preferredInput.mobile then
			touchCount += 1
			local myTouchCount = touchCount
			task.delay(0.2, function()
				if myTouchCount == touchCount then
					viewingStarted()
				end
			end)
		end
	end)
	clickRegion.MouseButton1Up:Connect(function()
		touchCount += 1
	end)

	-- Handle overlay on viewing
	local iconOverlay = self:getInstance("IconOverlay")
	self.viewingStarted:Connect(function()
		iconOverlay.Visible = not self.overlayDisabled
	end)
	self.viewingEnded:Connect(function()
		iconOverlay.Visible = false
	end)

	-- Deselect when another icon is selected
	janitor:add(anyIconSelected:Connect(function(incomingIcon)
		if incomingIcon ~= self and self.deselectWhenOtherIconSelected and incomingIcon.deselectWhenOtherIconSelected then
			self:deselect("AutoDeselect", incomingIcon)
		end
	end))

	-- This checks if the script calling this module is a descendant of a ScreenGui
	-- with 'ResetOnSpawn' set to true. If it is, then we destroy the icon the
	-- client respawns. This solves one of the most asked about questions on the post
	-- The only caveat this may not work if the player doesn't uniquely name their ScreenGui and the frames
	-- the LocalScript rests within
	local source =  debug.info(2, "s")
	local sourcePath = string.split(source, ".")
	local origin = game
	local originsScreenGui
	for i, sourceName in pairs(sourcePath) do
		origin = origin:FindFirstChild(sourceName)
		if not origin then
			break
		end
		if origin:IsA("ScreenGui") then
			originsScreenGui = origin
		end
	end
	if origin and originsScreenGui and originsScreenGui.ResetOnSpawn == true then
		self.originsScreenGui = originsScreenGui
		Utility.localPlayerRespawned(function()
			self:destroy()
		end)
	end

	-- Additional children behaviour when toggled (mostly notices)
	self.toggled:Connect(function(isSelected)
		self.noticeChanged:Fire(self.totalNotices)
		for childIconUID, _ in pairs(self.childIconsDict) do
			local childIcon = Icon.getIconByUID(childIconUID)
			childIcon.noticeChanged:Fire(childIcon.totalNotices)
			if not isSelected and childIcon.isSelected then
				-- If an icon within a menu or dropdown is also
				-- a dropdown or menu, then close it
				for _, _ in pairs(childIcon.childIconsDict) do
					childIcon:deselect("HideParentFeature", self)
				end
			end
		end
	end)
	
	-- This closes/reopens the chat or playerlist if the icon is a dropdown
	-- In the future I'd prefer to use the position+size of the chat
	-- to determine whether to close dropdown (instead of non-right-set)
	-- but for reasons mentioned here it's unreliable at the time of
	-- writing this: https://devforum.roblox.com/t/here/2794915
	-- I could also make this better by accounting for multiple
	-- dropdowns being open (not just this one) but this will work
	-- fine for almost every use case for now.
	self.selected:Connect(function()
		local isDropdown = #self.dropdownIcons > 0
		if isDropdown then
			if StarterGui:GetCore("ChatActive") and self.alignment ~= "Right" then
				self.chatWasPreviouslyActive = true
				StarterGui:SetCore("ChatActive", false)
			end
			if StarterGui:GetCoreGuiEnabled("PlayerList") and self.alignment ~= "Left" then
				self.playerlistWasPreviouslyActive = true
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
			end
		end
	end)
	self.deselected:Connect(function()
		if self.chatWasPreviouslyActive then
			self.chatWasPreviouslyActive = nil
			StarterGui:SetCore("ChatActive", true)
		end
		if self.playerlistWasPreviouslyActive then
			self.playerlistWasPreviouslyActive = nil
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
		end
	end)
	
	-- There's a rare occassion where the appearance is not
	-- fully set to deselected so this ensures the icons
	-- appearance is fully as it should be
	task.delay(0.1, function()
		if self.activeState == "Deselected" then
			self.stateChanged:Fire("Deselected")
			self:refresh()
		end
	end)
	
	-- Call icon added
	Icon.iconAdded:Fire(self)

	return self
end



-- METHODS
function Icon:setName(name)
	self.widget.Name = name
	self.name = name
	return self
end

function Icon:setState(incomingStateName, fromSource, sourceIcon)
	-- This is responsible for acknowleding a change in stage (such as from "Deselected" to "Viewing" when
	-- a users mouse enters the widget), then informing other systems of this state change to then act upon
	-- (such as the theme handler applying the theme which corresponds to that state).
	if not incomingStateName then
		incomingStateName = (self.isSelected and "Selected") or "Deselected"
	end
	local stateName = Utility.formatStateName(incomingStateName)
	local previousStateName = self.activeState
	if previousStateName == stateName then
		return
	end
	local currentIsSelected = self.isSelected
	self.activeState = stateName
	if stateName == "Deselected" then
		self.isSelected = false
		if currentIsSelected then
			self.toggled:Fire(false, fromSource, sourceIcon)
			self.deselected:Fire(fromSource, sourceIcon)
		end
		self:_setToggleItemsVisible(false, fromSource, sourceIcon)
	elseif stateName == "Selected" then
		self.isSelected = true
		if not currentIsSelected then
			self.toggled:Fire(true, fromSource, sourceIcon)
			self.selected:Fire(fromSource, sourceIcon)
			anyIconSelected:Fire(self, fromSource, sourceIcon)
		end
		self:_setToggleItemsVisible(true, fromSource, sourceIcon)
	end
	self.stateChanged:Fire(stateName, fromSource, sourceIcon)
end

function Icon:getInstance(name)
	-- This enables us to easily retrieve instances located within the icon simply by passing its name.
	-- Every important/significant instance is named uniquely therefore this is no worry of overlap.
	-- We cache the result for more performant retrieval in the future.
	local instance = self.cachedNamesToInstances[name]
	if instance then
		return instance
	end
	local function cacheInstance(childName, child)
		local currentCache = self.cachedInstances[child]
		if not currentCache then
			local collectiveName = child:GetAttribute("Collective")
			local cachedCollective = collectiveName and self.cachedCollectives[collectiveName]
			if cachedCollective then
				table.insert(cachedCollective, child)
			end
			self.cachedNamesToInstances[childName] = child
			self.cachedInstances[child] = true
			child.Destroying:Once(function()
				self.cachedNamesToInstances[childName] = nil
				self.cachedInstances[child] = nil
			end)
		end
	end
	local widget = self.widget
	cacheInstance("Widget", widget)
	if name == "Widget" then
		return widget
	end

	local returnChild
	local function scanChildren(parentInstance)
		for _, child in pairs(parentInstance:GetChildren()) do
			local widgetUID = child:GetAttribute("WidgetUID")
			if widgetUID and widgetUID ~= self.UID then
				-- This prevents instances within other icons from being recorded
				-- (for instance when other icons are added to this icons menu)
				continue
			end
			-- If the child is a fake placeholder instance (such as dropdowns, notices, etc)
			-- then its important we scan the real original instance instead of this clone
			local realChild = Themes.getRealInstance(child)
			if realChild then
				child = realChild
			end
			-- Finally scan its children
			scanChildren(child)
			if child:IsA("GuiBase") or child:IsA("UIBase") or child:IsA("ValueBase") then
				local childName = child.Name
				cacheInstance(childName, child)
				if childName == name then
					returnChild = child
				end
			end
		end
	end
	scanChildren(widget)
	return returnChild
end

function Icon:getCollective(name)
	-- A collective is an array of instances within the Widget that have been
	-- grouped together based on a given name. This just makes it easy
	-- to act on multiple instances at once which share similar behaviours.
	-- For instance, if we want to change the icons corner size, all corner instances
	-- with the attribute "Collective" and value "WidgetCorner" could be updated
	-- instantly by doing Themes.apply(icon, "WidgetCorner", newSize)
	local collective = self.cachedCollectives[name]
	if collective then
		return collective
	end
	collective = {}
	for instance, _ in pairs(self.cachedInstances) do
		if instance:GetAttribute("Collective") == name then
			table.insert(collective, instance)
		end
	end
	self.cachedCollectives[name] = collective
	return collective
end

function Icon:getInstanceOrCollective(collectiveOrInstanceName)
	-- Similar to :getInstance but also accounts for 'Collectives', such as UICorners and returns
	-- an array of instances instead of a single instance
	local instances = {}
	local instance = self:getInstance(collectiveOrInstanceName)
	if instance then
		table.insert(instances, instance)
	end
	if #instances == 0 then
		instances = self:getCollective(collectiveOrInstanceName)
	end
	return instances
end

function Icon:getStateGroup(iconState)
	local chosenState = iconState or self.activeState
	local stateGroup = self.appearance[chosenState]
	if not stateGroup then
		stateGroup = {}
		self.appearance[chosenState] = stateGroup
	end
	return stateGroup
end

function Icon:refreshAppearance(instance, specificProperty)
	Themes.refresh(self, instance, specificProperty)
	return self
end

function Icon:refresh()
	self:refreshAppearance(self.widget)
	self.updateSize:Fire()
	return self
end

function Icon:updateParent()
	local parentIcon = Icon.getIconByUID(self.parentIconUID)
	if parentIcon then
		parentIcon.updateSize:Fire()
	end
end

function Icon:setBehaviour(collectiveOrInstanceName, property, callback, refreshAppearance)
	-- You can specify your own custom callback to handle custom logic just before
	-- an instances property is changed by using :setBehaviour()
	local key = collectiveOrInstanceName.."-"..property
	self.customBehaviours[key] = callback
	if refreshAppearance then
		local instances = self:getInstanceOrCollective(collectiveOrInstanceName)
		for _, instance in pairs(instances) do
			self:refreshAppearance(instance, property)
		end
	end
end

function Icon:modifyTheme(modifications, customModificationUID)
	local modificationUID = Themes.modify(self, modifications, customModificationUID)
	return self, modificationUID
end

function Icon:modifyChildTheme(modifications, modificationUID)
	-- Same as modifyTheme except for its children (i.e. icons
	-- within its dropdown or menu)
	self.childModifications = modifications
	self.childModificationsUID = modificationUID
	for childIconUID, _ in pairs(self.childIconsDict) do
		local childIcon = Icon.getIconByUID(childIconUID)
		childIcon:modifyTheme(modifications, modificationUID)
	end
	self.childThemeModified:Fire()
	return self
end

function Icon:removeModification(modificationUID)
	Themes.remove(self, modificationUID)
	return self
end

function Icon:removeModificationWith(instanceName, property, state)
	Themes.removeWith(self, instanceName, property, state)
	return self
end

function Icon:setTheme(theme)
	Themes.set(self, theme)
	return self
end

function Icon:setEnabled(bool)
	self.isEnabled = bool
	self.enabled = self.isEnabled
	self.widget.Visible = bool
	self:updateParent()
	return self
end

function Icon:select(fromSource, sourceIcon)
	self:setState("Selected", fromSource, sourceIcon)
	return self
end

function Icon:deselect(fromSource, sourceIcon)
	self:setState("Deselected", fromSource, sourceIcon)
	return self
end

function Icon:notify(customClearSignal, noticeId)
	-- Generates a notification which appears in the top right of the icon. Useful for example for prompting
	-- users of changes/updates within your UI such as a Catalog
	-- 'customClearSignal' is a signal object (e.g. icon.deselected) or
	-- Roblox event (e.g. Instance.new("BindableEvent").Event)
	local notice = self.notice
	if not notice then
		notice = __DIST.o()(self, Icon)
		self.notice = notice
	end
	self.noticeStarted:Fire(customClearSignal, noticeId)
	return self
end

function Icon:clearNotices()
	self.endNotices:Fire()
	return self
end

function Icon:disableOverlay(bool)
	self.overlayDisabled = bool
	return self
end
Icon.disableStateOverlay = Icon.disableOverlay

function Icon:setImage(imageId, iconState)
	self:modifyTheme({"IconImage", "Image", imageId, iconState})
	
	-- This code ensures icon images are preloaded if they haven't been fetched yet
	task.spawn(function()
		local newIdContent = if tonumber(imageId) then `rbxassetid://{imageId}` else imageId
		local initialAssetFetchStatus = ContentProvider:GetAssetFetchStatus(newIdContent)
	
		if initialAssetFetchStatus ~= Enum.AssetFetchStatus.Success then
			pcall(ContentProvider.PreloadAsync, ContentProvider, { newIdContent })
		end
	end)
		
	return self
end

function Icon:setLabel(text, iconState)
	self:modifyTheme({"IconLabel", "Text", text, iconState})
	return self
end

function Icon:setOrder(int, iconState)
	-- We multiply by 100 to allow for custom increments inbetween
	-- (.01, .02, etc) as LayoutOrders only support integers
	local newInt = int*100
	self:modifyTheme({"IconSpot", "LayoutOrder", newInt, iconState})
	self:modifyTheme({"Widget", "LayoutOrder", newInt, iconState})
	return self
end

function Icon:setCornerRadius(udim, iconState)
	self:modifyTheme({"IconCorners", "CornerRadius", udim, iconState})
	return self
end

function Icon:align(leftCenterOrRight, isFromParentIcon)
	-- Determines the side of the screen the icon will be ordered
	local direction = tostring(leftCenterOrRight):lower()
	if direction == "mid" or direction == "centre" then
		direction = "center"
	end
	if direction ~= "left" and direction ~= "center" and direction ~= "right" then
		direction = "left"
	end
	local finalDirection = string.upper(string.sub(direction, 1, 1))..string.sub(direction, 2)
	
	-- If Overflow discovered an existing topbar with compatible holders,
	-- parent into those holders so we truly merge into the host topbar.
	local overrideHolders = Icon.topbarHoldersOverride
	local alignmentHolder
	local screenGui
	if overrideHolders and overrideHolders[finalDirection] then
		alignmentHolder = overrideHolders[finalDirection]
		screenGui = alignmentHolder:FindFirstAncestorWhichIsA("ScreenGui") or Icon.topbarPrimaryScreenGuiOverride
	else
		screenGui = (direction == "center" and Icon.container.TopbarCentered) or Icon.container.TopbarStandard
		local holders = screenGui.Holders
		alignmentHolder = holders[finalDirection]
	end
	if not isFromParentIcon then
		self.originalAlignment = finalDirection
	end
	local joinedFrame = self.joinedFrame
	self.screenGui = screenGui
	self.alignmentHolder = alignmentHolder
	if not self.isDestroyed then
		self.widget.Parent = joinedFrame or alignmentHolder
	end
	self.alignment = finalDirection
	self.alignmentChanged:Fire(finalDirection)
	Icon.iconChanged:Fire(self)
	return self
end
Icon.setAlignment = Icon.align

function Icon:setLeft()
	self:setAlignment("Left")
	return self
end

function Icon:setMid()
	self:setAlignment("Center")
	return self
end

function Icon:setRight()
	self:setAlignment("Right")
	return self
end

function Icon:setWidth(offsetMinimum, iconState)
	-- This sets a minimum X offset size for the widget, useful
	-- for example if you're constantly changing the label
	-- but don't want the icon to resize every time
	self:modifyTheme({"Widget", "DesiredWidth", offsetMinimum, iconState})
	return self
end

function Icon:setImageScale(number, iconState)
	self:modifyTheme({"IconImageScale", "Value", number, iconState})
	return self
end

function Icon:setImageRatio(number, iconState)
	self:modifyTheme({"IconImageRatio", "AspectRatio", number, iconState})
	return self
end

function Icon:setTextSize(number, iconState)
	self:modifyTheme({"IconLabel", "TextSize", number, iconState})
	return self
end

function Icon:setTextFont(font, fontWeight, fontStyle, iconState)
	fontWeight = fontWeight or Enum.FontWeight.Regular
	fontStyle = fontStyle or Enum.FontStyle.Normal
	local fontFace
	local fontType = typeof(font)
	if fontType == "number" then
		fontFace = Font.fromId(font, fontWeight, fontStyle)
	elseif fontType == "EnumItem" then
		fontFace = Font.fromEnum(font)
	elseif fontType == "string" then
		if not font:match("rbxasset") then
			fontFace = Font.fromName(font, fontWeight, fontStyle)
		end
	end
	if not fontFace then
		fontFace = Font.new(font, fontWeight, fontStyle)
	end
	self:modifyTheme({"IconLabel", "FontFace", fontFace, iconState})
	return self
end

function Icon:setTextColor(Color, iconState)
	if Color == nil or Color == "" or (type(Color) ~= "userdata" or typeof(Color) ~= "Color3") then
		if Color ~= nil and Color ~= "" then
			warn("setTextColor item must be a Color3 value! Changed the color to white.")
		end
		Color = Color3.fromRGB(255, 255, 255)
	end

	self:modifyTheme({"IconLabel", "TextColor3", Color, iconState})
	return self
end

function Icon:bindToggleItem(guiObjectOrLayerCollector)
	if not guiObjectOrLayerCollector:IsA("GuiObject") and not guiObjectOrLayerCollector:IsA("LayerCollector") then
		error("Toggle item must be a GuiObject or LayerCollector!")
	end
	self.toggleItems[guiObjectOrLayerCollector] = true
	self:_updateSelectionInstances()
	return self
end

function Icon:unbindToggleItem(guiObjectOrLayerCollector)
	self.toggleItems[guiObjectOrLayerCollector] = nil
	self:_updateSelectionInstances()
	return self
end

function Icon:_updateSelectionInstances()
	-- This is to assist with controller navigation and selection
	-- It converts the value true to an array
	for guiObjectOrLayerCollector, _ in pairs(self.toggleItems) do
		local buttonInstancesArray = {}
		for _, instance in pairs(guiObjectOrLayerCollector:GetDescendants()) do
			if (instance:IsA("TextButton") or instance:IsA("ImageButton")) and instance.Active then
				table.insert(buttonInstancesArray, instance)
			end
		end
		self.toggleItems[guiObjectOrLayerCollector] = buttonInstancesArray
	end
end

function Icon:_setToggleItemsVisible(bool, fromSource, sourceIcon)
	for toggleItem, _ in pairs(self.toggleItems) do
		if not sourceIcon or sourceIcon == self or sourceIcon.toggleItems[toggleItem] == nil then
			local property = "Visible"
			if toggleItem:IsA("LayerCollector") then
				property = "Enabled"
			end
			toggleItem[property] = bool
		end
	end
end

function Icon:bindEvent(iconEventName, eventFunction)
	local event = self[iconEventName]
	assert(event and typeof(event) == "table" and event.Connect, "argument[1] must be a valid topbarplus icon event name!")
	assert(typeof(eventFunction) == "function", "argument[2] must be a function!")
	self.bindedEvents[iconEventName] = event:Connect(function(...)
		eventFunction(self, ...)
	end)
	return self
end

function Icon:unbindEvent(iconEventName)
	local eventConnection = self.bindedEvents[iconEventName]
	if eventConnection then
		eventConnection:Disconnect()
		self.bindedEvents[iconEventName] = nil
	end
	return self
end

function Icon:bindToggleKey(keyCodeEnum)
	assert(typeof(keyCodeEnum) == "EnumItem", "argument[1] must be a KeyCode EnumItem!")
	self.bindedToggleKeys[keyCodeEnum] = true
	self.toggleKeyAdded:Fire(keyCodeEnum)
	self:setCaption("_hotkey_")
	return self
end

function Icon:unbindToggleKey(keyCodeEnum)
	assert(typeof(keyCodeEnum) == "EnumItem", "argument[1] must be a KeyCode EnumItem!")
	self.bindedToggleKeys[keyCodeEnum] = nil
	return self
end

function Icon:call(callback, ...)
	local packedArgs = table.pack(...)
	task.spawn(function()
		callback(self, table.unpack(packedArgs))
	end)
	return self
end

function Icon:addToJanitor(callback, methodName, index)
	self.janitor:add(callback, methodName, index)
	return self
end

function Icon:lock()
	-- This disables all user inputs related to the icon (such as clicking buttons, pressing keys, etc)
	local clickRegion = self:getInstance("ClickRegion")
	clickRegion.Visible = false
	self.locked = true
	return self
end

function Icon:unlock()
	local clickRegion = self:getInstance("ClickRegion")
	clickRegion.Visible = true
	self.locked = false
	return self
end

function Icon:debounce(seconds)
	self:lock()
	task.wait(seconds)
	self:unlock()
	return self
end

function Icon:autoDeselect(bool)
	-- When set to true the icon will deselect itself automatically whenever
	-- another icon is selected
	if bool == nil then
		bool = true
	end
	self.deselectWhenOtherIconSelected = bool
	return self
end

function Icon:oneClick(bool)
	-- When set to true the icon will automatically deselect when selected, this creates
	-- the effect of a single click button
	local singleClickJanitor = self.singleClickJanitor
	singleClickJanitor:Cleanup()
	if bool or bool == nil then
		singleClickJanitor:add(self.selected:Connect(function()
			self:deselect("OneClick", self)
		end))
	end
	self.oneClickEnabled = true
	return self
end

function Icon:setCaption(text)
	if text == "_hotkey_" and (self.captionText) then
		return self
	end
	local captionJanitor = self.captionJanitor
	self.captionJanitor:Cleanup()
	if not text or text == "" then
		self.caption = nil
		self.captionText = nil
		return self
	end
	local caption = captionJanitor:add(__DIST.p()(self))
	caption:SetAttribute("CaptionText", text)
	self.caption = caption
	self.captionText = text
	return self
end

function Icon:setCaptionHint(keyCodeEnum)
	assert(typeof(keyCodeEnum) == "EnumItem", "argument[1] must be a KeyCode EnumItem!")
	self.fakeToggleKey = keyCodeEnum
	self.fakeToggleKeyChanged:Fire(keyCodeEnum)
	self:setCaption("_hotkey_")
	return self
end

function Icon:leave()
	local joinJanitor = self.joinJanitor
	joinJanitor:Cleanup()
	return self
end

function Icon:joinMenu(parentIcon)
	Utility.joinFeature(self, parentIcon, parentIcon.menuIcons, parentIcon:getInstance("Menu"))
	parentIcon.menuChildAdded:Fire(self)
	return self
end

function Icon:setMenu(arrayOfIcons)
	self.menuSet:Fire(arrayOfIcons)
	return self
end

function Icon:setFixedMenu(arrayOfIcons)
	self:freezeMenu(arrayOfIcons)
	self:setMenu(arrayOfIcons)
end
Icon.setFrozenMenu = Icon.setFixedMenu

function Icon:freezeMenu()
	-- A frozen menu is a menu which is permanently locked in the
	-- the selected state (with its toggle hidden)
	self:select("FrozenMenu", self)
	self:bindEvent("deselected", function(icon)
		icon:select("FrozenMenu", self)
	end)
	self:modifyTheme({"IconSpot", "Visible", false})
end

function Icon:joinDropdown(parentIcon)
	parentIcon:getDropdown()
	Utility.joinFeature(self, parentIcon, parentIcon.dropdownIcons, parentIcon:getInstance("DropdownScroller"))
	parentIcon.dropdownChildAdded:Fire(self)
	return self
end

function Icon:getDropdown()
	local dropdown = self.dropdown
	if not dropdown then
		dropdown = __DIST.q()(self)
		self.dropdown = dropdown
		self:clipOutside(dropdown)
	end
	return dropdown
end

function Icon:setDropdown(arrayOfIcons)
	self:getDropdown()
	self.dropdownSet:Fire(arrayOfIcons)
	return self
end

function Icon:clipOutside(instance)
	-- This is essential for items such as notices and dropdowns which will exceed the bounds of the widget. This is an issue
	-- because the widget must have ClipsDescendents enabled to hide items for instance when the menu is closing or opening.
	-- This creates an invisible frame which matches the size and position of the instance, then the instance is parented outside of
	-- the widget and tracks the clone to match its size and position. In order for themes, etc to work the applying system checks
	-- to see if an instance is a clone, then if it is, it applies it to the original instance instead of the clone.
	local instanceClone = Utility.clipOutside(self, instance)
	self:refreshAppearance(instance)
	return self, instanceClone
end

function Icon:setIndicator(keyCode)
	-- An indicator is a direction button prompt with an image of the given keycode. This is useful for instance
	-- with controllers to show the user what button to press to highlight the topbar. You don't need
	-- to set an indicator for controllers as this is handled internally within the Gamepad module
	local indicator = self.indicator
	if not indicator then
		indicator = self.janitor:add(__DIST.r()(self, Icon))
		self.indicator = indicator
	end
	self.indicatorSet:Fire(keyCode)
end

function Icon:convertLabelToNumberSpinner(numberSpinner, callback)
	task.defer(function()
		
		local label = self:getInstance("IconLabel")
		label.Transparency = 1
		numberSpinner.Parent = label.Parent
		numberSpinner.Size = UDim2.fromScale(1, 1)
		numberSpinner.AnchorPoint = Vector2.new(0.5, 0.5)
		numberSpinner.Position = UDim2.new(0.5, 0, 0.5, 0)
		numberSpinner.TextXAlignment = Enum.TextXAlignment.Center
		numberSpinner.ClipsDescendants = false

		local propertiesToChangeLabel = {
			"FontFace",
			"BorderSizePixel",
			"BorderColor3",
			"Rotation",
			"TextStrokeTransparency",
			"TextStrokeColor3",
			"TextStrokeTransparency",
			"TextColor3",
		}
		for _, property in ipairs(propertiesToChangeLabel) do
			numberSpinner[property] = label[property]
			self:addToJanitor(label:GetPropertyChangedSignal(property):Connect(function()
				numberSpinner[property] = label[property]
			end))
		end

		local minDigits = 0
		local maxDigits = 8
		local function getSpinnerSizeAndDigitCount()
			local TotalSize = 0
			local numOfDigits = 0
			for i, child in numberSpinner.Frame:GetChildren() do
				local name = string.lower(child.Name)
				if name == "digit" then
					TotalSize += child.AbsoluteSize.X
					numOfDigits += 1
				elseif name == "prefix" or name == "suffix" or name == "comma" then
					if child.Text ~= "" then
						TotalSize += child.AbsoluteSize.X
						numOfDigits += 1
					end
				end
			end
			return TotalSize, numOfDigits
		end
		
		local function getLabelParentContainerXSize()
			local firstParent = label.Parent
			local nextParent = firstParent and firstParent.Parent
			if nextParent == nil then
				return 0
			end
			if nextParent.IconImage.Visible == true then
				return numberSpinner.Frame.AbsoluteSize.X + label.Parent.Parent.IconImage.AbsoluteSize.X
			else
				return nextParent.AbsoluteSize.X
			end
		end
		local function getNumberSpinnerXSize()
			return numberSpinner.Frame.AbsoluteSize.X
		end

		local function adjustSize()
			local totalDigitXSize, numOfDigits = getSpinnerSizeAndDigitCount()
			if numOfDigits < 18 then
				self:setLabel(numberSpinner.Value)
			end

			local NumberSpinnerXSize = getNumberSpinnerXSize()

			while totalDigitXSize < NumberSpinnerXSize and self.isDestroyed ~= true do
				task.wait(0.05)
				if numOfDigits > minDigits and numOfDigits < maxDigits then
					numberSpinner.TextSize = label.TextSize
					break
				else
					numberSpinner.TextSize += 1
				end

				NumberSpinnerXSize = getNumberSpinnerXSize()
				totalDigitXSize, numOfDigits = getSpinnerSizeAndDigitCount()
			end

			local labelParentContainerXSize = getLabelParentContainerXSize()
			while totalDigitXSize > labelParentContainerXSize and self.isDestroyed ~= true do
				task.wait(0.05)
				if numOfDigits < maxDigits and numOfDigits > minDigits then
					numberSpinner.TextSize = label.TextSize
					break
				else
					numberSpinner.TextSize -= 1
				end

				labelParentContainerXSize = getLabelParentContainerXSize()
				totalDigitXSize, numOfDigits = getSpinnerSizeAndDigitCount()
			end
		end

		self:addToJanitor(numberSpinner.Frame.ChildAdded:Connect(adjustSize))
		self:addToJanitor(numberSpinner.Frame.ChildRemoved:Connect(adjustSize))
		self:addToJanitor(self.iconAdded:Connect(function()
			task.wait(1)
			adjustSize()
		end))

		self:updateParent()

		-- This corrects text to the size of a normal label
		numberSpinner.Name = "LabelSpinner"
		numberSpinner.Prefix = "$"
		numberSpinner.Commas = true
		numberSpinner.Decimals = 0
		numberSpinner.Duration = 0.25
		numberSpinner.Value = 10
		task.wait(0.2)
		
		if typeof(callback) == "function" then
			callback()
		end
		
	end)
	return self
end



-- DESTROY/CLEANUP
function Icon:destroy()
	if self.isDestroyed then
		return
	end
	self:clearNotices()
	if self.parentIconUID then
		self:leave()
	end
	self.isDestroyed = true
	self.janitor:Destroy()
	Icon.iconRemoved:Fire(self)
end
Icon.Destroy = Icon.destroy

return Icon :: StaticIcon__DARKLUA_TYPE_m
