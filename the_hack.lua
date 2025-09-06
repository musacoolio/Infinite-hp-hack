while true do
    local players = game:WaitForChild("Players")
    local user = players:FindFirstChild("musahero20")

    if user and user.Character then
        local char = user.Character
        local huma = char:FindFirstChild("Humanoid")

        if huma then
            huma.MaxHealth = math.huge
            huma.Health = math.huge
        end
    end

    wait(1) -- Prevent shrine meltdown
end
