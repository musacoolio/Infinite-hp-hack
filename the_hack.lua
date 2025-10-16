local backpack = game.Players.LocalPlayer:WaitForChild("Backpack")

local function giveTool(toolName)
    local tool = Instance.new("HopperBin")
    tool.BinType = Enum.BinType[toolName]
    tool.Name = toolName
    tool.Parent = backpack
end

giveTool("Clone")
giveTool("Hammer")
giveTool("Grab")

