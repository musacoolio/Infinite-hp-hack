while true do
    local skibidi = game:WaitForChild("Players")
    local thekoolesthecker = skibidi:FindFirstChild("musahero20")

    if thekoolesthecker and thekoolesthecker.Character then
        local char = thekoolesthecker.Character
        local humanoidia = char:FindFirstChild("Humanoid")

        if humanoidia then
            humanoidia.MaxHealth = 100
            humanoidia.Health = 100
        end
    end

    wait(1) -- Prevents crashing, updates every second
end
