-- main.lua
local GuiBuilder = require(script.Parent:WaitForChild("gui"))
local GuiLogic = require(script.Parent:WaitForChild("GuiLogic"))

local gui = GuiBuilder
GuiLogic.setup(gui)
