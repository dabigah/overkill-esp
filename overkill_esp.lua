local gui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local frame = Instance.new("Frame")
frame.Name = "OverkillUI"
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
gui:AddChild(frame)

-- Title Label
local title = Instance.new("TextLabel")
title.Text = "Overkill ESP & Aimbot"
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.Size = UDim2.new(0, 280, 0, 30)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
frame:AddChild(title)

-- ESP Options
local espGroup = Instance.new("Frame")
espGroup.Name = "ESPGroup"
espGroup.Size = UDim2.new(0, 280, 0, 100)
espGroup.Position = UDim2.new(0, 10, 0, 50)
espGroup.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
espGroup.BorderSizePixel = 0
frame:AddChild(espGroup)

local espLabel = Instance.new("TextLabel")
espLabel.Text = "ESP Settings"
espLabel.Font = Enum.Font.SourceSansBold
espLabel.TextSize = 14
espLabel.Size = UDim2.new(0, 280, 0, 20)
espLabel.Position = UDim2.new(0, 0, 0, 0)
espLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
espLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
espGroup:AddChild(espLabel)

-- ESP Toggle Button
local espToggle = Instance.new("TextButton")
espToggle.Text = "Toggle ESP (B)"
espToggle.Font = Enum.Font.SourceSansBold
espToggle.TextSize = 12
espToggle.Size = UDim2.new(0, 100, 0, 30)
espToggle.Position = UDim2.new(0, 10, 0, 30)
espToggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
espToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
espToggle.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    espToggle.Text = "ESP: " .. tostring(espEnabled)
end)
espGroup:AddChild(espToggle)

-- Box Style Dropdown
local boxStyle = Instance.new("TextButton")
boxStyle.Text = "Box Style"
boxStyle.Font = Enum.Font.SourceSansBold
boxStyle.TextSize = 12
boxStyle.Size = UDim2.new(0, 100, 0, 30)
boxStyle.Position = UDim2.new(0, 10, 0, 70)
boxStyle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
boxStyle.TextColor3 = Color3.fromRGB(255, 255, 255)
boxStyle.MouseButton1Click:Connect(function()
    local styles = {"Outline", "Filled", "Both"}
    local selected = game:GetService("UserInputService"):GetMouse().Position
    local menu = Instance.new("Frame")
    menu.Size = UDim2.new(0, 100, 0, 90)
    menu.Position = UDim2.new(0, selected.X, 0, selected.Y)
    menu.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    menu.BorderSizePixel = 1
    menu.Parent = frame
    
    for i, style in ipairs(styles) do
        local btn = Instance.new("TextButton")
        btn.Text = style
        btn.Font = Enum.Font.SourceSansBold
        btn.TextSize = 12
        btn.Size = UDim2.new(0, 100, 0, 30)
        btn.Position = UDim2.new(0, 0, 0, (i-1)*30)
        btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.MouseButton1Click:Connect(function()
            boxType = style
            boxStyle.Text = "Box: " .. style
            menu:Destroy()
        end)
        menu:AddChild(btn)
    end
end)
espGroup:AddChild(boxStyle)

-- Aimbot Options
local aimbotGroup = Instance.new("Frame")
aimbotGroup.Name = "AimbotGroup"
aimbotGroup.Size = UDim2.new(0, 280, 0, 100)
aimbotGroup.Position = UDim2.new(0, 10, 0, 160)
aimbotGroup.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
aimbotGroup.BorderSizePixel = 0
frame:AddChild(aimbotGroup)

local aimbotLabel = Instance.new("TextLabel")
aimbotLabel.Text = "Aimbot Settings"
aimbotLabel.Font = Enum.Font.SourceSansBold
aimbotLabel.TextSize = 14
aimbotLabel.Size = UDim2.new(0, 280, 0, 20)
aimbotLabel.Position = UDim2.new(0, 0, 0, 0)
aimbotLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
aimbotLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbotGroup:AddChild(aimbotLabel)

-- Aimbot Toggle Button
local aimbotToggle = Instance.new("TextButton")
aimbotToggle.Text = "Toggle Aimbot (V)"
aimbotToggle.Font = Enum.Font.SourceSansBold
aimbotToggle.TextSize = 12
aimbotToggle.Size = UDim2.new(0, 100, 0, 30)
aimbotToggle.Position = UDim2.new(0, 10, 0, 30)
aimbotToggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
aimbotToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbotToggle.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    aimbotToggle.Text = "Aimbot: " .. tostring(aimbotEnabled)
end)
aimbotGroup:AddChild(aimbotToggle)

-- Sensitivity Slider
local sensLabel = Instance.new("TextLabel")
sensLabel.Text = "Sensitivity: 5"
sensLabel.Font = Enum.Font.SourceSansBold
sensLabel.TextSize = 12
sensLabel.Size = UDim2.new(0, 100, 0, 20)
sensLabel.Position = UDim2.new(0, 10, 0, 70)
sensLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
sensLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbotGroup:AddChild(sensLabel)

local sensSlider = Instance.new("Slider")
sensSlider.Size = UDim2.new(0, 100, 0, 20)
sensSlider.Position = UDim2.new(0, 10, 0, 90)
sensSlider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
sensSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
sensSlider.MouseButton1Down:Connect(function()
    local pos = game:GetService("UserInputService"):GetMouse().Position
    local diff = math.abs(pos.X - sensSlider.AbsolutePosition.X)
    local value = math.clamp(diff / sensSlider.AbsoluteSize.X * 10, 1, 10)
    sensitivity = value
    sensLabel.Text = "Sensitivity: " .. value
end)
aimbotGroup:AddChild(sensSlider)

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Text = "Close"
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 12
closeBtn.Size = UDim2.new(0, 60, 0, 30)
closeBtn.Position = UDim2.new(0, 10, 0, 270)
closeBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.MouseButton1Click:Connect(function()
    frame:Destroy()
end)
frame:AddChild(closeBtn)

-- Key Bindings
local function bindKey(key, func)
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode[key] then
            func()
        end
    end)
end

bindKey("B", function()
    espEnabled = not espEnabled
    espToggle.Text = "ESP: " .. tostring(espEnabled)
end)

bindKey("V", function()
    aimbotEnabled = not aimbotEnabled
    aimbotToggle.Text = "Aimbot: " .. tostring(aimbotEnabled)
end)

-- Initialize variables
local espEnabled = false
local aimbotEnabled = false
local boxType = "Outline"
local sensitivity = 5
