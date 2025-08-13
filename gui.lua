local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "Germa66Gui"
gui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame", gui)
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 600, 0, 400)
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0

-- Corner Radius
local corner = Instance.new("UICorner", mainFrame)
corner.CornerRadius = UDim.new(0, 12)

-- Title Bar
local titleBar = Instance.new("Frame", mainFrame)
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titleBar.BackgroundTransparency = 1

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Name = "TitleLabel"
titleLabel.Text = "Germa66"
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 24

local closeButton = Instance.new("TextButton", titleBar)
closeButton.Name = "CloseButton"
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 40, 1, 0)
closeButton.Position = UDim2.new(1, -60, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20

local minimizeButton = Instance.new("TextButton", titleBar)
minimizeButton.Name = "MinimizeButton"
minimizeButton.Text = "_"
minimizeButton.Size = UDim2.new(0, 40, 1, 0)
minimizeButton.Position = UDim2.new(1, -580, 0, 0)
minimizeButton.BackgroundTransparency = 1
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 20

-- Menu Frame (Left 1/3)
local menuFrame = Instance.new("Frame", mainFrame)
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0.33, 0, 1, -40)
menuFrame.Position = UDim2.new(0, 0, 0, 40)
menuFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

-- Display Frame (Right 2/3)
local displayFrame = Instance.new("Frame", mainFrame)
displayFrame.Name = "DisplayFrame"
displayFrame.Size = UDim2.new(0.67, 0, 1, -40)
displayFrame.Position = UDim2.new(0.33, 0, 0, 40)
displayFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

-- Round corner for child frames
local titleCorner = Instance.new("UICorner", titleBar)
titleCorner.CornerRadius = UDim.new(0, 12)

-- Automation Content
local automationFrame = Instance.new("Frame", displayFrame)
automationFrame.Name = "AutomationFrame"
automationFrame.Size = UDim2.new(1, 0, 1, 0)
automationFrame.BackgroundTransparency = 1

local automationLabel = Instance.new("TextLabel", automationFrame)
automationLabel.Text = "Automation Panel"
automationLabel.Size = UDim2.new(1, 0, 0, 50)
automationLabel.Position = UDim2.new(0, 0, 0, 10)
automationLabel.BackgroundTransparency = 1
automationLabel.TextColor3 = Color3.new(1, 1, 1)
automationLabel.Font = Enum.Font.SourceSansBold
automationLabel.TextSize = 24

-- Misc Content
local miscFrame = Instance.new("Frame", displayFrame)
miscFrame.Name = "MiscFrame"
miscFrame.Size = UDim2.new(1, 0, 1, 0)
miscFrame.BackgroundTransparency = 1
miscFrame.Visible = false

local miscLabel = Instance.new("TextLabel", miscFrame)
miscLabel.Text = "Misc Panel"
miscLabel.Size = UDim2.new(1, 0, 0, 50)
miscLabel.Position = UDim2.new(0, 0, 0, 10)
miscLabel.BackgroundTransparency = 1
miscLabel.TextColor3 = Color3.new(1, 1, 1)
miscLabel.Font = Enum.Font.SourceSansBold
miscLabel.TextSize = 24

-- About Content
local aboutFrame = Instance.new("Frame", displayFrame)
aboutFrame.Name = "AboutFrame"
aboutFrame.Size = UDim2.new(1, 0, 1, 0)
aboutFrame.BackgroundTransparency = 1
aboutFrame.Visible = false

local aboutLabel = Instance.new("TextLabel", aboutFrame)
aboutLabel.Text = "About Panel"
aboutLabel.Size = UDim2.new(1, 0, 0, 50)
aboutLabel.Position = UDim2.new(0, 0, 0, 10)
aboutLabel.BackgroundTransparency = 1
aboutLabel.TextColor3 = Color3.new(1, 1, 1)
aboutLabel.Font = Enum.Font.SourceSansBold
aboutLabel.TextSize = 24

local menuCorner = Instance.new("UICorner", menuFrame)
menuCorner.CornerRadius = UDim.new(0, 12)

local displayCorner = Instance.new("UICorner", displayFrame)
displayCorner.CornerRadius = UDim.new(0, 12)

-- Menu Buttons
local buttonNames = {"Automation", "Misc", "About"}

for i, name in ipairs(buttonNames) do
    local button = Instance.new("TextButton", menuFrame)
    button.Name = name .. "Button"
    button.Text = name
    button.Size = UDim2.new(1, -20, 0, 40)
    button.Position = UDim2.new(0, 10, 0, (i - 1) * 50 + 10)
    button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18

    local corner = Instance.new("UICorner", button)
    corner.CornerRadius = UDim.new(0, 8)
end

return gui
