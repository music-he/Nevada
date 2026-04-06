if game.SoundService:FindFirstChild("MyMusic") then
    game.SoundService.MyMusic:Destroy()
end

local sound = Instance.new("Sound")
sound.Name = "MyMusic"
sound.SoundId = "rbxassetid://85204826212798"
sound.Volume = 3
sound.Looped = true
sound.Parent = game.SoundService

sound.Loaded:Wait()

if sound.TimeLength > 0 then
    sound:Play()
else
    warn("Nhạc lỗi hoặc bị 0:00!")
end
