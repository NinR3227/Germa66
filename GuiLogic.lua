local GuiLogic = {}

function GuiLogic.setup(gui)
    local mainFrame = gui:WaitForChild("MainFrame")
    local titleBar = mainFrame:WaitForChild("TitleBar")
    local closeButton = titleBar:WaitForChild("CloseButton")
    local minimizeButton = titleBar:WaitForChild("MinimizeButton")
    local menuFrame = mainFrame:WaitForChild("MenuFrame")
    local displayFrame = mainFrame:WaitForChild("DisplayFrame")

    -- Close logic
    closeButton.MouseButton1Click:Connect(function()
        gui.Enabled = false
    end)

    -- Minimize logic
    local minimized = false
    minimizeButton.MouseButton1Click:Connect(function()
        minimized = not minimized

        if minimized then
            mainFrame.Size = UDim2.new(0, 300, 0, 40)
            menuFrame.Visible = false
            displayFrame.Visible = false
        else
            mainFrame.Size = UDim2.new(0, 600, 0, 400)
            menuFrame.Visible = true
            displayFrame.Visible = true
        end
    end)

	local function showFrame(frameName)
    for _, frame in pairs(gui.MainFrame.DisplayFrame:GetChildren()) do
        if frame:IsA("Frame") then
            frame.Visible = frame.Name == frameName
        end
    end
end

-- Button connections
gui.MainFrame.MenuFrame["AutomationButton"].MouseButton1Click:Connect(function()
    showFrame("AutomationFrame")
end)

gui.MainFrame.MenuFrame["MiscButton"].MouseButton1Click:Connect(function()
    showFrame("MiscFrame")
end)

gui.MainFrame.MenuFrame["AboutButton"].MouseButton1Click:Connect(function()
    showFrame("AboutFrame")
end)
end

return GuiLogic
