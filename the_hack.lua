-- Server: ServerScriptService > Script
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextService = game:GetService("TextService")
local evt = ReplicatedStorage:WaitForChild("SetBillboardText")

local function addBillboard(player, character)
    local head = character:WaitForChild("Head")

    local bb = Instance.new("BillboardGui")
    bb.Name = "HeadBillboard"
    bb.Size = UDim2.new(0, 200, 0, 50)
    bb.StudsOffset = Vector3.new(0, 2.5, 0)
    bb.Adornee = head
    bb.AlwaysOnTop = true
    bb.MaxDistance = 100
    bb.Parent = head

    local label = Instance.new("TextLabel")
    label.Name = "Text"
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = player.DisplayName
    label.TextColor3 = Color3.new(1,1,1)
    label.TextStrokeTransparency = 0.5
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
    label.Parent = bb
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        addBillboard(player, character)
    end)
end)

evt.OnServerEvent:Connect(function(player, text)
    local char = player.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    local bb = head and head:FindFirstChild("HeadBillboard")
    local label = bb and bb:FindFirstChild("Text")
    if not label then return end

    -- Optional filtering for public games
    local ok = true
    local filteredText = text
    pcall(function()
        local result = TextService:FilterStringAsync(text, player.UserId)
        filteredText = result and result:GetNonChatStringForBroadcast() or text
    end)

    if ok then
        label.Text = filteredText
    end
end)
