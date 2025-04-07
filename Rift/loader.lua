-- i deserve a world record for the shittiest code :pray:

local LibraryRepository = "https://raw.githubusercontent.com/synnyyy/Obsidian/refs/heads/main"
local Libraries = {
	Library = LibraryRepository .. "/Library.lua",
	Information = "https://raw.githubusercontent.com/Synergy-Networks/products/refs/heads/main/Rift/Assets/Information.lua",
    API = "https://sdkapi-public.luarmor.net/library.lua"
}
local KeyValidated = false

local Total = 3
local Completed = 0

for Name, Url in next, Libraries do
	task.spawn(function()
		local Content = game:HttpGet(Url)
		Libraries[Name] = loadstring(Content)()
		Completed = Completed + 1
	end)
end

repeat
	task.wait()
until Completed == Total

if game.PlaceId == 16732694052 then
    Libraries.API.script_id = "9def910837a9eb687d5d76eabec435a5"
elseif game.PlaceId == 72907489978215 then
    Libraries.API.script_id = "1c57708a6733fcdac89be981d028aebc"
elseif game.PlaceId == 18687417158 then
    Libraries.API.script_id = "296d23036fbb1af463d3ad03f08a67a4"
else
    game.Players.LocalPlayer:Kick("Rift does not support this game.")
end

if isfile("RiftAssets/SavedKey.txt") then
	local HasValidSavedKey = Libraries.API.check_key(readfile("RiftAssets/SavedKey.txt"))
    if HasValidSavedKey.code == "KEY_VALID" then
		KeyValidated = true
        script_key = readfile("RiftAssets/SavedKey.txt")
	else
		delfile("RiftAssets/SavedKey.txt")
	end
end

if not KeyValidated then
    local Window = Libraries.Library:CreateWindow({
        Title = "Rift",
        Icon = getcustomasset("RiftAssets/Logo.png"),
        Footer = "Key System · " .. Libraries.Information.VERSION .. " · vaultcord.win/synergy",
        NotifySide = "Left",
        ShowCustomCursor = true,
        ForceCheckbox = false,
        NotifyOnError = true,
    })
    local Tabs = {
        Key = Window:AddKeyTab("Key System"),
        Guide = Window:AddTab("Guide", "heart-handshake"),
    }
    local GuideSection = Tabs.Guide:AddLeftGroupbox("Guide")
    local Games = Tabs.Guide:AddLeftGroupbox("Games Supported")
    local FAQSection = Tabs.Guide:AddRightGroupbox("FAQ / Issues")
    Tabs.Key:AddLabel({
        Text = "To copy the key link, go to the Guide section.\nOnce you've got your key, paste it into the box below and click Execute",
        DoesWrap = true,
        Size = 16,
    })
    Tabs.Key:AddKeyBox(function(_, ReceivedKey)
        if Libraries.API.check_key(ReceivedKey).code == "KEY_VALID" then
            script_key = ReceivedKey
            writefile("RiftAssets/SavedKey.txt", ReceivedKey)
            KeyValidated = true
        else
            Libraries.Library:Notify({
                Title = string.format('<font color="rgb(%d, %d, %d)">◆ Invalid key</font>', 
                    Libraries.Library.Scheme.AccentColor.R * 255, 
                    Libraries.Library.Scheme.AccentColor.G * 255, 
                    Libraries.Library.Scheme.AccentColor.B * 255
                ),
                Description = "This key is not valid. Please try again.",
                Time = 5,
            }) 
        end
    end)
    local GuideSteps = {
        "Click the button below to get your key link.",
        "Paste the link into your browser to access the key generation page.",
        "Complete the Lootlabs offers by selecting tasks and waiting for the required time.",
        "If popups appear, close them to continue.",
        "Return to the Key System and submit your generated key."
    }
    for Index, Step in next, GuideSteps do
        GuideSection:AddLabel(string.format('<b><font color="rgb(%d, %d, %d)">%d)</font></b> %s',
            Libraries.Library.Scheme.AccentColor.R * 255,
            Libraries.Library.Scheme.AccentColor.G * 255,
            Libraries.Library.Scheme.AccentColor.B * 255,
            Index, Step
        ), true)
    end
    local GamesSupported = {
        [1] = "Fisch",
        [2] = "Forsaken"
    }
    for Index, Step in next, GamesSupported do
        Games:AddLabel(string.format('<b><font color="rgb(%d, %d, %d)">%d)</font></b> %s',
            Libraries.Library.Scheme.AccentColor.R * 255,
            Libraries.Library.Scheme.AccentColor.G * 255,
            Libraries.Library.Scheme.AccentColor.B * 255,
            Index, Step
        ), true)
    end
    GuideSection:AddButton("Copy Key Link", function()
        setclipboard("https://ads.luarmor.net/get_key?for=Rift-DvnVpWgEvHMb")
        Libraries.Library:Notify({
            Title = string.format('<font color="rgb(%d, %d, %d)">◆ Copied to clipboard</font>', 
                Libraries.Library.Scheme.AccentColor.R * 255, 
                Libraries.Library.Scheme.AccentColor.G * 255, 
                Libraries.Library.Scheme.AccentColor.B * 255
            ),
            Description = "Paste the key link into your browser of choice.",
            Time = 5,
        }) 
    end)
    local FAQEntries = {
        {
            "◆ The page never loads!",
            {
                "Switch to a browser like Google Chrome.",
                "Disable firewalls, VPN/proxy services, or antiviruses."
            }
        },
        {
            "◆ The tasks are never complete.",
            {
                "Disable any ad blockers such as UBlock Origin.",
                "Refresh the page and try again."
            }
        },
        {
            "◆ My key is invalid.",
            {
                "Ensure that there are no whitespaces in the key inputted.",
                "Keys generated by other people cannot be used by you!"
            }
        },
        {
            "◆ Lifetime Keys",
            {
                "These do not exist at the moment. However, it may be implemented in the future."
            }
        }
    }
    for _, Entry in next, FAQEntries do
        FAQSection:AddLabel(string.format('<font color="rgb(%d, %d, %d)">%s</font>',
            Libraries.Library.Scheme.AccentColor.R * 255,
            Libraries.Library.Scheme.AccentColor.G * 255,
            Libraries.Library.Scheme.AccentColor.B * 255,
            Entry[1]
        ), true)
        for Index, Step in next, Entry[2] do
            FAQSection:AddLabel(string.format('<b><font color="rgb(%d, %d, %d)">%d)</font></b> %s',
                Libraries.Library.Scheme.AccentColor.R * 255,
                Libraries.Library.Scheme.AccentColor.G * 255,
                Libraries.Library.Scheme.AccentColor.B * 255,
                Index, Step
            ), true)
        end
    end
end

repeat task.wait() until KeyValidated

if getgenv().Library then
    getgenv().Library:Unload()
    getgenv().Library = nil
end

getgenv().script_key = script_key
Libraries.API.load_script()
getgenv().script_key = nil
