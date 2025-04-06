local Services = setmetatable({}, {
    __index = function(_, serviceName)
        return cloneref(game:GetService(serviceName))
    end
})

local Players = Services.Players
local Player = Players.LocalPlayer
local IsUnder13 = Player:GetUnder13()
local ActualUI, KeyValidated
local API = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
API.script_id = "07ac396fc8f43891e2385a4b648b8c34"

if getgenv().OptionsSettings ~= nil then
    return Player.Kick(Player, "This version is outdated. Join vaultcord.win/synergy, then to the scripts channel to get the script")
end

if IsUnder13 then
    return Player.Kick(Player, "You are using a account that is younger than 13. Please use a account that is older than 13 to continue.")
end

if isfile("BetterBypasser/Configurations/SavedKey.txt") then
    local HasValidSavedKey = API.check_key(readfile("BetterBypasser/Configurations/SavedKey.txt"))
    if HasValidSavedKey.code == "KEY_VALID" then
        KeyValidated = true
        script_key = readfile("BetterBypasser/Configurations/SavedKey.txt")
    else
        delfile("BetterBypasser/Configurations/SavedKey.txt")
    end
end

if not script_key and not KeyValidated then
    local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/refs/heads/main/BetterBypasser/resources/UI.lua"))()
    
    local KeyLibrary = UI:CreateLibrary({
        Name = "",
        Icon = "rbxassetid://16503154592"
    })
    
    local ActualUI = UI:GetUIInstance()
    local KeyInputted
    
    local MainKey = KeyLibrary:CreateTab("Key", "rbxassetid://10723416652")
    local KeySection = MainKey:CreateSection("Key System", "Foldable")
    
    KeySection:CreateParagraph({
        Title = "Guidance",
        Description = "To get started, click the '<b>Copy key link</b>' button and put it in your browser. You will need to follow the instructions given by the key system.",
    })
    
    KeySection:CreateTextbox({
        Name = "Key:",
        PlaceholderText = "Type here..",
        RemoveTextAfterFocusLost = false,
        Callback = function(Input)
            KeyInputted = Input:gsub("%c", ""):gsub("%s+", "")
        end
    })
    
    KeySection:CreateButton({
        Name = "Check Key",
        Callback = function()
            local IsValid = API.check_key(KeyInputted)
            if IsValid.code == "KEY_VALID" then
                writefile("BetterBypasser/Configurations/SavedKey.txt", KeyInputted)
                script_key = KeyInputted
                ActualUI.Parent = nil
                KeyValidated = true
            else
                UI:Notify("Warning", {
                    Title = "Invalid key",
                    Content = "The key you entered is not valid. Ensure that it is correctly typed and try again.",
                    Duration = 5,
                    Image = "rbxassetid://10723374276"
                })
            end
        end
    })
    
    KeySection:CreateButton({
        Name = "Copy key link",
        Icon = "rbxassetid://10709812159",
        Callback = function()
            setclipboard("https://ads.luarmor.net/get_key?for=BetterBypasser_Key_System-GmyELoTdTHTK")
            UI:Notify("Normal", {
                Title = "Clipboard set",
                Content = "Copied the key link to the clipboard.",
                Duration = 5,
                Image = "rbxassetid://10709790644"
            })
        end
    })
    
    ActualUI.Enabled = true
else
    KeyValidated = true
end

repeat task.wait() until KeyValidated

if ActualUI then
    ActualUI.Parent = nil
end

getgenv().script_key = script_key
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/07ac396fc8f43891e2385a4b648b8c34.lua"))()
getgenv().script_key = nil
