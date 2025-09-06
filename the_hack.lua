local skibidi = game:WaitForChild("Players")
local thekoolesthecker = skibidi:WaitForChild("musahero20")
local thekoolestheckerschar = thekoolesthecker.Character or thekoolesthecker.CharacterAdded:Wait()
local humanoidia = thekoolestheckerschar:WaitForChild("Humanoid")
local gui = Instance.new("ScreenGui")
gui.Parent = thekoolesthecker.PlayerGui
local text = Instance.new("TextLabel")
text.Parent = gui
text.Text = "if u can see this, my script worked!>!>?!?!?!>!>>!!1111!!"



humanoidia.MaxHealth = math.huge
humanoidia.Health = math.huge
