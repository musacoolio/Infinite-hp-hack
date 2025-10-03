local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

-- BillboardGui above the player's head
local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "MyBillboard"
billboardGui.Adornee = head
billboardGui.Size = UDim2.new(0, 200, 0, 50)
billboardGui.StudsOffset = Vector3.new(0, 2, 0)
billboardGui.AlwaysOnTop = true
billboardGui.Parent = head

-- TextLabel inside the BillboardGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 0
textLabel.Text = "Hi There!!!"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true
textLabel.TextTransparency = 0
textLabel.Parent = billboardGui

-- GUI elements on screen (stage right)
local screngui = Instance.new("ScreenGui")
screngui.Parent = player:WaitForChild("PlayerGui")

local editlabel = Instance.new("TextBox")
editlabel.Parent = screngui
editlabel.PlaceholderText = "Type your chat..."
editlabel.Size = UDim2.new(0, 512, 0, 60)
editlabel.Position = UDim2.new(1, -512, 0.5, -60)

local buttons = Instance.new("TextButton")
buttons.Text = "Chat!"
buttons.Size = UDim2.new(0, 512, 0, 60)
buttons.Position = UDim2.new(1, -512, 0.5, 10)
buttons.Parent = screngui

-- Button click updates the Billboard text
buttons.MouseButton1Click:Connect(function()
    local newtext = editlabel.Text
    textLabel.Text = newtext
end)


