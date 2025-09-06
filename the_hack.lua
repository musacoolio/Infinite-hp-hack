local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local text = Instance.new("TextLabel")
text.Parent = gui
text.Size = UDim2.new(0, 300, 0, 50)
text.Position = UDim2.new(0.5, -150, 0.1, 0)
text.TextScaled = true
text.Text = "if u can see this, my script worked!>!>?!?!?!>!>>!!1111!!"
while true do
humanoid.MaxHealth = 100
humanoid.Health = 100
end
