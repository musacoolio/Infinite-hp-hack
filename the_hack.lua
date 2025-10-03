local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "MyBillboard"
billboardGui.Adornee = head
billboardGui.Size = UDim2.new(0, 200, 0, 50)
billboardGui.StudsOffset = Vector3.new(0, 2, 0)
billboardGui.AlwaysOnTop = true
billboardGui.Parent = head

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Testing, testing!"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true
textLabel.Parent = billboardGui
