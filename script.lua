_G.autoTap = true
_G.autoRebirth = true
_G.autoHatch = true

local remotePath = game:GetService("ReplicatedStorage").Events

spawn(function()
    while wait() do
        if not _G.autoTap then break end

        local args = {[1] = "Main"}
        remotePath.Tap:FireServer(unpack(args))
    end
end)

spawn(function()
    while wait() do
        if not _G.autoRebirth then break end

        local args = {[1] = 1}
        remotePath.Rebirth:FireServer(unpack(args))
    end
end)

spawn(function()
    while wait() do
        if not _G.autoHatch then break end

        local args = {[1] = {}, [2] = "Jungle Egg", [3] = 1}
        remotePath.HatchEgg:InvokeServer(unpack(args))
    end
end)
