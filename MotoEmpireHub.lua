-- MOTO EMPIRE HUB
-- Safe GUI for Roblox Studio

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "MotoEmpireHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 200)
frame.Position = UDim2.new(0.5, -130, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
title.Text = "MOTO EMPIRE HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 18
title.Parent = frame

local function createButton(name, y, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 220, 0, 35)
    button.Position = UDim2.new(0, 20, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = name
    button.Parent = frame
    button.MouseButton1Click:Connect(callback)
end

createButton("CLOSE MENU", 65, function()
    frame.Visible = false
end)

createButton("CAMERA RESET", 110, function()
    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
end)

createButton("REOPEN MENU", 155, function()
    frame.Visible = true
end)