local LibraryRepository = "https://raw.githubusercontent.com/synnyyy/Obsidian/refs/heads/main"
local Libraries = {
    Library = LibraryRepository .. "/Library.lua",
    ThemeManager = LibraryRepository .. "/addons/ThemeManager.lua",
    Information = "https://raw.githubusercontent.com/Synergy-Networks/products/refs/heads/main/Rift/Assets/Information.lua",
    API = "https://sdkapi-public.luarmor.net/library.lua"
}
local KeyValidated, EnteredKey = false, nil
local Total = 4
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
elseif game.PlaceId == 70876832253163 then
    Libraries.API.script_id = "373f5d42922fa6b5ac57adbb41b8015f"
elseif game.PlaceId == 116495829188952 then
    return Libraries.Library:Notify({
        Title = "Notice",
        Description = "Please execute Rift when you are in a ACTUAL game, not the lobby.",
        Time = 5,
    }) 
else
    return Libraries.Library:Notify({
        Title = "Unsupported Game",
        Description = "Rift does not support this game.\n\nIf you feel that this is a mistake, please contact us on vaultcord.win/synergy.",
        Time = 5,
    }) 
end


if getfenv().script_key then
    KeyValidated = true
elseif isfile("RiftAssets/SavedKey.txt") then
    local HasValidSavedKey = Libraries.API.check_key(readfile("RiftAssets/SavedKey.txt"))
    if HasValidSavedKey.code == "KEY_VALID" then
        KeyValidated = true
        getfenv().script_key = readfile("RiftAssets/SavedKey.txt")
    else
        delfile("RiftAssets/SavedKey.txt")
    end
end

Libraries.Library:SetAssetsFolder("RiftAssets")
Libraries.Library:SetAssetsUrl("https://raw.githubusercontent.com/Synergy-Networks/products/refs/heads/main/Rift/Assets")
Libraries.Library:SetModulesUrl("https://raw.githubusercontent.com/synnyyy/Obsidian/refs/heads/main/addons")
Libraries.Library:CheckAssetsFolder()
Libraries.Library:LoadModules()

if not KeyValidated then
	local LoaderWindow = Libraries.Library:CreateChangableWindow({
		Title = "Rift",
		Icon = Libraries.Library:GetAsset("Logo.png"),
		Footer = "Key System · " .. Libraries.Information.VERSION .. " · vaultcord.win/synergy",
		NotifySide = "Left",
		ShowCustomCursor = true,
		ForceCheckbox = false,
		NotifyOnError = true,
	})

	Libraries.ThemeManager:SetLibrary(Libraries.Library)
	Libraries.ThemeManager:SetFolder("Rift") 
	Libraries.ThemeManager:LoadDefault()
	Libraries.Library:SetNotifySide("left")


	local KeyFrame = LoaderWindow:CreateCanvas({
		FillDirection = Enum.FillDirection.Horizontal,
		Padding = UDim.new(0, 20),
		Lines = {
			{
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0.4, 3),
				Size = UDim2.new(0, 1, 1, 0),
			}
		}
	})

	KeyFrame:SetVisible()

	local Split = KeyFrame:AddSplit({
		Size = UDim2.fromScale(0.4, 1)
	})

	Split:AddInput("", {
		Numeric = false,
		Finished = false,
		ClearTextOnFocus = true,

		Text = "Enter your key here:",
		Placeholder = "Key",

		Callback = function(Value)
			EnteredKey = Value
		end,
	})

	local MyButton = Split:AddButton({
		Text = "Get Key",
		Func = function()
			setclipboard("https://ads.luarmor.net/get_key?for=Rift-DvnVpWgEvHMb")
			Libraries.Library:Notify({
				Title = "Copied to Clipboard",
				Description = "Paste the key link into your browser of choice.",
				Time = 5,
			}) 
		end
	})

	MyButton:AddButton({
		Text = "Enter",
		Func = function()
			if Libraries.API.check_key(EnteredKey).code == "KEY_VALID" then
				getfenv().script_key = EnteredKey
				writefile("RiftAssets/SavedKey.txt", EnteredKey)
				KeyValidated = true
			else
				Libraries.Library:Notify({
					Title = "Invalid Key",
					Description = "This key is not valid. Please try again.",
					Time = 5,
				}) 
			end
		end,
	})

	local Split2 = KeyFrame:AddSplit({
		Size = UDim2.fromScale(0.6, 1)
	})

	local ScrollingFrame = Split2:AddScrollingFrame()
	local Accent = Libraries.Library.Scheme.AccentColor
	local Color = string.format("rgb(%d, %d, %d)", Accent.R * 255, Accent.G * 255, Accent.B * 255)

	ScrollingFrame:AddLabel("", {
		DoesWrap = true,
		RichText = true,
		Text = [[<font color="]] .. Color .. [[">◆ Lifetime Keys</font>
<b><font color="]] .. Color .. [[">1)</font></b> Get a lifetime key at https://rifton.top for $3.75 by using Cryptocurrency. 

Bitcoin, Ethereum and Litecoin are accepted.

<font color="]] .. Color .. [[">◆ The page never loads!</font>
<b><font color="]] .. Color .. [[">1)</font></b> Switch to a browser like Google Chrome.
<b><font color="]] .. Color .. [[">2)</font></b> Disable firewalls, VPN/proxy services, or antiviruses.

<font color="]] .. Color .. [[">◆ The tasks are never complete.</font>
<b><font color="]] .. Color .. [[">1)</font></b> Disable any ad blockers such as UBlock Origin.
<b><font color="]] .. Color .. [[">2)</font></b> Refresh the page and try again.

<font color="]] .. Color .. [[">◆ My key is invalid.</font>
<b><font color="]] .. Color .. [[">1)</font></b> Ensure that there are no whitespaces in the key inputted.
<b><font color="]] .. Color .. [[">2)</font></b> Keys generated by other people cannot be used by you!]]
	})
end

repeat task.wait() until KeyValidated

if getgenv().Library then
    getgenv().Library:Unload()
    getgenv().Library = nil
end

getgenv().script_key = getfenv().script_key
Libraries.API.load_script()
getgenv().script_key = nil
