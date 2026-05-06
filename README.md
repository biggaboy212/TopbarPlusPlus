<!-- markdownlint-disable MD033 -->

# TopbarPlusPlus

A patched TopbarPlus for executors. Construct dynamic and intuitive topbar icons. Enhance the appearance and behaviour of these icons with features such as themes, dropdowns and menus.

- [View the Docs](./docs/index.md) *(Original TopbarPlus docs)*

![preview](assets/gallery/comet.png)

## Installation & Usage

There are two main ways to use TopbarPlusPlus

### Downloading a build

You can get a build from our releases page.

[View the latest release](https://github.com/biggaboy212/TopbarPlusPlus/releases/latest)

### Dynamic fetching over HTTP

> This will use `loadstring` and `HttpGetAsync`.

```luau
local function importRelease(owner, repo, version, file)
    local tag = (version == "latest" and "latest/download" or "download/"..version)

    return loadstring(game:HttpGetAsync(("https://github.com/%s/%s/releases/%s/%s"):format(owner, repo, tag, file)), file)()
end

local topbarPP = importRelease("biggaboy212", "TopbarPlusPlus", "latest", "topbarPP.luau")
```

## Star History

<a href="https://www.star-history.com/?repos=biggaboy212%2FTopbarPlusPlus&type=date&legend=top-left">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=biggaboy212/TopbarPlusPlus&type=date&theme=dark&logscale&legend=top-left" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=biggaboy212/TopbarPlusPlus&type=date&logscale&legend=top-left" />
   <img alt="Star History Chart" src="https://api.star-history.com/chart?repos=biggaboy212/TopbarPlusPlus&type=date&logscale&legend=top-left" />
 </picture>
</a>
