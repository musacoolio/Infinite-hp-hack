local function walkTree(root)
    print(root.Name)
    for _, child in ipairs(root:GetChildren()) do
        walkTree(child)
    end
end

walkTree(workspace)-- ✅ This must come after the function

lobby:Destroy
