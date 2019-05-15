## Description
A WIP roblox module loader, with features to simplify making games.


## How-to-Install
First, import the Engine.rbxmx into the Studio's Workspace.

Seccondly, run this line of code in the Command Bar:

```lua
game:GetService("HttpService").HttpEnabled = true local run = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/StormDirus/DirusEngine/master/loader.lua")) run() 
```

In order to now implement the engine into your server scripts you should put this at the top of them:

```lua
require(game.ServerScriptService.DirusEngine.Get)()
```
