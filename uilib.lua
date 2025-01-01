local module = {}

function module:CreateWindow(settings)
	local main = Instance.new("ScreenGui")
	main.IgnoreGuiInset = false
	main.ResetOnSpawn = true
	main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main.Name = "main"
	main.Parent = game.CoreGui

	local window = Instance.new("Frame")
	window.BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)
	window.BorderColor3 = Color3.new(0, 0, 0)
	window.BorderSizePixel = 0
	window.Position = UDim2.new(0, 429, 0, 212)
	window.Size = UDim2.new(0, 479, 0, 25)
	window.Visible = true
	window.Name = "window"
	window.Parent = main

	local uicorner = Instance.new("UICorner")
	uicorner.Parent = window

	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.BorderColor3 = Color3.new(0, 0, 0)
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(0, 0, 0, 15)
	frame.Size = UDim2.new(0, 479, 0, 383)
	frame.Visible = true
	frame.Name = "frame"
	frame.Parent = window

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.Parent = frame

	local line = Instance.new("Frame")
	line.BackgroundColor3 = Color3.new(0.0235294, 0.0705882, 0)
	line.BorderColor3 = Color3.new(0, 0, 0)
	line.BorderSizePixel = 0
	line.Position = UDim2.new(0, 0, 0, 9)
	line.Size = UDim2.new(0, 479, 0, 1)
	line.Visible = true
	line.Name = "line"
	line.Parent = frame

	local uigradient = Instance.new("UIGradient")
	uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.12549, 0.12549, 0.12549)), ColorSequenceKeypoint.new(1, Color3.new(0.0235294, 0.0705882, 0))})
	uigradient.Rotation = 90
	uigradient.Parent = frame
	uigradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.01), NumberSequenceKeypoint.new(0.10, 0.00), NumberSequenceKeypoint.new(1.00, 0.00), NumberSequenceKeypoint.new(1.00, 0.09)}

	local tabs = Instance.new("ScrollingFrame")
	tabs.CanvasSize = UDim2.new(2, 0, 0, 0)
	tabs.ScrollBarImageColor3 = Color3.new(0, 0, 0)
	tabs.ScrollBarThickness = 0
	tabs.ScrollingDirection = Enum.ScrollingDirection.X
	tabs.Active = true
	tabs.BackgroundColor3 = Color3.new(1, 1, 1)
	tabs.BackgroundTransparency = 1
	tabs.BorderColor3 = Color3.new(0, 0, 0)
	tabs.BorderSizePixel = 0
	tabs.Position = UDim2.new(0, 9, 0, 19)
	tabs.Size = UDim2.new(0, 459, 0, 30)
	tabs.Visible = true
	tabs.Name = "tabs"
	tabs.Parent = frame

	local uilist_layout = Instance.new("UIListLayout")
	uilist_layout.ItemLineAlignment = Enum.ItemLineAlignment.Center
	uilist_layout.Padding = UDim.new(0, 4)
	uilist_layout.FillDirection = Enum.FillDirection.Horizontal
	uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
	uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Center
	uilist_layout.Parent = tabs
	
	local name = Instance.new("TextLabel")
	name.Font = Enum.Font.Unknown
	name.Text = settings.Name
	name.TextColor3 = Color3.new(1, 1, 1)
	name.TextScaled = true
	name.TextSize = 20
	name.TextWrapped = true
	name.TextXAlignment = Enum.TextXAlignment.Left
	name.BackgroundColor3 = Color3.new(1, 1, 1)
	name.BackgroundTransparency = 1
	name.BorderColor3 = Color3.new(0, 0, 0)
	name.BorderSizePixel = 0
	name.Position = UDim2.new(0, 10, 0, 3)
	name.Size = UDim2.new(0, 436, 0, 18)
	name.Visible = true
	name.ZIndex = 2
	name.Name = "name"
	name.Parent = window

	local uitext_size_constraint_3 = Instance.new("UITextSizeConstraint")
	uitext_size_constraint_3.MaxTextSize = 20
	uitext_size_constraint_3.Parent = name

	local close = Instance.new("ImageButton")
	close.Image = "rbxassetid://74069350054102"
	close.BackgroundColor3 = Color3.new(1, 1, 1)
	close.BackgroundTransparency = 1
	close.BorderColor3 = Color3.new(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0, 441, 0, -2)
	close.Size = UDim2.new(0, 29, 0, 30)
	close.Visible = true
	close.Name = "close"
	close.Parent = window
	
	local open = true
	
	close.MouseButton1Down:Connect(function()
		if open == true then frame.Visible = false; open = false elseif open == false then frame.Visible = true; open = true end
	end)
end

return module
