local InsertService = game:GetService("InsertService")
local assetId = 2791914892 -- Replace with actual model ID

local success, model = pcall(function()
    return InsertService:LoadAsset(assetId)
end)

if success and model then
    model.Parent = game:GetService("ReplicatedStorage")
end


while true do
    local part = model.clone()
    part.Parent = workspace
    wait(0.00000000000000000000000000000001)
end
