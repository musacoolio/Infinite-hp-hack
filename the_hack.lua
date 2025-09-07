local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local text = Instance.new("TextButton")
text.Parent = gui
text.Size = UDim2.new(0, 300, 0, 50)
text.Position = UDim2.new(0, 0, 0, 0)
text.TextScaled = true
text.Text = "RUN!!!!!!!!!!"


text.MouseButton1Click:Connect(function()
    humanoid.MaxHealth = 200
    humanoid.Health = 200
  end)

