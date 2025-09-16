-- for anyone that sees this, this was code given to me and yes its chatgpt but it aint created BY ME i aint bothered to modify ts huzz
-- Godmode Metamethod Hook
local char = game.Players.LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local mt = getrawmetatable(game)
local oldNC = mt.__namecall
local oldNI = mt.__newindex

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local m = getnamecallmethod()
    if self == hum then
        if m == "ChangeState" and select(1, ...) == Enum.HumanoidStateType.Dead then
            return
        end
        if m == "SetStateEnabled" then
            local st, en = ...
            if st == Enum.HumanoidStateType.Dead and en == true then
                return
            end
        end
        if m == "Destroy" then
            return
        end
    end

    if self == char and m == "BreakJoints" then
        return
    end

    return oldNC(self, ...)
end)

mt.__newindex = newcclosure(function(self, k, v)
    if self == hum then
        if k == "Health" and type(v) == "number" and v <= 0 then
            return
        end
        if k == "MaxHealth" and type(v) == "number" and v < hum.MaxHealth then
            return
        end
        if k == "BreakJointsOnDeath" and v == true then
            return
        end
        if k == "Parent" and v == nil then
            return
        end
    end

    return oldNI(self, k, v)
end)
