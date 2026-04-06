local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://119038923218556"
sound.Volume = 0.5
sound.Looped = true
sound.Parent = workspace
sound:Play()

-- Tạo GUI
local gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0.5, -100, 1, -70)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

-- Nút giảm
local btnDown = Instance.new("TextButton", frame)
btnDown.Size = UDim2.new(0, 50, 1, 0)
btnDown.Position = UDim2.new(0, 0, 0, 0)
btnDown.Text = "-"
btnDown.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
btnDown.TextColor3 = Color3.new(1,1,1)

-- Hiển thị âm lượng
local label = Instance.new("TextLabel", frame)
label.Size = UDim2.new(0, 100, 1, 0)
label.Position = UDim2.new(0, 50, 0, 0)
label.Text = "Vol: 50%"
label.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
label.TextColor3 = Color3.new(1,1,1)

-- Nút tăng
local btnUp = Instance.new("TextButton", frame)
btnUp.Size = UDim2.new(0, 50, 1, 0)
btnUp.Position = UDim2.new(0, 150, 0, 0)
btnUp.Text = "+"
btnUp.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
btnUp.TextColor3 = Color3.new(1,1,1)

-- Xử lý nút
btnUp.MouseButton1Click:Connect(function()
    sound.Volume = math.min(sound.Volume + 0.1, 1)
    label.Text = "Vol: " .. math.floor(sound.Volume * 100) .. "%"
end)

btnDown.MouseButton1Click:Connect(function()
    sound.Volume = math.max(sound.Volume - 0.1, 0)
    label.Text = "Vol: " .. math.floor(sound.Volume * 100) .. "%"
end)
