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
textLabel.BackgroundTransparency = 0
textLabel.Text = "sTOP lAUGHING IDIOT"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true
textLabel.TextTransparency = 1
textLabel.Parent = billboardGui

local editlabel = Instance.new("TextBox")
local screngui = Instance.new("ScreenGui")
screngui.Parent = player:WaitForChild("PlayerGui")
editlabel.Parent = screngui
editlabel.PlaceholderText = "Type your chat..."
editlabel.Size = UDim2.new(0, 512, 0, 60)
editlabel.Position = UDim2.new(0, 0, 0.5, -25)
local buttons = Instance.new("TextButton")
buttons.Text = "Chat!"
buttons.Position = UDim2.new(0, 0, 0.5, -40)
buttons.Parent = screnGui
buttons.MouseButton1Click:Connect(function()
    local newtext = editlabel.Text
    textLabel.Text = newtext
end)




