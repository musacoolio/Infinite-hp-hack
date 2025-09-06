while true do
local skibidi = game:WaitForChild("Players")
local thekoolesthecker = skibidi:WaitForChild("musahero20")

local thekoolestheckerschar = thekoolesthecker.Character or thekoolesthecker.CharacterAdded:Wait()
local humanoidia = thekoolestheckerschar:WaitForChild("Humanoid")

humanoidia.MaxHealth = 100
humanoidia.Health = 100
  wait(0.1)
end
