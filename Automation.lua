local Automation = {}



function Automation.init(frame)
    frame:ClearAllChildren()
	 
	 local layout = Instance.new("UIListLayout")
	 layout.Padding = UDim.new(0, 6)
	 layout.SortOrder = Enum.SortOrder.LayoutOrder
	 layout.Parent = frame
	
	 local padding = Instance.new("UIPadding")
	 padding.PaddingTop = UDim.new(0, 10)
	 padding.PaddingBottom = UDim.new(0, 10)
	 padding.PaddingLeft = UDim.new(0, 10)
	 padding.PaddingRight = UDim.new(0, 10)
	 padding.Parent = frame
	
	 -- Line 15: Add dropdown mockup
	 local dropdown = Instance.new("Frame")
	 dropdown.Size = UDim2.new(1, 0, 0, 30)
	 dropdown.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	 dropdown.Name = "ItemDropdown"
	 dropdown.Parent = frame

	 local dropdownLabel = Instance.new("TextLabel")
	 dropdownLabel.Text = "Select Item ▼"
	 dropdownLabel.Size = UDim2.new(1, 0, 1, 0)
	 dropdownLabel.TextColor3 = Color3.new(1, 1, 1)
	 dropdownLabel.BackgroundTransparency = 1
	 dropdownLabel.Parent = dropdown
	 
	 local optionContainer = Instance.new("Frame")
	 optionContainer.Name = "OptionContainer"
	 optionContainer.Size = UDim2.new(1, 0, 0, #itemList * 30)
	 optionContainer.Position = UDim2.new(0, 0, 0, 30)
	 optionContainer.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	 optionContainer.Visible = false
	 optionContainer.Parent = frame

	 local optionLayout = Instance.new("UIListLayout", optionContainer)
	 optionLayout.Padding = UDim.new(0, 2)
	 optionLayout.SortOrder = Enum.SortOrder.LayoutOrder

	 local itemList = {"Item A", "Item B", "Item C"} -- Temporary list
	 local expanded = false

	 dropdownLabel.MouseButton1Click:Connect(function()
    	 expanded = not expanded
    	 optionContainer.Visible = expanded

    	 if expanded and #optionContainer:GetChildren() == 0 then
    	     for _, item in ipairs(itemList) do
    	         local option = Instance.new("TextButton")
    	         option.Text = item
    	         option.Size = UDim2.new(1, 0, 0, 30)
    	         option.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    	         option.TextColor3 = Color3.new(1, 1, 1)
    	         option.Parent = optionContainer
	
					option.MouseButton1Click:Connect(function()
    					dropdownLabel.Text = item .. " ▼"
    					optionContainer.Visible = false
    					expanded = false
    					print("Selected:", item)
					end)
    	     end
    	 end
	 end)

    local categories = {"Seeds", "Gears", "Eggs"}

    for i, category in ipairs(categories) do
        local section = Instance.new("Frame", frame)
        section.Name = category .. "Section"
        section.Size = UDim2.new(1, -20, 0, 100)
        section.Position = UDim2.new(0, 10, 0, 0)
		  section.AutomaticSize = Enum.AutomaticSize.Y
        section.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        section.BorderSizePixel = 0
        Instance.new("UICorner", section).CornerRadius = UDim.new(0, 8)

        -- Label
        local label = Instance.new("TextLabel", section)
        label.Text = category
        label.Size = UDim2.new(0, 100, 0, 30)
        label.Position = UDim2.new(0, 10, 0, 10)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.new(1, 1, 1)
        label.Font = Enum.Font.SourceSansBold
        label.TextSize = 20

        -- Dropdown placeholder
        local dropdown = Instance.new("TextButton", section)
        dropdown.Name = category .. "Dropdown"
        dropdown.Text = "Select Item"
        dropdown.Size = UDim2.new(0, 200, 0, 30)
        dropdown.Position = UDim2.new(0, 120, 0, 10)
        dropdown.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        dropdown.TextColor3 = Color3.new(1, 1, 1)
        dropdown.Font = Enum.Font.SourceSans
        dropdown.TextSize = 18
        Instance.new("UICorner", dropdown).CornerRadius = UDim.new(0, 6)

        -- Buy Selected Button
        local buySelected = Instance.new("TextButton", section)
        buySelected.Name = category .. "BuySelected"
        buySelected.Text = "Buy Selected"
        buySelected.Size = UDim2.new(0, 120, 0, 30)
        buySelected.Position = UDim2.new(0, 330, 0, 10)
        buySelected.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        buySelected.TextColor3 = Color3.new(1, 1, 1)
        buySelected.Font = Enum.Font.SourceSans
        buySelected.TextSize = 18
        Instance.new("UICorner", buySelected).CornerRadius = UDim.new(0, 6)

        -- Buy All Button
        local buyAll = Instance.new("TextButton", section)
        buyAll.Name = category .. "BuyAll"
        buyAll.Text = "Buy All"
        buyAll.Size = UDim2.new(0, 120, 0, 30)
        buyAll.Position = UDim2.new(0, 460, 0, 10)
        buyAll.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
        buyAll.TextColor3 = Color3.new(1, 1, 1)
        buyAll.Font = Enum.Font.SourceSans
        buyAll.TextSize = 18
        Instance.new("UICorner", buyAll).CornerRadius = UDim.new(0, 6)
    end
end

return Automation
