local run = game:GetService("RunService")
local player = game:GetService("Players")
local localplayer = player.LocalPlayer

run.HeartBeat:Connect(function()
        char = localplayer.Character
        hum = char:WaitForChild("Humanoid")
        hum.MaxHealth = math.huge
        hum.Health = math.huge - 1
    end

