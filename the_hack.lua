-- Minimal working billboard + GUI setter (local-only)

local Players = game:GetService("Players")
local CAS = game:GetService("ContextActionService")
local lp = Players.LocalPlayer

local function ensureBillboard(char)
    local head = char:WaitForChild("Head")
    local bb = head:FindFirstChild("HeadBillboard")
    if not bb then
        bb = Instance.new("BillboardGui")
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
        label.Text = "Press T to set"
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextStrokeTransparency = 0.5
        label.TextScaled = true
        label.Font = Enum.Font.SourceSansBold
        label.Parent = bb
    end
end

local function ensureGui()
    local pg = lp:WaitForChild("PlayerGui")
    local screen = pg:FindFirstChild("BillboardSetter")
    if not screen then
        screen = Instance.new("ScreenGui")
        screen.Name = "BillboardSetter"
        screen.ResetOnSpawn = false
        screen.IgnoreGuiInset = true
        screen.Parent = pg

        local box = Instance.new("TextBox")
        box.Name = "Input"
        box.Size = UDim2.new(0, 300, 0, 40)
        box.Position = UDim2.new(0, 20, 0, 20)
        box.PlaceholderText = "Type text, press Enter"
        box.TextScaled = true
        box.ClearTextOnFocus = false
        box.BackgroundColor3 = Color3.fromRGB(25,25,25)
        box.TextColor3 = Color3.new(1,1,1)
        box.Parent = screen

        box.FocusLost:Connect(function(enterPressed)
            if enterPressed and lp.Character then
                local head = lp.Character:FindFirstChild("Head")
                local bb = head and head:FindFirstChild("HeadBillboard")
                local label = bb and bb:FindFirstChild("Text")
                if label then
                    label.Text = box.Text ~= "" and box.Text or label.Text
                end
            end
        end)

        -- Press T to focus the box
        CAS:BindAction("OpenBillboardBox", function(_, state)
            if state == Enum.UserInputState.Begin then
                box:CaptureFocus()
            end
        end, true, Enum.KeyCode.T)
    end
end

lp.CharacterAdded:Connect(function(char)
    ensureBillboard(char)
    ensureGui()
end)

if lp.Character then
    ensureBillboard(lp.Character)
    ensureGui()
end
