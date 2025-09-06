local gui = Instance.new("ScreenGUI")
gui.Parent = game.StarterGui
local text = Instance.new("Text")
text.Parent = gui
text.Text = "if u can see this, my script worked!>!>?!?!?!>!>>!!1111!!"

local skibidi = game:WaitForChild("Players")
local thekoolesthecker = skibidi:WaitForChild("musahero20")

local thekoolestheckerschar = thekoolesthecker.Character or thekoolesthecker.CharacterAdded:Wait()
local humanoidia = thekoolestheckerschar:WaitForChild("Humanoid")

humanoidia.MaxHealth = math.huge
humanoidia.Health = math.huge
