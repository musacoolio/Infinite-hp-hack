local ChatService = require(game:GetService("ServerScriptService"):WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))
local playerService = game:GetService("Players")
local lcplayer = playerService.LocalPlayer

ChatService.SpeakerAdded:Connect(function(speakerName)
    local speaker = ChatService:GetSpeaker(speakerName)
    speaker.Spoke:Connect(function(message, channel)
        local spokerman = speaker:GetPlayer().Character
        if not spokerman.Parent or not spokerman then return end
        bill = Instance.new("BillboardGui")
        bill.Size = UDim2.new(0, 300, 0, 200)
        bill.Parent = spokerman
        bill.Adornee = spokerman.Head
        bill.StudsOffset = Vector3.new(0, 3, 0)
        text = Instance.new("TextLabel")
        text.Parent = bill
        text.Text = message
        task.wait(5)
        text:Destroy()
        bill:Destroy()
    end)
end)

