-- GuiLogic.lua
local GuiLogic = {}

function GuiLogic.setup(gui)
    local closeButton = gui:WaitForChild("MainFrame"):WaitForChild("TitleBar"):WaitForChild("CloseButton")
    closeButton.MouseButton1Click:Connect(function()
        gui.Enabled = false
    end)
end

return GuiLogic
