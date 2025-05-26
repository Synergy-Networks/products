local Services = setmetatable({}, {
	__index = function(_, Name)
		return cloneref(game:GetService(Name))
	end
})

local Players = Services.Players
local CoreGui = Services.CoreGui
local UserInputService = Services.UserInputService
local TeleportService = Services.TeleportService
local TweenService = Services.TweenService
local HttpService = Services.HttpService
local RobloxGui = CoreGui.RobloxGui
local IsOnMobile = table.find({
	Enum.Platform.IOS,
	Enum.Platform.Android
}, UserInputService:GetPlatform())
local ContentProvider = Services.ContentProvider

local Player = Players.LocalPlayer
local SettingsClippingShield = RobloxGui.SettingsClippingShield
local MenuContainer = SettingsClippingShield:FindFirstChild("MenuContainer", true)
local TopBar = CoreGui:FindFirstChild("TopBarApp").TopBarApp

local BannerNotification = Instance.new("ScreenGui", RobloxGui)
BannerNotification.Name = "BannerNotification"
BannerNotification.IgnoreGuiInset = true
BannerNotification.DisplayOrder = 100
BannerNotification.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
BannerNotification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BannerNotification.ResetOnSpawn = false

local ActiveNotifications = Instance.new("Folder", BannerNotification)
ActiveNotifications.Name = "ActiveNotifications"

local List = Instance.new("UIListLayout", ActiveNotifications)
List.Name = "List"
List.HorizontalAlignment = Enum.HorizontalAlignment.Center
List.SortOrder = Enum.SortOrder.LayoutOrder
List.Padding = UDim.new(0, -30)

TopBar.MenuIconHolder.TriggerPoint.Background.ScalingIcon.Image = "rbxassetid://87931141682937"
TopBar.MenuIconHolder.TriggerPoint.Background.ScalingIcon.ImageRectOffset = Vector2.new(0, 0)
TopBar.MenuIconHolder.TriggerPoint.Background.ScalingIcon.ImageRectSize = Vector2.new(0, 0)
local Order = 0
local SizeYForPageView = 1
local Colours = {
	["Dark Crimson"] = Color3.fromRGB(45, 0, 0),
	["Burnt Amber"] = Color3.fromRGB(100, 30, 0),
	["True Mango"] = Color3.fromRGB(110, 90, 20),
	["Moss Green"] = Color3.fromRGB(10, 40, 10),
	["Forest Green"] = Color3.fromRGB(0, 50, 0),
	["Steel Teal"] = Color3.fromRGB(0, 45, 45),
	["Deep Ocean"] = Color3.fromRGB(0, 40, 60),
	["Ink Blue"] = Color3.fromRGB(0, 10, 40),
	["Royal Violet"] = Color3.fromRGB(35, 0, 55),
	["Obsidian Purple"] = Color3.fromRGB(20, 0, 35),
	["Plum Magenta"] = Color3.fromRGB(45, 0, 45),
	["Dusky Rose"] = Color3.fromRGB(85, 20, 40),
	["Shadowed Blue"] = Color3.fromRGB(10, 10, 40),
	["Deep Charcoal"] = Color3.fromRGB(15, 20, 30),
	["Black Onyx"] = Color3.fromRGB(3, 3, 3),
	["Smoky Jade"] = Color3.fromRGB(0, 40, 20),
	["Dark Ash"] = Color3.fromRGB(20, 20, 20),
	["Deep Emerald"] = Color3.fromRGB(0, 35, 20),
	["Steel Navy"] = Color3.fromRGB(5, 5, 25),
	["Blackberry"] = Color3.fromRGB(35, 0, 25),
	["Deep Maroon"] = Color3.fromRGB(40, 0, 10),
	["Ebony"] = Color3.fromRGB(10, 10, 10),
	["Charred Olive"] = Color3.fromRGB(30, 30, 10),
	["Nightshade"] = Color3.fromRGB(15, 0, 25),
	["Gunmetal"] = Color3.fromRGB(20, 20, 30),
	["Deep Burgundy"] = Color3.fromRGB(45, 0, 15),
	["Muted Plum"] = Color3.fromRGB(50, 10, 30),
	["Slate Purple"] = Color3.fromRGB(25, 10, 40),
	["Shadow Green"] = Color3.fromRGB(0, 30, 15),
	["Midnight Rust"] = Color3.fromRGB(50, 10, 10),
	["Coal Black"] = Color3.fromRGB(10, 10, 10),
	["Shadowed Indigo"] = Color3.fromRGB(15, 5, 25),
	["Iron Gray"] = Color3.fromRGB(25, 25, 30),
	["Blackwood"] = Color3.fromRGB(10, 5, 5),
	["Dark Pine"] = Color3.fromRGB(0, 25, 15),
	["Cave Brown"] = Color3.fromRGB(25, 15, 10),
	["Shadowed Crimson"] = Color3.fromRGB(50, 0, 15),
	["Muted Cobalt"] = Color3.fromRGB(10, 20, 30),
	["Dusky Moss"] = Color3.fromRGB(15, 25, 15),
	["Garnet Black"] = Color3.fromRGB(20, 0, 10)
} 

if not isfolder("Mango") then
	makefolder("Mango")
	
	local DefaultConfiguration = {
		Toggles = {},
		Selectors = {},
		Sliders = {},
		SmallTextboxes = {}
	}
	writefile("Mango/Configuration.json", HttpService:JSONEncode(DefaultConfiguration))
end

local Configuration = HttpService:JSONDecode(readfile("Mango/Configuration.json"))

local SaveConfiguration = function()
	writefile("Mango/Configuration.json", HttpService:JSONEncode(Configuration))
end
task.spawn(function()
	if not IsOnMobile then
		MenuContainer.UIPadding.PaddingBottom = UDim.new(0, 50)
		MenuContainer.BottomButtonFrame.UIListLayout.Wraps = true
		MenuContainer.BottomButtonFrame.Size = UDim2.new(1, 0, 0, 120)

		local Button = MenuContainer.BottomButtonFrame.ResetCharacterButtonButton
		Button.ResetCharacterButtonTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.ResetCharacterHint.ImageColor3 = Color3.fromRGB(255, 255, 255)

		local Rejoin = Button:Clone()
		Rejoin.LayoutOrder = 1
		Rejoin.ResetCharacterButtonTextLabel.Text = "Rejoin Server"
		Rejoin.ResetCharacterHint.Image = "rbxassetid://10734933222"
		Rejoin.Parent = MenuContainer.BottomButtonFrame

		Rejoin.MouseEnter:Connect(function()
			Rejoin.BackgroundTransparency = 0 
		end)

		Rejoin.MouseLeave:Connect(function()
			Rejoin.BackgroundTransparency = 1 
		end)

		Rejoin.MouseButton1Click:Connect(function()
			local Success, Error = pcall(function()
				if #Players:GetPlayers() <= 1 then
					TeleportService:Teleport(game.PlaceId, Player)
				else
					TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Player)
				end
			end)
			if not Success and Error then
				Rejoin.ResetCharacterButtonTextLabel.Text = "Failed to join."
				task.wait(3)
				Rejoin.ResetCharacterButtonTextLabel.Text = "Rejoin Server"
			end    
		end)



		local ServerHop = Button:Clone()
		ServerHop.LayoutOrder = 2
		ServerHop.ResetCharacterButtonTextLabel.Text = "Server Hop (Max)"
		ServerHop.ResetCharacterHint.Image = "rbxassetid://10734949856"
		ServerHop.Parent = MenuContainer.BottomButtonFrame


		ServerHop.MouseEnter:Connect(function()
			ServerHop.BackgroundTransparency = 0 
		end)

		ServerHop.MouseLeave:Connect(function()
			ServerHop.BackgroundTransparency = 1 
		end)

		ServerHop.MouseButton1Click:Connect(function()
			local Servers = {}
			local ServerRequest = request({
				Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId),
				Method = "GET"
			})
		
			local Body = HttpService:JSONDecode(ServerRequest.Body)
			if Body and Body.data then
				for _, v in next, Body.data do
					if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
						table.insert(Servers, v)
					end
				end
			end
		
			if #Servers > 0 then
				table.sort(Servers, function(a, b)
					return a.playing > b.playing
				end)
		
				local SelectedServer = Servers[1]
				if SelectedServer.playing < SelectedServer.maxPlayers then
					TeleportService:TeleportToPlaceInstance(game.PlaceId, SelectedServer.id, Player)
				else
					ServerHop.ResetCharacterButtonTextLabel.Text = "No available servers."
					task.wait(3)
					ServerHop.ResetCharacterButtonTextLabel.Text = "Server Hop (Max)"
				end
			else
				ServerHop.ResetCharacterButtonTextLabel.Text = "Failed to join."
				task.wait(3)
				ServerHop.ResetCharacterButtonTextLabel.Text = "Server Hop (Max)"
			end
		end)

		local ServerHop = Button:Clone()
		ServerHop.LayoutOrder = 2
		ServerHop.ResetCharacterButtonTextLabel.Text = "Server Hop (Min)"
		ServerHop.ResetCharacterHint.Image = "rbxassetid://10734949856"
		ServerHop.Parent = MenuContainer.BottomButtonFrame


		ServerHop.MouseEnter:Connect(function()
			ServerHop.BackgroundTransparency = 0 
		end)

		ServerHop.MouseLeave:Connect(function()
			ServerHop.BackgroundTransparency = 1 
		end)

		ServerHop.MouseButton1Click:Connect(function()
			local Servers = {}
			local ServerRequest = request({
				Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId),
				Method = "GET"
			})
		
			local Body = HttpService:JSONDecode(ServerRequest.Body)
			if Body and Body.data then
				for _, v in next, Body.data do
					if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
						table.insert(Servers, v)
					end
				end
			end
		
			if #Servers > 0 then
				table.sort(Servers, function(a, b)
					return a.playing < b.playing
				end)
		
				local SelectedServer = Servers[1]
				if SelectedServer.playing < SelectedServer.maxPlayers then
					TeleportService:TeleportToPlaceInstance(game.PlaceId, SelectedServer.id, Player)
				else
					ServerHop.ResetCharacterButtonTextLabel.Text = "No available servers."
					task.wait(3)
					ServerHop.ResetCharacterButtonTextLabel.Text = "Server Hop (Max)"
				end
			else
				ServerHop.ResetCharacterButtonTextLabel.Text = "Failed to join."
				task.wait(3)
				ServerHop.ResetCharacterButtonTextLabel.Text = "Server Hop (Max)"
			end
		end)
	end
end)


local RobloxGUIAPI = {
	AddPage = function(Title, Icon, IsSubMenu)
		local PageDuplicate = Instance.new("Frame", MenuContainer.PageViewClipper.PageView.PageViewInnerFrame)
		PageDuplicate.BackgroundTransparency = 1
		PageDuplicate.Position = UDim2.new(-3, 0, 0, 0)
		PageDuplicate.AutomaticSize = Enum.AutomaticSize.XY
		PageDuplicate.Visible = false
		PageDuplicate.Name = Title

		local FreeCommentsFrame = Instance.new("Frame", PageDuplicate)
		FreeCommentsFrame.BackgroundTransparency = 1
		FreeCommentsFrame.LayoutOrder = 3
		FreeCommentsFrame.Size = UDim2.new(1, 0, 0, 40)
		FreeCommentsFrame.AutomaticSize = Enum.AutomaticSize.Y
		FreeCommentsFrame.Name = "Search"
		FreeCommentsFrame.LayoutOrder = 0

		local RightComponentWrapper = Instance.new("Frame", FreeCommentsFrame)
		RightComponentWrapper.BackgroundTransparency = 1
		RightComponentWrapper.LayoutOrder = 3
		RightComponentWrapper.Size = UDim2.new(1, 0, 1, 0)
		RightComponentWrapper.AutomaticSize = Enum.AutomaticSize.Y
		RightComponentWrapper.Name = "RightComponentWrapper"

		local RightComponent = Instance.new("Frame", RightComponentWrapper)
		RightComponent.BackgroundColor3 = Color3.fromRGB(36, 38, 40)
		RightComponent.Size = UDim2.new(1, 0, 0, 1)
		RightComponent.AutomaticSize = Enum.AutomaticSize.Y
		RightComponent.Name = "RightComponent"

		local UICorner = Instance.new("UICorner", RightComponent)

		local UIPadding = Instance.new("UIPadding", RightComponent)
		UIPadding.PaddingTop = UDim.new(0, 10)
		UIPadding.PaddingRight = UDim.new(0, 10)
		UIPadding.PaddingBottom = UDim.new(0, 10)
		UIPadding.PaddingLeft = UDim.new(0, 10)

		local AbuseReportsText = Instance.new("TextBox", RightComponent)
		AbuseReportsText.CursorPosition = -1
		AbuseReportsText.BorderSizePixel = 0
		AbuseReportsText.TextSize = 20
		AbuseReportsText.TextXAlignment = Enum.TextXAlignment.Left
		AbuseReportsText.TextWrapped = true
		AbuseReportsText.TextYAlignment = Enum.TextYAlignment.Top
		AbuseReportsText.TextColor3 = Color3.fromRGB(190, 191, 191)
		AbuseReportsText.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		AbuseReportsText.LayoutOrder = 1
		AbuseReportsText.Text = ""
		AbuseReportsText.PlaceholderText = "Search.."
		AbuseReportsText.Size = UDim2.new(1, 0, 0, 20)
		AbuseReportsText.ClipsDescendants = true
		AbuseReportsText.AutomaticSize = Enum.AutomaticSize.Y
		AbuseReportsText.Name = "AbuseReportsText"
		AbuseReportsText.ClearTextOnFocus = true

		local RightLayout = Instance.new("UIListLayout", RightComponentWrapper)
		RightLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		RightLayout.Name = "Layout"

		local FreeCommentsLayout = Instance.new("UIListLayout", FreeCommentsFrame)
		FreeCommentsLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		FreeCommentsLayout.FillDirection = Enum.FillDirection.Horizontal
		FreeCommentsLayout.Name = "Layout"
		FreeCommentsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		FreeCommentsLayout.SortOrder = Enum.SortOrder.LayoutOrder

		local FreeCommentsPadding = Instance.new("UIPadding", FreeCommentsFrame)
		FreeCommentsPadding.Name = "Padding"


		local ignoredClasses = {
			"UIListLayout",
			"UIGridLayout",
			"UIPageLayout",
			"UIPadding",
			"UIScale",
		}
		
		AbuseReportsText:GetPropertyChangedSignal("Text"):Connect(function()
			local Input = AbuseReportsText.Text:match("^%s*(.-)%s*$")
			local isInputBlank = (Input == "")
			
			for _, child in pairs(PageDuplicate:GetChildren()) do
				local isIgnored = false
				
				for _, ignoredClass in ipairs(ignoredClasses) do
					if child:IsA(ignoredClass) then
						isIgnored = true
						break
					end
				end
				
				if child:IsA("GuiObject") and child.Name ~= "Search" and not isIgnored then  
					if isInputBlank then
						child.Visible = true 
					else
						if child.Name:find("_") then
							child.Visible = false  
						else
							local isVisible = child.Name:lower():find(Input:lower()) ~= nil
							child.Visible = isVisible
						end
					end
				end
			end
		end)
		

		task.spawn(function()
			local phrases = {
				"Searching for some bitches.. Right, I am a exploiter. I can't.",
				"Search.. This script has too much shit dude.",
				"Type in me!! You can use me to search features.",
			}
		
			local function TypeEffect(inputField, text, speed)
				inputField.PlaceholderText = ""
		
				-- Typing the text
				for i = 1, #text do
					inputField.PlaceholderText = text:sub(1, i)
					task.wait(speed)
				end
		
				-- Simulate the cursor effect while typing
				local cursorVisible = true
				for _ = 1, 10 do
					inputField.PlaceholderText = text .. (cursorVisible and "|" or "")
					cursorVisible = not cursorVisible
					task.wait(0.5) -- Adjust cursor blink speed
				end
		
				-- Gradually remove the text
				for i = #text, 1, -1 do
					inputField.PlaceholderText = text:sub(1, i - 1) -- Remove one character at a time
					task.wait(speed * 0.35)
				end
		
				inputField.PlaceholderText = "Search.."
			end
		
			while true do
				local selectedPhrase = phrases[math.random(1, #phrases)]
				TypeEffect(AbuseReportsText, selectedPhrase, 0.1)
				task.wait(1.5) -- Wait a bit before typing the next phrase
			end
		end)
		

		local UIPadding = Instance.new("UIPadding", PageDuplicate)
		UIPadding.PaddingRight = UDim.new(0, 11)
		UIPadding.PaddingLeft = UDim.new(0, 12)

		local RowListLayout = Instance.new("UIListLayout", PageDuplicate)
		RowListLayout.Name = "RowListLayout"
		RowListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		RowListLayout.Padding = UDim.new(0, 16)
		RowListLayout.SortOrder = Enum.SortOrder.LayoutOrder


		if not IsSubMenu then
			local Tab = MenuContainer.HubBar.HubBarContainer.PlayersTab:Clone()
			Tab.TabLabel.Icon.Image = Icon
			Tab.TabLabel.Icon.ImageRectOffset = Vector2.new(0, 0)
			Tab.TabLabel.Icon.ImageRectSize = Vector2.new(0, 0)
			Tab.TabLabel.Icon.ImageTransparency = 0.5
			Tab.TabLabel.Title.TextTransparency = 0.5
			Tab.TabLabel.Icon.Size = UDim2.new(0, 24, 0, 24)
			Tab.TabSelection.Visible = false
			Tab.Name = Title .. "Tab"
			Tab.TabLabel.Title.Text = Title
			Tab.Parent = MenuContainer.HubBar.HubBarContainer

			UserInputService.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Escape then
					PageDuplicate.Visible = false
					Tab.TabLabel.Title.TextTransparency = 0.5
					Tab.TabLabel.Icon.ImageTransparency = 0.5
					Tab.TabSelection.Visible = false
				end
			end)

			TopBar.MenuIconHolder.TriggerPoint.Background.MouseButton1Click:Connect(function()
				PageDuplicate.Visible = false
				Tab.TabLabel.Title.TextTransparency = 0.5
				Tab.TabLabel.Icon.ImageTransparency = 0.5
				Tab.TabSelection.Visible = false
			end)

			MenuContainer.PageViewClipper.PageView.PageViewInnerFrame.ChildAdded:Connect(function(v)
				if v.Name == "LeaveGamePage" then
					PageDuplicate.Visible = false
					Tab.TabLabel.Title.TextTransparency = 0.5
					Tab.TabLabel.Icon.ImageTransparency = 0.5
					Tab.TabSelection.Visible = false
					v:GetPropertyChangedSignal("Visible"):Connect(function()
						PageDuplicate.Visible = false
						Tab.TabLabel.Title.TextTransparency = 0.5
						Tab.TabLabel.Icon.ImageTransparency = 0.5
						Tab.TabSelection.Visible = false
					end)
				end
			end)


			local function CalculateSize()
				local Layout = PageDuplicate:FindFirstChildOfClass("UIListLayout")
				if Layout then
					SizeYForPageView = Layout.AbsoluteContentSize.Y
				end
			end
						
			PageDuplicate.ChildAdded:Connect(function(v)
				task.wait()
				CalculateSize()
			end)

			Tab.MouseButton1Click:Connect(function()
				for _, v in pairs(MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:GetChildren()) do
					if v:IsA("Frame") then
						v.Visible = false
					end
				end

				for _, v in pairs(MenuContainer.HubBar.HubBarContainer:GetChildren()) do
					if v:IsA("TextButton") and v.Name ~= Tab.Name then
						v.TabSelection.Visible = false
						v.TabLabel.Title.TextTransparency = 0.5
						v.TabLabel.Icon.ImageTransparency = 0.5
						v.MouseButton1Click:Connect(function()
							PageDuplicate.Visible = false
							Tab.TabLabel.Title.TextTransparency = 0.5
							Tab.TabLabel.Icon.ImageTransparency = 0.5
							Tab.TabSelection.Visible = false
						end)
					end
				end

				Tab.TabLabel.Title.TextTransparency = 0
				Tab.TabLabel.Icon.ImageTransparency = 0
				PageDuplicate.Visible = true
				PageDuplicate.Position = UDim2.fromScale(0, 0)
				Tab.TabSelection.Visible = true

				if SizeYForPageView then
					repeat
						MenuContainer.PageViewClipper.PageView.CanvasSize = UDim2.new(0, 0, 0, SizeYForPageView)
						task.wait()
					until not Tab.TabSelection.Visible
				end
			end)

	

		end


		local PageFunctions = {
			AddSectionLabel = function(Text)
				local SectionLabel = Instance.new("TextLabel", PageDuplicate)
				SectionLabel.TextWrapped = true
				SectionLabel.ZIndex = 2
				SectionLabel.TextXAlignment = Enum.TextXAlignment.Left
				SectionLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				SectionLabel.TextSize = 28
				SectionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionLabel.LayoutOrder = 1
				SectionLabel.AutomaticSize = Enum.AutomaticSize.Y
				SectionLabel.Size = UDim2.new(1, 0, 0, 0)
				SectionLabel.Text = Text
				SectionLabel.Name = "_"
				SectionLabel.BackgroundTransparency = 1
				SectionLabel.Position = UDim2.new(0, 9, 0, 0)

				SectionLabel.LayoutOrder = Order
				Order = Order + 1
			end,

			AddLabel = function(Text)
				local Label = Instance.new("TextLabel", PageDuplicate)
				Label.TextWrapped = true
				Label.ZIndex = 2
				Label.TextXAlignment = Enum.TextXAlignment.Center
				Label.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				Label.TextSize = 14
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.LayoutOrder = 1
				Label.AutomaticSize = Enum.AutomaticSize.Y
				Label.Size = UDim2.new(1, 0, 0, 0)
				Label.Text = Text
				Label.Name = "_"
				Label.BackgroundTransparency = 1
				Label.Position = UDim2.new(0, 9, 0, 0)

				Label.LayoutOrder = Order
				Order = Order + 1
			end,

			AddDivider = function()
				local Divider = Instance.new("Frame", PageDuplicate)
				Divider.Visible = true
				Divider.BorderSizePixel = 0
				Divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Divider.AnchorPoint = Vector2.new(0, 1)
				Divider.BackgroundTransparency = 0.8
				Divider.Size = UDim2.new(1, 0, 0, 1.25)
				Divider.Position = UDim2.new(0, 0, 1, 0)
				Divider.Name = "_"		
				
				Divider.LayoutOrder = Order
				Order = Order + 1
			end,
			

			AddButtonV2 = function(Options)
				local Name = Options.Name
				local SecondaryName = Options.SecondaryName or "Click"
				local Flag = Options.Flag
				local Callback = Options.Callback

				local ButtonFrame = Instance.new("ImageButton", PageDuplicate)
				ButtonFrame.Active = false
				ButtonFrame.ZIndex = 2
				ButtonFrame.BorderSizePixel = 0
				ButtonFrame.SliceCenter = Rect.new(10, 10, 10, 10)
				ButtonFrame.ScaleType = Enum.ScaleType.Slice
				ButtonFrame.AutoButtonColor = false
				ButtonFrame.ImageTransparency = 1
				ButtonFrame.AutomaticSize = Enum.AutomaticSize.Y
				ButtonFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				ButtonFrame.Selectable = false
				ButtonFrame.LayoutOrder = 101
				ButtonFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				ButtonFrame.Size = UDim2.new(1, 0, 0, 50)
				ButtonFrame.Name = Name
				ButtonFrame.Position = UDim2.new(0, 0, 0, 800)
				ButtonFrame.BackgroundTransparency = 1

				ButtonFrame.LayoutOrder = Order
				Order = Order + 1

				if not IsOnMobile then
					ButtonFrame.MouseEnter:Connect(function()
						ButtonFrame.BackgroundTransparency = 0 
					end)
					
					ButtonFrame.MouseLeave:Connect(function()
						ButtonFrame.BackgroundTransparency = 1 
					end)
				end
				

				local UICorner = Instance.new("UICorner", ButtonFrame)

				local ButtonLabel = Instance.new("TextLabel", ButtonFrame)
				ButtonLabel.TextWrapped = true
				ButtonLabel.ZIndex = 2
				ButtonLabel.TextXAlignment = Enum.TextXAlignment.Left
				ButtonLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				ButtonLabel.TextSize = 17
				ButtonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonLabel.AutomaticSize = Enum.AutomaticSize.Y
				ButtonLabel.Size = UDim2.new(0.4000000059604645, -20, 1, 0)
				ButtonLabel.Text = Name
				ButtonLabel.Name = Name .. "Label"
				ButtonLabel.BackgroundTransparency = 1
				ButtonLabel.Position = UDim2.new(0, 10, 0, 0)

				local ButtonUIPadding = Instance.new("UIPadding", ButtonLabel)
				ButtonUIPadding.PaddingTop = UDim.new(0, 10)
				ButtonUIPadding.Name = [[Developer ConsoleUIPadding]]
				ButtonUIPadding.PaddingBottom = UDim.new(0, 10)

				local ActualButton = Instance.new("ImageButton", ButtonFrame)
				ActualButton.ZIndex = 2
				ActualButton.AutoButtonColor = false
				ActualButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				ActualButton.AnchorPoint = Vector2.new(0, 0.5)
				ActualButton.Size = UDim2.new(0.6000000238418579, -10, 0, 35)
				ActualButton.Name = [[ActualButton]]
				ActualButton.Position = UDim2.new(0.4000000059604645, 10, 0.5, 0)
				ActualButton.BackgroundTransparency = 1

				local ButtonUICorner = Instance.new("UICorner", ActualButton)

				local UIStroke = Instance.new("UIStroke", ActualButton)
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.Name = [[Border]]
				UIStroke.Transparency = 0.30000001192092896

				local ActualTextLabel = Instance.new("TextLabel", ActualButton)
				ActualTextLabel.TextWrapped = true
				ActualTextLabel.ZIndex = 2
				ActualTextLabel.BorderSizePixel = 0
				ActualTextLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				ActualTextLabel.TextTransparency = 0.30000001192092896
				ActualTextLabel.TextSize = 17
				ActualTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ActualTextLabel.Size = UDim2.new(1, 0, 1, 0)
				ActualTextLabel.Text = SecondaryName
				ActualTextLabel.Name = SecondaryName .. "Label"
				ActualTextLabel.BackgroundTransparency = 1

				local UITextSizeConstraint = Instance.new("UITextSizeConstraint", ActualTextLabel)
				UITextSizeConstraint.MaxTextSize = 17

				ActualButton.MouseButton1Click:Connect(function()
					Callback()
				end)

				ActualButton.MouseEnter:Connect(function()
					ActualButton.BackgroundTransparency = 0 
				end)
				
				ActualButton.MouseLeave:Connect(function()
					ActualButton.BackgroundTransparency = 1 
				end)

			end,
			AddToggleV2 = function(Options)
				local Name = Options.Name
				local Flag = Options.Flag
				local State = Configuration.Toggles[Flag] or Options.State or false
				local Callback = Options.Callback

				
				local ToggleFrame = Instance.new("ImageButton", PageDuplicate)
				ToggleFrame.Active = false
				ToggleFrame.ZIndex = 2
				ToggleFrame.BorderSizePixel = 0
				ToggleFrame.SliceCenter = Rect.new(2, 2, 18, 18)
				ToggleFrame.ScaleType = Enum.ScaleType.Slice
				ToggleFrame.AutoButtonColor = false
				ToggleFrame.ImageTransparency = 1
				ToggleFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				ToggleFrame.Selectable = false
				ToggleFrame.LayoutOrder = 80
				ToggleFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				ToggleFrame.Size = UDim2.new(1, 0, 0, 50)
				ToggleFrame.Name = Name
				ToggleFrame.Position = UDim2.new(0, 0, 0, 700)
				ToggleFrame.BackgroundTransparency = 1

				ToggleFrame.LayoutOrder = Order
				Order = Order + 1

				
			
				local UICorner = Instance.new("UICorner", ToggleFrame)
			
				local StatsLabel = Instance.new("TextLabel", ToggleFrame)
				StatsLabel.TextWrapped = true
				StatsLabel.ZIndex = 2
				StatsLabel.TextXAlignment = Enum.TextXAlignment.Left
				StatsLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				StatsLabel.TextSize = 17
				StatsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				StatsLabel.AutomaticSize = Enum.AutomaticSize.Y
				StatsLabel.Size = UDim2.new(0.4, -20, 1, 0)
				StatsLabel.Text = Name
				StatsLabel.Name = Name
				StatsLabel.BackgroundTransparency = 1
				StatsLabel.Position = UDim2.new(0, 10, 0, 0)
			
				local UIPadding = Instance.new("UIPadding", StatsLabel)
				UIPadding.PaddingTop = UDim.new(0, 10)
				UIPadding.PaddingBottom = UDim.new(0, 10)
			
				local Selector = Instance.new("ImageButton", ToggleFrame)
				Selector.ZIndex = 2
				Selector.AutoButtonColor = false
				Selector.AnchorPoint = Vector2.new(1, 0.5)
				Selector.Size = UDim2.new(0.6, 0, 0, 50)
				Selector.Name = "Selector"
				Selector.Position = UDim2.new(1, 0, 0.5, 0)
				Selector.BackgroundTransparency = 1
			
				local LeftButton = Instance.new("ImageButton", Selector)
				LeftButton.ZIndex = 3
				LeftButton.Selectable = false
				LeftButton.AnchorPoint = Vector2.new(0, 0.5)
				LeftButton.Size = UDim2.new(0, 32, 0, 50)
				LeftButton.Name = "LeftButton"
				LeftButton.Position = UDim2.new(0, 0, 0.5, 0)
				LeftButton.BackgroundTransparency = 1
			
				local LeftButtonImage = Instance.new("ImageLabel", LeftButton)
				LeftButtonImage.ZIndex = 4
				LeftButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				LeftButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				LeftButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Left.png]]
				LeftButtonImage.Size = UDim2.new(0, 18, 0, 30)
				LeftButtonImage.Name = "LeftButton"
				LeftButtonImage.BackgroundTransparency = 1
				LeftButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)
			
				local RightButton = Instance.new("ImageButton", Selector)
				RightButton.ZIndex = 3
				RightButton.Selectable = false
				RightButton.AnchorPoint = Vector2.new(1, 0.5)
				RightButton.Size = UDim2.new(0, 32, 0, 50)
				RightButton.Name = "RightButton"
				RightButton.Position = UDim2.new(1, 0, 0.5, 0)
				RightButton.BackgroundTransparency = 1
			
				local RightButtonImage = Instance.new("ImageLabel", RightButton)
				RightButtonImage.ZIndex = 4
				RightButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				RightButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				RightButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Right.png]]
				RightButtonImage.Size = UDim2.new(0, 18, 0, 30)
				RightButtonImage.Name = "RightButton"
				RightButtonImage.BackgroundTransparency = 1
				RightButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)
			
				local AutoSelectButton = Instance.new("ImageButton", Selector)
				AutoSelectButton.ZIndex = 2
				AutoSelectButton.Selectable = false
				AutoSelectButton.Size = UDim2.new(1, -64, 1, 0)
				AutoSelectButton.Name = "AutoSelectButton"
				AutoSelectButton.Position = UDim2.new(0, 32, 0, 0)
				AutoSelectButton.BackgroundTransparency = 1
			
				local Selection1 = Instance.new("TextLabel", Selector)
				Selection1.TextWrapped = true
				Selection1.ZIndex = 2
				Selection1.BorderSizePixel = 0
				Selection1.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Selection1.TextTransparency = 0.5
				Selection1.TextSize = 17
				Selection1.TextColor3 = Color3.fromRGB(255, 255, 255)
				Selection1.Size = UDim2.new(1, -64, 1, 0)
				Selection1.Name = "Selection1"
				Selection1.BackgroundTransparency = 1
				Selection1.Position = UDim2.new(0, 32, 0, 0)
				Selection1.Visible = true

			
				local PerformanceStatsLabel = Instance.new("TextLabel", ToggleFrame)
				PerformanceStatsLabel.ZIndex = 2
				PerformanceStatsLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				PerformanceStatsLabel.TextSize = 18
				PerformanceStatsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				PerformanceStatsLabel.Size = UDim2.new(0, 200, 1, 0)
				PerformanceStatsLabel.Text = [[Set by Developer]]
				PerformanceStatsLabel.Name = Name .. "Label"
				PerformanceStatsLabel.Visible = false
				PerformanceStatsLabel.BackgroundTransparency = 1
				PerformanceStatsLabel.Position = UDim2.new(1, -350, 0, 0)

			
				if not IsOnMobile then
					ToggleFrame.MouseEnter:Connect(function()
						ToggleFrame.BackgroundTransparency = 0 
						Selection1.TextTransparency = 0
					end)
					
					ToggleFrame.MouseLeave:Connect(function()
						ToggleFrame.BackgroundTransparency = 1 
						Selection1.TextTransparency = 0.5
					end)
				end
			
				if Flag and not Configuration.Toggles[Flag] then
					Configuration.Toggles[Flag] = State
					SaveConfiguration()
				end

				if State then
					Selection1.Text = "On"
					task.spawn(function()
						Callback(State)
					end)
				else
					Selection1.Text = "Off"
				end

				LeftButton.MouseButton1Click:Connect(function()
					State = not State
					if State then
						Selection1.Text = "On"
					else
						Selection1.Text = "Off"
					end

					if Flag then
						Configuration.Toggles[Flag] = State
						SaveConfiguration()
					end
					
					task.spawn(function()
						Callback(State)
					end)
				end)
			
				RightButton.MouseButton1Click:Connect(function()
					State = not State

					if State then
						Selection1.Text = "On"
					else
						Selection1.Text = "Off"
					end

					if Flag then
						Configuration.Toggles[Flag] = State
						SaveConfiguration()
					end
					task.spawn(function()
						Callback(State)
					end)
				end)
			end,

			AddToggleV2WithDesc = function(Options)
				local Name = Options.Name
				local Description = Options.Description
				local Flag = Options.Flag
				local State = Configuration.Toggles[Flag] or Options.State or false
				local Callback = Options.Callback


				local ReduceMotionFrame = Instance.new("ImageButton", PageDuplicate)
				ReduceMotionFrame.Active = false
				ReduceMotionFrame.ZIndex = 2
				ReduceMotionFrame.BorderSizePixel = 0
				ReduceMotionFrame.SliceCenter = Rect.new(2, 2, 18, 18)
				ReduceMotionFrame.ScaleType = Enum.ScaleType.Slice
				ReduceMotionFrame.AutoButtonColor = false
				ReduceMotionFrame.ImageTransparency = 1
				ReduceMotionFrame.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				ReduceMotionFrame.Selectable = false
				ReduceMotionFrame.LayoutOrder = 73
				ReduceMotionFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				ReduceMotionFrame.Size = UDim2.new(1, 0, 0, 50)
				ReduceMotionFrame.Name = Name
				ReduceMotionFrame.Position = UDim2.new(0, 0, 0, 500)
				ReduceMotionFrame.BackgroundTransparency = 1

				ReduceMotionFrame.LayoutOrder = Order
				Order = Order + 1

				-- StarterGui.ngger.Reduce MotionFrame.UICorner
				local ReduceMotionUICorner = Instance.new("UICorner", ReduceMotionFrame)

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame
				local ReduceMotionRowFrame = Instance.new("Frame", ReduceMotionFrame)
				ReduceMotionRowFrame.BackgroundTransparency = 1
				ReduceMotionRowFrame.Size = UDim2.new(0.4, -20, 0, 50)
				ReduceMotionRowFrame.Position = UDim2.new(0, 10, 0, 0)
				ReduceMotionRowFrame.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionRowFrame.Name = [[Reduce MotionRowLabelAndDescriptionFrame]]

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionLabel
				local ReduceMotionLabel = Instance.new("TextLabel", ReduceMotionRowFrame)
				ReduceMotionLabel.TextWrapped = true
				ReduceMotionLabel.ZIndex = 2
				ReduceMotionLabel.TextXAlignment = Enum.TextXAlignment.Left
				ReduceMotionLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				ReduceMotionLabel.TextSize = 17
				ReduceMotionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ReduceMotionLabel.LayoutOrder = 1
				ReduceMotionLabel.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionLabel.Size = UDim2.new(1, 0, 0, 0)
				ReduceMotionLabel.Text = Name
				ReduceMotionLabel.Name = [[Reduce MotionLabel]]
				ReduceMotionLabel.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionDescription
				local ReduceMotionDescription = Instance.new("TextLabel", ReduceMotionRowFrame)
				ReduceMotionDescription.TextWrapped = true
				ReduceMotionDescription.ZIndex = 2
				ReduceMotionDescription.TextXAlignment = Enum.TextXAlignment.Left
				ReduceMotionDescription.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				ReduceMotionDescription.TextTransparency = 0.25
				ReduceMotionDescription.TextSize = 12
				ReduceMotionDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
				ReduceMotionDescription.LayoutOrder = 2
				ReduceMotionDescription.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionDescription.Size = UDim2.new(1, 0, 0, 0)
				ReduceMotionDescription.Text = Description
				ReduceMotionDescription.Name = [[Reduce MotionDescription]]
				ReduceMotionDescription.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionUIListLayout
				local ReduceMotionUIListLayout = Instance.new("UIListLayout", ReduceMotionRowFrame)
				ReduceMotionUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				ReduceMotionUIListLayout.Name = [[Reduce MotionUIListLayout]]
				ReduceMotionUIListLayout.Padding = UDim.new(0, 8)
				ReduceMotionUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionUIListLayout
				local ReduceMotionUIPadding = Instance.new("UIPadding", ReduceMotionRowFrame)
				ReduceMotionUIPadding.PaddingTop = UDim.new(0, 10)
				ReduceMotionUIPadding.Name = [[Reduce MotionUIListLayout]]
				ReduceMotionUIPadding.PaddingBottom = UDim.new(0, 10)

				-- StarterGui.ngger.Reduce MotionFrame.Selector
				local Selector = Instance.new("ImageButton", ReduceMotionFrame)
				Selector.ZIndex = 2
				Selector.AutoButtonColor = false
				Selector.AnchorPoint = Vector2.new(1, 0.5)
				Selector.Size = UDim2.new(0.6, 0, 0, 50)
				Selector.Name = [[Selector]]
				Selector.Position = UDim2.new(1, 0, 0.5, 0)
				Selector.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.LeftButton
				local LeftButton = Instance.new("ImageButton", Selector)
				LeftButton.ZIndex = 3
				LeftButton.Selectable = false
				LeftButton.AnchorPoint = Vector2.new(0, 0.5)
				LeftButton.Size = UDim2.new(0, 32, 0, 50)
				LeftButton.Name = [[LeftButton]]
				LeftButton.Position = UDim2.new(0, 0, 0.5, 0)
				LeftButton.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.LeftButton.LeftButton
				local LeftButtonImage = Instance.new("ImageLabel", LeftButton)
				LeftButtonImage.ZIndex = 4
				LeftButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				LeftButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				LeftButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Left.png]]
				LeftButtonImage.Size = UDim2.new(0, 18, 0, 30)
				LeftButtonImage.Name = [[LeftButton]]
				LeftButtonImage.BackgroundTransparency = 1
				LeftButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)

				-- StarterGui.ngger.Reduce MotionFrame.Selector.RightButton
				local RightButton = Instance.new("ImageButton", Selector)
				RightButton.ZIndex = 3
				RightButton.Selectable = false
				RightButton.AnchorPoint = Vector2.new(1, 0.5)
				RightButton.Size = UDim2.new(0, 32, 0, 50)
				RightButton.Name = [[RightButton]]
				RightButton.Position = UDim2.new(1, 0, 0.5, 0)
				RightButton.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.RightButton.RightButton
				local RightButtonImage = Instance.new("ImageLabel", RightButton)
				RightButtonImage.ZIndex = 4
				RightButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				RightButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				RightButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Right.png]]
				RightButtonImage.Size = UDim2.new(0, 18, 0, 30)
				RightButtonImage.Name = [[RightButton]]
				RightButtonImage.BackgroundTransparency = 1
				RightButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)

				-- StarterGui.ngger.Reduce MotionFrame.Selector.AutoSelectButton
				local AutoSelectButton = Instance.new("ImageButton", Selector)
				AutoSelectButton.ZIndex = 2
				AutoSelectButton.Selectable = false
				AutoSelectButton.Size = UDim2.new(1, -64, 1, 0)
				AutoSelectButton.Name = [[AutoSelectButton]]
				AutoSelectButton.Position = UDim2.new(0, 32, 0, 0)
				AutoSelectButton.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.Selection1
				local Selection1 = Instance.new("TextLabel", Selector)
				Selection1.TextWrapped = true
				Selection1.ZIndex = 2
				Selection1.BorderSizePixel = 0
				Selection1.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Selection1.TextTransparency = 0.5
				Selection1.TextSize = 17
				Selection1.TextColor3 = Color3.fromRGB(255, 255, 255)
				Selection1.Size = UDim2.new(1, -64, 1, 0)
				Selection1.Name = [[Selection1]]
				Selection1.Visible = true
				Selection1.BackgroundTransparency = 1
				Selection1.Position =  UDim2.new(0, 32, 0, 0)

				if not IsOnMobile then
					ReduceMotionFrame.MouseEnter:Connect(function()
						ReduceMotionFrame.BackgroundTransparency = 0 
						Selection1.TextTransparency = 0
					end)
					
					ReduceMotionFrame.MouseLeave:Connect(function()
						ReduceMotionFrame.BackgroundTransparency = 1 
						Selection1.TextTransparency = 0.5
					end)
				end

				if Flag and not Configuration.Toggles[Flag] then
					Configuration.Toggles[Flag] = State
					SaveConfiguration()
				end

				if State then
					Selection1.Text = "On"
					task.spawn(function()
						Callback(State)
					end)
				else
					Selection1.Text = "Off"
				end

				LeftButton.MouseButton1Click:Connect(function()
					State = not State
					if State then
						Selection1.Text = "On"
					else
						Selection1.Text = "Off"
					end

					if Flag then
						Configuration.Toggles[Flag] = State
						SaveConfiguration()
					end
					
					task.spawn(function()
						Callback(State)
					end)
				end)
			
				RightButton.MouseButton1Click:Connect(function()
					State = not State

					if State then
						Selection1.Text = "On"
					else
						Selection1.Text = "Off"
					end

					if Flag then
						Configuration.Toggles[Flag] = State
						SaveConfiguration()
					end
					task.spawn(function()
						Callback(State)
					end)
				end)

			end,

			AddSelection = function(Options)
				local Name = Options.Name
				local SelectionOptions = Options.Options
				local Flag = Options.Flag
				local Default = Configuration.Selectors[Flag] or Options.Default or SelectionOptions[1]
				local Callback = Options.Callback


				local ToggleFrame = Instance.new("ImageButton", PageDuplicate)
				ToggleFrame.Active = false
				ToggleFrame.ZIndex = 2
				ToggleFrame.BorderSizePixel = 0
				ToggleFrame.SliceCenter = Rect.new(2, 2, 18, 18)
				ToggleFrame.ScaleType = Enum.ScaleType.Slice
				ToggleFrame.AutoButtonColor = false
				ToggleFrame.ImageTransparency = 1
				ToggleFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				ToggleFrame.Selectable = false
				ToggleFrame.LayoutOrder = 80
				ToggleFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				ToggleFrame.Size = UDim2.new(1, 0, 0, 50)
				ToggleFrame.Name = Name
				ToggleFrame.Position = UDim2.new(0, 0, 0, 700)
				ToggleFrame.BackgroundTransparency = 1
			
				ToggleFrame.LayoutOrder = Order
				Order = Order + 1
			
				if not IsOnMobile then
					ToggleFrame.MouseEnter:Connect(function()
						ToggleFrame.BackgroundTransparency = 0 
					end)
					
					ToggleFrame.MouseLeave:Connect(function()
						ToggleFrame.BackgroundTransparency = 1 
					end)
				end
			
				local UICorner = Instance.new("UICorner", ToggleFrame)
			
				local StatsLabel = Instance.new("TextLabel", ToggleFrame)
				StatsLabel.TextWrapped = true
				StatsLabel.ZIndex = 2
				StatsLabel.TextXAlignment = Enum.TextXAlignment.Left
				StatsLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				StatsLabel.TextSize = 17
				StatsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				StatsLabel.AutomaticSize = Enum.AutomaticSize.Y
				StatsLabel.Size = UDim2.new(0.4, -20, 1, 0)
				StatsLabel.Text = Name
				StatsLabel.Name = Name
				StatsLabel.BackgroundTransparency = 1
				StatsLabel.Position = UDim2.new(0, 10, 0, 0)
			
				local UIPadding = Instance.new("UIPadding", StatsLabel)
				UIPadding.PaddingTop = UDim.new(0, 10)
				UIPadding.PaddingBottom = UDim.new(0, 10)
			
				local Selector = Instance.new("ImageButton", ToggleFrame)
				Selector.ZIndex = 2
				Selector.AutoButtonColor = false
				Selector.AnchorPoint = Vector2.new(1, 0.5)
				Selector.Size = UDim2.new(0.6, 0, 0, 50)
				Selector.Name = "Selector"
				Selector.Position = UDim2.new(1, 0, 0.5, 0)
				Selector.BackgroundTransparency = 1
			
				local LeftButton = Instance.new("ImageButton", Selector)
				LeftButton.ZIndex = 3
				LeftButton.Selectable = false
				LeftButton.AnchorPoint = Vector2.new(0, 0.5)
				LeftButton.Size = UDim2.new(0, 32, 0, 50)
				LeftButton.Name = "LeftButton"
				LeftButton.Position = UDim2.new(0, 0, 0.5, 0)
				LeftButton.BackgroundTransparency = 1
			
				local LeftButtonImage = Instance.new("ImageLabel", LeftButton)
				LeftButtonImage.ZIndex = 4
				LeftButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				LeftButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				LeftButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Left.png]]
				LeftButtonImage.Size = UDim2.new(0, 18, 0, 30)
				LeftButtonImage.Name = "LeftButton"
				LeftButtonImage.BackgroundTransparency = 1
				LeftButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)
			
				local RightButton = Instance.new("ImageButton", Selector)
				RightButton.ZIndex = 3
				RightButton.Selectable = false
				RightButton.AnchorPoint = Vector2.new(1, 0.5)
				RightButton.Size = UDim2.new(0, 32, 0, 50)
				RightButton.Name = "RightButton"
				RightButton.Position = UDim2.new(1, 0, 0.5, 0)
				RightButton.BackgroundTransparency = 1
			
				local RightButtonImage = Instance.new("ImageLabel", RightButton)
				RightButtonImage.ZIndex = 4
				RightButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				RightButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				RightButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Right.png]]
				RightButtonImage.Size = UDim2.new(0, 18, 0, 30)
				RightButtonImage.Name = "RightButton"
				RightButtonImage.BackgroundTransparency = 1
				RightButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)
			
				local AutoSelectButton = Instance.new("ImageButton", Selector)
				AutoSelectButton.ZIndex = 2
				AutoSelectButton.Selectable = false
				AutoSelectButton.Size = UDim2.new(1, -64, 1, 0)
				AutoSelectButton.Name = "AutoSelectButton"
				AutoSelectButton.Position = UDim2.new(0, 32, 0, 0)
				AutoSelectButton.BackgroundTransparency = 1
			
				local Selection1 = Instance.new("TextLabel", Selector)
				Selection1.TextWrapped = true
				Selection1.ZIndex = 2
				Selection1.BorderSizePixel = 0
				Selection1.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Selection1.TextTransparency = 0.5
				Selection1.TextSize = 17
				Selection1.TextColor3 = Color3.fromRGB(255, 255, 255)
				Selection1.Size = UDim2.new(1, -64, 1, 0)
				Selection1.Name = "Selection1"
				Selection1.BackgroundTransparency = 1
				Selection1.Position = UDim2.new(0, 32, 0, 0)
				Selection1.Visible = true
			
				if not IsOnMobile then
					ToggleFrame.MouseEnter:Connect(function()
						ToggleFrame.BackgroundTransparency = 0 
						Selection1.TextTransparency = 0
					end)
					
					ToggleFrame.MouseLeave:Connect(function()
						ToggleFrame.BackgroundTransparency = 1 
						Selection1.TextTransparency = 0.5
					end)
				end

				local CurrentIndex = 1
				for i, option in pairs(SelectionOptions) do
					if option == Default then
						CurrentIndex = i
						break
					end
				end

				if Flag and not Configuration.Selectors[Flag] then
					Configuration.Selectors[Flag] = SelectionOptions[CurrentIndex]
					SaveConfiguration()
				end
				
				Selection1.Text = Default
			
				LeftButton.MouseButton1Click:Connect(function()
					CurrentIndex = CurrentIndex - 1
					if CurrentIndex < 1 then
						CurrentIndex = #SelectionOptions
					end
					Selection1.Text = SelectionOptions[CurrentIndex]

					task.spawn(function()
						Callback(SelectionOptions[CurrentIndex])
					end)
					if Flag then
						Configuration.Selectors[Flag] = SelectionOptions[CurrentIndex]
						SaveConfiguration()
					end
				end)
			
				RightButton.MouseButton1Click:Connect(function()
					CurrentIndex = CurrentIndex + 1
					if CurrentIndex > #SelectionOptions then
						CurrentIndex = 1
					end
					Selection1.Text = SelectionOptions[CurrentIndex]
					task.spawn(function()
						Callback(SelectionOptions[CurrentIndex])
					end)

					if Flag then
						Configuration.Selectors[Flag] = SelectionOptions[CurrentIndex]
						SaveConfiguration()
					end
				end)
				SaveConfiguration()
				Callback(Default)
			end,
			
			AddSelectionWithDesc = function(Options)
				local Name = Options.Name
				local Description = Options.Description
				local SelectionOptions = Options.Options
				local Flag = Options.Flag
				local Default = Configuration.Selectors[Flag] or Options.Default or SelectionOptions[1]
				local Callback = Options.Callback

				local ReduceMotionFrame = Instance.new("ImageButton", PageDuplicate)
				ReduceMotionFrame.Active = false
				ReduceMotionFrame.ZIndex = 2
				ReduceMotionFrame.BorderSizePixel = 0
				ReduceMotionFrame.SliceCenter = Rect.new(2, 2, 18, 18)
				ReduceMotionFrame.ScaleType = Enum.ScaleType.Slice
				ReduceMotionFrame.AutoButtonColor = false
				ReduceMotionFrame.ImageTransparency = 1
				ReduceMotionFrame.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				ReduceMotionFrame.Selectable = false
				ReduceMotionFrame.LayoutOrder = 73
				ReduceMotionFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				ReduceMotionFrame.Size = UDim2.new(1, 0, 0, 50)
				ReduceMotionFrame.Name = [[Reduce MotionFrame]]
				ReduceMotionFrame.Position = UDim2.new(0, 0, 0, 500)
				ReduceMotionFrame.BackgroundTransparency = 1

				ReduceMotionFrame.LayoutOrder = Order
				Order = Order + 1

				if not IsOnMobile then
					ReduceMotionFrame.MouseEnter:Connect(function()
						ReduceMotionFrame.BackgroundTransparency = 0 
					end)
					
					ReduceMotionFrame.MouseLeave:Connect(function()
						ReduceMotionFrame.BackgroundTransparency = 1 
					end)
				end

				-- StarterGui.ngger.Reduce MotionFrame.UICorner
				local ReduceMotionUICorner = Instance.new("UICorner", ReduceMotionFrame)

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame
				local ReduceMotionRowFrame = Instance.new("Frame", ReduceMotionFrame)
				ReduceMotionRowFrame.BackgroundTransparency = 1
				ReduceMotionRowFrame.Size = UDim2.new(0.4, -20, 0, 50)
				ReduceMotionRowFrame.Position = UDim2.new(0, 10, 0, 0)
				ReduceMotionRowFrame.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionRowFrame.Name = [[Reduce MotionRowLabelAndDescriptionFrame]]

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionLabel
				local ReduceMotionLabel = Instance.new("TextLabel", ReduceMotionRowFrame)
				ReduceMotionLabel.TextWrapped = true
				ReduceMotionLabel.ZIndex = 2
				ReduceMotionLabel.TextXAlignment = Enum.TextXAlignment.Left
				ReduceMotionLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				ReduceMotionLabel.TextSize = 17
				ReduceMotionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ReduceMotionLabel.LayoutOrder = 1
				ReduceMotionLabel.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionLabel.Size = UDim2.new(1, 0, 0, 0)
				ReduceMotionLabel.Text = Name
				ReduceMotionLabel.Name = [[Reduce MotionLabel]]
				ReduceMotionLabel.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionDescription
				local ReduceMotionDescription = Instance.new("TextLabel", ReduceMotionRowFrame)
				ReduceMotionDescription.TextWrapped = true
				ReduceMotionDescription.ZIndex = 2
				ReduceMotionDescription.TextXAlignment = Enum.TextXAlignment.Left
				ReduceMotionDescription.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				ReduceMotionDescription.TextTransparency = 0.25
				ReduceMotionDescription.TextSize = 12
				ReduceMotionDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
				ReduceMotionDescription.LayoutOrder = 2
				ReduceMotionDescription.AutomaticSize = Enum.AutomaticSize.Y
				ReduceMotionDescription.Size = UDim2.new(1, 0, 0, 0)
				ReduceMotionDescription.Text = Description
				ReduceMotionDescription.Name = [[Reduce MotionDescription]]
				ReduceMotionDescription.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionUIListLayout
				local ReduceMotionUIListLayout = Instance.new("UIListLayout", ReduceMotionRowFrame)
				ReduceMotionUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				ReduceMotionUIListLayout.Name = [[Reduce MotionUIListLayout]]
				ReduceMotionUIListLayout.Padding = UDim.new(0, 8)
				ReduceMotionUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				-- StarterGui.ngger.Reduce MotionFrame.Reduce MotionRowLabelAndDescriptionFrame.Reduce MotionUIListLayout
				local ReduceMotionUIPadding = Instance.new("UIPadding", ReduceMotionRowFrame)
				ReduceMotionUIPadding.PaddingTop = UDim.new(0, 10)
				ReduceMotionUIPadding.Name = [[Reduce MotionUIListLayout]]
				ReduceMotionUIPadding.PaddingBottom = UDim.new(0, 10)

				-- StarterGui.ngger.Reduce MotionFrame.Selector
				local Selector = Instance.new("ImageButton", ReduceMotionFrame)
				Selector.ZIndex = 2
				Selector.AutoButtonColor = false
				Selector.AnchorPoint = Vector2.new(1, 0.5)
				Selector.Size = UDim2.new(0.6, 0, 0, 50)
				Selector.Name = [[Selector]]
				Selector.Position = UDim2.new(1, 0, 0.5, 0)
				Selector.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.LeftButton
				local LeftButton = Instance.new("ImageButton", Selector)
				LeftButton.ZIndex = 3
				LeftButton.Selectable = false
				LeftButton.AnchorPoint = Vector2.new(0, 0.5)
				LeftButton.Size = UDim2.new(0, 32, 0, 50)
				LeftButton.Name = [[LeftButton]]
				LeftButton.Position = UDim2.new(0, 0, 0.5, 0)
				LeftButton.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.LeftButton.LeftButton
				local LeftButtonImage = Instance.new("ImageLabel", LeftButton)
				LeftButtonImage.ZIndex = 4
				LeftButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				LeftButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				LeftButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Left.png]]
				LeftButtonImage.Size = UDim2.new(0, 18, 0, 30)
				LeftButtonImage.Name = [[LeftButton]]
				LeftButtonImage.BackgroundTransparency = 1
				LeftButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)

				-- StarterGui.ngger.Reduce MotionFrame.Selector.RightButton
				local RightButton = Instance.new("ImageButton", Selector)
				RightButton.ZIndex = 3
				RightButton.Selectable = false
				RightButton.AnchorPoint = Vector2.new(1, 0.5)
				RightButton.Size = UDim2.new(0, 32, 0, 50)
				RightButton.Name = [[RightButton]]
				RightButton.Position = UDim2.new(1, 0, 0.5, 0)
				RightButton.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.RightButton.RightButton
				local RightButtonImage = Instance.new("ImageLabel", RightButton)
				RightButtonImage.ZIndex = 4
				RightButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				RightButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				RightButtonImage.Image = [[rbxasset://textures/ui/Settings/Slider/Right.png]]
				RightButtonImage.Size = UDim2.new(0, 18, 0, 30)
				RightButtonImage.Name = [[RightButton]]
				RightButtonImage.BackgroundTransparency = 1
				RightButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)

				-- StarterGui.ngger.Reduce MotionFrame.Selector.AutoSelectButton
				local AutoSelectButton = Instance.new("ImageButton", Selector)
				AutoSelectButton.ZIndex = 2
				AutoSelectButton.Selectable = false
				AutoSelectButton.Size = UDim2.new(1, -64, 1, 0)
				AutoSelectButton.Name = [[AutoSelectButton]]
				AutoSelectButton.Position = UDim2.new(0, 32, 0, 0)
				AutoSelectButton.BackgroundTransparency = 1

				-- StarterGui.ngger.Reduce MotionFrame.Selector.Selection1
				local Selection1 = Instance.new("TextLabel", Selector)
				Selection1.TextWrapped = true
				Selection1.ZIndex = 2
				Selection1.BorderSizePixel = 0
				Selection1.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Selection1.TextTransparency = 0.5
				Selection1.TextSize = 17
				Selection1.TextColor3 = Color3.fromRGB(255, 255, 255)
				Selection1.Size = UDim2.new(1, -64, 1, 0)
				Selection1.Name = [[Selection1]]
				Selection1.Visible = true
				Selection1.BackgroundTransparency = 1
				Selection1.Position =  UDim2.new(0, 32, 0, 0)

				if not IsOnMobile then
					ReduceMotionFrame.MouseEnter:Connect(function()
						ReduceMotionFrame.BackgroundTransparency = 0 
						Selection1.TextTransparency = 0
					end)
					
					ReduceMotionFrame.MouseLeave:Connect(function()
						ReduceMotionFrame.BackgroundTransparency = 1 
						Selection1.TextTransparency = 0.5
					end)
				end

				local CurrentIndex = 1
				for i, option in pairs(SelectionOptions) do
					if option == Default then
						CurrentIndex = i
						break
					end
				end

				if Flag and not Configuration.Selectors[Flag] then
					Configuration.Selectors[Flag] = SelectionOptions[CurrentIndex]
					SaveConfiguration()
				end
				
				Selection1.Text = Default

				LeftButton.MouseButton1Click:Connect(function()
					CurrentIndex = CurrentIndex - 1
					if CurrentIndex < 1 then
						CurrentIndex = #SelectionOptions
					end
					Selection1.Text = SelectionOptions[CurrentIndex]

					task.spawn(function()
						Callback(SelectionOptions[CurrentIndex])
					end)
					if Flag then
						Configuration.Selectors[Flag] = SelectionOptions[CurrentIndex]
						SaveConfiguration()
					end
				end)
			
				RightButton.MouseButton1Click:Connect(function()
					CurrentIndex = CurrentIndex + 1
					if CurrentIndex > #SelectionOptions then
						CurrentIndex = 1
					end
					Selection1.Text = SelectionOptions[CurrentIndex]
					task.spawn(function()
						Callback(SelectionOptions[CurrentIndex])
					end)

					if Flag then
						Configuration.Selectors[Flag] = SelectionOptions[CurrentIndex]
						SaveConfiguration()
					end
				end)
				SaveConfiguration()
				Callback(Default)

			end,

			AddSlider = function(Options)
				local Title = Options.Title
				local Min = Options.Min
				local Max = Options.Max
				local Flag = Options.Flag
				local Increment = Options.Increment or 1
				local Default =  Configuration.Sliders[Flag] or Options.Default or Min
				local DontTriggerCallbackOnDefault = Options.TriggerCallbackOnDefault
				local Callback = Options.Callback
			


				local SensitivityFrame = Instance.new("ImageButton", PageDuplicate)
				SensitivityFrame.Active = false
				SensitivityFrame.ZIndex = 2
				SensitivityFrame.BorderSizePixel = 0
				SensitivityFrame.SliceCenter = Rect.new(2, 2, 18, 18)
				SensitivityFrame.ScaleType = Enum.ScaleType.Slice
				SensitivityFrame.AutoButtonColor = false
				SensitivityFrame.ImageTransparency = 1
				SensitivityFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				SensitivityFrame.Selectable = false
				SensitivityFrame.Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png"
				SensitivityFrame.Size = UDim2.new(1, 0, 0, 50)
				SensitivityFrame.Name = Title
				SensitivityFrame.Position = UDim2.new(0, 0, 0, 150)
				SensitivityFrame.BackgroundTransparency = 1

				SensitivityFrame.LayoutOrder = Order
				Order = Order + 1

				if not IsOnMobile then
					SensitivityFrame.MouseEnter:Connect(function()
						SensitivityFrame.BackgroundTransparency = 0 
					end)
					
					SensitivityFrame.MouseLeave:Connect(function()
						SensitivityFrame.BackgroundTransparency = 1 
					end)
				end
				
				local UICorner = Instance.new("UICorner", SensitivityFrame)
				
				local SensitivityLabel = Instance.new("TextLabel", SensitivityFrame)
				SensitivityLabel.TextWrapped = true
				SensitivityLabel.ZIndex = 2
				SensitivityLabel.TextXAlignment = Enum.TextXAlignment.Left
				SensitivityLabel.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				SensitivityLabel.TextSize = 17
				SensitivityLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				SensitivityLabel.AutomaticSize = Enum.AutomaticSize.Y
				SensitivityLabel.Size = UDim2.new(0.4, -20, 1, 0)
				SensitivityLabel.Text = Title
				SensitivityLabel.Name = Title .. "Frame"
				SensitivityLabel.BackgroundTransparency = 1
				SensitivityLabel.Position = UDim2.new(0, 10, 0, 0)
				
				local UIPadding = Instance.new("UIPadding", SensitivityLabel)
				UIPadding.PaddingTop = UDim.new(0, 10)
				UIPadding.Name = "Camera SensitivityUIPadding"
				UIPadding.PaddingBottom = UDim.new(0, 10)
				
				local Slider = Instance.new("ImageButton", SensitivityFrame)
				Slider.ZIndex = 2
				Slider.AutoButtonColor = false
				Slider.AnchorPoint = Vector2.new(1, 0.5)
				Slider.Size = UDim2.new(0.6, -80, 0, 44)
				Slider.Name = "Slider"
				Slider.Position = UDim2.new(1, -80, 0.5, 0)
				Slider.BackgroundTransparency = 1
				
				local StepsContainer = Instance.new("Frame", Slider)
				StepsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
				StepsContainer.BackgroundTransparency = 1
				StepsContainer.Size = UDim2.new(1, -100, 1, 0)
				StepsContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
				StepsContainer.Name = "StepsContainer"
				
				
				-- FILLED: 218, 218, 218
				-- NOT FILLED: 58, 60, 62
				
				
				local LeftButton = Instance.new("ImageButton", Slider)
				LeftButton.ZIndex = 3
				LeftButton.Selectable = false
				LeftButton.AnchorPoint = Vector2.new(0, 0.5)
				LeftButton.Size = UDim2.new(0, 32, 0, 50)
				LeftButton.Name = "LeftButton"
				LeftButton.Position = UDim2.new(0, 0, 0.5, 0)
				LeftButton.BackgroundTransparency = 1
				
				local LeftButtonImage = Instance.new("ImageLabel", LeftButton)
				LeftButtonImage.ZIndex = 4
				LeftButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				LeftButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				LeftButtonImage.Image = "rbxasset://textures/ui/Settings/Slider/Less.png"
				LeftButtonImage.Size = UDim2.new(0, 30, 0, 30)
				LeftButtonImage.Name = "LeftButton"
				LeftButtonImage.BackgroundTransparency = 1
				LeftButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)
				
				local RightButton = Instance.new("ImageButton", Slider)
				RightButton.ZIndex = 3
				RightButton.Selectable = false
				RightButton.AnchorPoint = Vector2.new(1, 0.5)
				RightButton.Size = UDim2.new(0, 32, 0, 50)
				RightButton.Name = "RightButton"
				RightButton.Position = UDim2.new(1, 0, 0.5, 0)
				RightButton.BackgroundTransparency = 1
				
				local RightButtonImage = Instance.new("ImageLabel", RightButton)
				RightButtonImage.ZIndex = 4
				RightButtonImage.ImageColor3 = Color3.fromRGB(205, 205, 205)
				RightButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
				RightButtonImage.Image = "rbxasset://textures/ui/Settings/Slider/More.png"
				RightButtonImage.Size = UDim2.new(0, 30, 0, 30)
				RightButtonImage.Name = "RightButton"
				RightButtonImage.BackgroundTransparency = 1
				RightButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)		

				local CameraSensitivityTextBox = Instance.new("TextBox", Slider);
				CameraSensitivityTextBox.ZIndex = 3;
				CameraSensitivityTextBox.BorderSizePixel = 0;
				CameraSensitivityTextBox.TextSize = 14;
				CameraSensitivityTextBox.BackgroundColor3 = Color3.fromRGB(52, 52, 52);
				CameraSensitivityTextBox.TextColor3 = Color3.fromRGB(255, 255, 255);
				CameraSensitivityTextBox.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				CameraSensitivityTextBox.AnchorPoint = Vector2.new(0, 0.5);
				CameraSensitivityTextBox.Size = UDim2.new(0, 60, 0.800000011920929, 0);
				CameraSensitivityTextBox.Selectable = false;
				CameraSensitivityTextBox.BorderColor3 = Color3.fromRGB(205, 205, 205);
				CameraSensitivityTextBox.Text = Default;
				CameraSensitivityTextBox.Position = UDim2.new(1, 10, 0.5, 0);
				CameraSensitivityTextBox.Name = [[CameraSensitivityTextBox]];

				local CameraSensitivityUICorner = Instance.new("UICorner", CameraSensitivityTextBox);

				local Steps = {}
				local Range = Max - Min
				local StepWidth = Range / Max
				local Current = Default
				local HoveredStep = nil


				local CreateStep = function(Parent, Position)
					local Step = Instance.new("ImageButton", Parent)
					Step.Name = "Step"
					Step.Active = false
					Step.ZIndex = 3
					Step.BorderSizePixel = 0
					Step.AutoButtonColor = false
					Step.ImageTransparency = 0.36
					Step.BackgroundColor3 = Color3.fromRGB(58, 60, 62)
					Step.Selectable = false
					Step.AnchorPoint = Vector2.new(0, 0.5)
					Step.Size = UDim2.new(0.1, -4, 0, 24)
					Step.Position = Position
				
					return Step
				end
				
				local UpdateSteps = function(ClickedStep)
					for j = 1, Max do
						if j <= (ClickedStep or 0) then
							Steps[j].BackgroundColor3 = Color3.fromRGB(218, 218, 218)
							local Filler = Steps[j]:FindFirstChild("Filler")
							if Filler then
								Filler.BackgroundColor3 = Color3.fromRGB(218, 218, 218)
							end
						else
							Steps[j].BackgroundColor3 = Color3.fromRGB(58, 60, 62)
							local Filler = Steps[j]:FindFirstChild("Filler")
							if Filler then
								Filler.BackgroundColor3 = Color3.fromRGB(58, 60, 62)
							end
						end
					end
				end

				LeftButton.MouseButton1Click:Connect(function()
					if Current > Min * Increment then
						Current = math.max(Current - Increment, Min)
						UpdateSteps(Current)
						CameraSensitivityTextBox.Text = tostring(Current)
						Callback(Current)
					end
					LeftButton.Visible = Current > Min * Increment
					RightButton.Visible = Current < Max * Increment
			
					if Flag then
						Configuration.Sliders[Flag] = Current
						SaveConfiguration()
					end
				end)
				
				RightButton.MouseButton1Click:Connect(function()
					if Current < Max * Increment then
						Current = math.min(Current + Increment, Max)
						UpdateSteps(Current)
						CameraSensitivityTextBox.Text = tostring(Current)
						Callback(Current)
					end
					LeftButton.Visible = Current > Min * Increment
					RightButton.Visible = Current < Max * Increment
			
					if Flag then
						Configuration.Sliders[Flag] = Current
						SaveConfiguration()
					end
				end)
				
				CameraSensitivityTextBox.FocusLost:Connect(function(EnterPressed)
					if EnterPressed then
						local Input = CameraSensitivityTextBox.Text
						if Input ~= "" then
							Current = math.clamp(tonumber(Input), Min, Max)
							
							Current = math.round(Current / Increment) * Increment
							Current = math.clamp(Current, Min, Max)
							
							UpdateSteps(Current)
							LeftButton.Visible = Current > Min
							RightButton.Visible = Current < Max
			
							Callback(Input)
			
							if Flag then
								Configuration.Sliders[Flag] = Input
								SaveConfiguration()
							end
						end
					end
				end)
				
				if Flag then
					Configuration.Selectors[Flag] = math.clamp(Default, Min, Max)
					SaveConfiguration()
				end
				
				for i = 1, Max do
					local Position = UDim2.new((i - 1) * (1 / Max), 0, 0.5, 0)
					Steps[i] = CreateStep(StepsContainer, Position)
				
					if i == 1 or i == Max then
						local Corner = Instance.new("UICorner", Steps[i])
				
						local Filler = Instance.new("Frame", Steps[i])
						Filler.Name = "Filler"
						Filler.BorderSizePixel = 0
						Filler.BackgroundColor3 = Color3.fromRGB(58, 60, 62)
						Filler.Size = UDim2.new(0.25, 0, 1, 0)
						if i == 1 then
							Filler.Position = UDim2.new(0.75, 0, 0, 0)
						end
					end
				
					Steps[i].Size = UDim2.new(StepWidth / Range, -4, 0, 24)
				
					UserInputService.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							IsHolding = false
						end
					end)
					
					UserInputService.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							IsHolding = true
						end
					end)

					Steps[i].MouseEnter:Connect(function()
						if IsHolding then
							Current = i * Increment
							UpdateSteps(i) 
							CameraSensitivityTextBox.Text = Current;
							
							LeftButton.Visible = Current > Min
							RightButton.Visible = Current < Max

							Callback(Current)

							if Flag then
								Configuration.Sliders[Flag] = Current
								SaveConfiguration()
							end
						end
					end)

					Steps[i].MouseLeave:Connect(function()
						if IsHolding then
							Current = i * Increment
							UpdateSteps(i) 
							CameraSensitivityTextBox.Text = Current;

							LeftButton.Visible = Current > Min
							RightButton.Visible = Current < Max

							Callback(Current)

							if Flag then
								Configuration.Sliders[Flag] = Current
								SaveConfiguration()
							end
						end
					end)
					
				end

				UpdateSteps(Current)

				if DontTriggerCallbackOnDefault then
					Callback(Current)
				end
			end,

			AddNormalTextBox = function(Options)
				local Name = Options.Name
				local PlaceholderText = Options.PlaceholderText
				local Flag = Options.Flag
				local Default = Configuration.SmallTextboxes[Flag] or Options.Default or ""
				local Callback = Options.Callback

				local ButtonFrame = Instance.new("ImageButton", PageDuplicate)
				ButtonFrame.Active = false
				ButtonFrame.ZIndex = 2
				ButtonFrame.BorderSizePixel = 0
				ButtonFrame.SliceCenter = Rect.new(10, 10, 10, 10)
				ButtonFrame.ScaleType = Enum.ScaleType.Slice
				ButtonFrame.AutoButtonColor = false
				ButtonFrame.ImageTransparency = 1
				ButtonFrame.AutomaticSize = Enum.AutomaticSize.Y
				ButtonFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				ButtonFrame.Selectable = false
				ButtonFrame.LayoutOrder = 101
				ButtonFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				ButtonFrame.Size = UDim2.new(1, 0, 0, 50)
				ButtonFrame.Name = Name
				ButtonFrame.Position = UDim2.new(0, 0, 0, 800)
				ButtonFrame.BackgroundTransparency = 1

				ButtonFrame.LayoutOrder = Order
				Order = Order + 1

				if not IsOnMobile then
					ButtonFrame.MouseEnter:Connect(function()
						ButtonFrame.BackgroundTransparency = 0 
					end)
					
					ButtonFrame.MouseLeave:Connect(function()
						ButtonFrame.BackgroundTransparency = 1 
					end)
				end
				

				local UICorner = Instance.new("UICorner", ButtonFrame)

				local ButtonLabel = Instance.new("TextLabel", ButtonFrame)
				ButtonLabel.TextWrapped = true
				ButtonLabel.ZIndex = 2
				ButtonLabel.TextXAlignment = Enum.TextXAlignment.Left
				ButtonLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				ButtonLabel.TextSize = 17
				ButtonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonLabel.AutomaticSize = Enum.AutomaticSize.Y
				ButtonLabel.Size = UDim2.new(0.4000000059604645, -20, 1, 0)
				ButtonLabel.Text = Name
				ButtonLabel.Name = Name .. "Label"
				ButtonLabel.BackgroundTransparency = 1
				ButtonLabel.Position = UDim2.new(0, 10, 0, 0)

				local ButtonUIPadding = Instance.new("UIPadding", ButtonLabel)
				ButtonUIPadding.PaddingTop = UDim.new(0, 10)
				ButtonUIPadding.Name = [[UIPaddingShit]]
				ButtonUIPadding.PaddingBottom = UDim.new(0, 10)

				local ActualButton = Instance.new("ImageButton", ButtonFrame)
				ActualButton.ZIndex = 2
				ActualButton.AutoButtonColor = false
				ActualButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				ActualButton.AnchorPoint = Vector2.new(0, 0.5)
				ActualButton.Size = UDim2.new(0.6000000238418579, -10, 0, 35)
				ActualButton.Name = [[TextBoxShit]]
				ActualButton.Position = UDim2.new(0.4000000059604645, 10, 0.5, 0)
				ActualButton.BackgroundTransparency = 1

				local ButtonUICorner = Instance.new("UICorner", ActualButton)

				local UIStroke = Instance.new("UIStroke", ActualButton)
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.Name = [[Border]]
				UIStroke.Transparency = 0.30000001192092896

				local ActualTextBox = Instance.new("TextBox", ActualButton)
				ActualTextBox.TextWrapped = true
				ActualTextBox.ZIndex = 2
				ActualTextBox.BorderSizePixel = 0
				ActualTextBox.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				ActualTextBox.TextTransparency = 0.3
				ActualTextBox.TextSize = 17
				ActualTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				ActualTextBox.Size = UDim2.new(1, 0, 1, 0)
				ActualTextBox.PlaceholderText = PlaceholderText
				ActualTextBox.Name = PlaceholderText .. "TextBox"
				ActualTextBox.Text = Default
				ActualTextBox.BackgroundTransparency = 1

				local UITextSizeConstraint = Instance.new("UITextSizeConstraint", ActualTextBox)
				UITextSizeConstraint.MaxTextSize = 17


				ActualTextBox.MouseEnter:Connect(function()
					ActualButton.BackgroundTransparency = 0 
				end)
				
				ActualTextBox.MouseLeave:Connect(function()
					ActualButton.BackgroundTransparency = 1 
				end)

				ActualTextBox.FocusLost:Connect(function(EnterPressed)
					if EnterPressed then
						local Input = ActualTextBox.Text
						if Input ~= "" then
							Callback(Input)
							if Flag then
								Configuration.SmallTextboxes[Flag] = Input
								SaveConfiguration()
							end
						end
					end
				end)

			end,

			AddLargeTextbox = function(Options)
				local PlaceholderText = Options.PlaceholderText
				local Callback = Options.Callback

				local FreeCommentsFrame = Instance.new("Frame", PageDuplicate)
				FreeCommentsFrame.BackgroundTransparency = 1
				FreeCommentsFrame.LayoutOrder = 3
				FreeCommentsFrame.Size = UDim2.new(1, 0, 0, 60)
				FreeCommentsFrame.AutomaticSize = Enum.AutomaticSize.Y
				FreeCommentsFrame.Name = "FreeComments"

				FreeCommentsFrame.LayoutOrder = Order
				Order = Order + 1

				local RightComponentWrapper = Instance.new("Frame", FreeCommentsFrame)
				RightComponentWrapper.BackgroundTransparency = 1
				RightComponentWrapper.LayoutOrder = 3
				RightComponentWrapper.Size = UDim2.new(1, 0, 1, 0)
				RightComponentWrapper.AutomaticSize = Enum.AutomaticSize.Y
				RightComponentWrapper.Name = "RightComponentWrapper"

				local RightComponent = Instance.new("Frame", RightComponentWrapper)
				RightComponent.BackgroundColor3 = Color3.fromRGB(36, 38, 40)
				RightComponent.Size = UDim2.new(1, 0, 0, 1)
				RightComponent.AutomaticSize = Enum.AutomaticSize.Y
				RightComponent.Name = "RightComponent"

				local UICorner = Instance.new("UICorner", RightComponent)

				local UIPadding = Instance.new("UIPadding", RightComponent)
				UIPadding.PaddingTop = UDim.new(0, 10)
				UIPadding.PaddingRight = UDim.new(0, 10)
				UIPadding.PaddingBottom = UDim.new(0, 10)
				UIPadding.PaddingLeft = UDim.new(0, 10)

				local AbuseReportsText = Instance.new("TextBox", RightComponent)
				AbuseReportsText.CursorPosition = -1
				AbuseReportsText.BorderSizePixel = 0
				AbuseReportsText.TextSize = 20
				AbuseReportsText.TextXAlignment = Enum.TextXAlignment.Left
				AbuseReportsText.TextWrapped = true
				AbuseReportsText.TextYAlignment = Enum.TextYAlignment.Top
				AbuseReportsText.TextColor3 = Color3.fromRGB(190, 191, 191)
				AbuseReportsText.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				AbuseReportsText.LayoutOrder = 1
				--AbuseReportsText.MultiLine = true
				AbuseReportsText.Text = ""
				AbuseReportsText.PlaceholderText = PlaceholderText
				AbuseReportsText.Size = UDim2.new(1, 0, 0, 40)
				AbuseReportsText.ClipsDescendants = true
				AbuseReportsText.AutomaticSize = Enum.AutomaticSize.Y
				AbuseReportsText.Name = "AbuseReportsText"
				AbuseReportsText.ClearTextOnFocus = false

				local RightLayout = Instance.new("UIListLayout", RightComponentWrapper)
				RightLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				RightLayout.Name = "Layout"

				local FreeCommentsLayout = Instance.new("UIListLayout", FreeCommentsFrame)
				FreeCommentsLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				FreeCommentsLayout.FillDirection = Enum.FillDirection.Horizontal
				FreeCommentsLayout.Name = "Layout"
				FreeCommentsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				FreeCommentsLayout.SortOrder = Enum.SortOrder.LayoutOrder

				local FreeCommentsPadding = Instance.new("UIPadding", FreeCommentsFrame)
				FreeCommentsPadding.Name = "Padding"

				AbuseReportsText.FocusLost:Connect(function(EnterPressed)
					if EnterPressed then
						local Input = AbuseReportsText.Text
						if Input ~= "" then
							Callback(Input)
						end
					end
				end)

			end,

			AddStat = function(StatText, Text)
				local StatFrame = Instance.new("ImageButton", PageDuplicate)
				StatFrame.Active = false
				StatFrame.ZIndex = 2
				StatFrame.BorderSizePixel = 0
				StatFrame.SliceCenter = Rect.new(2, 2, 18, 18)
				StatFrame.ScaleType = Enum.ScaleType.Slice
				StatFrame.AutoButtonColor = false
				StatFrame.ImageTransparency = 1
				StatFrame.ImageColor3 = Color3.fromRGB(36, 38, 40)
				StatFrame.Selectable = false
				StatFrame.LayoutOrder = 61
				StatFrame.Image = [[rbxasset://textures/ui/VR/rectBackgroundWhite.png]]
				StatFrame.Size = UDim2.new(1, 0, 0, 50)
				StatFrame.Name = StatText
				StatFrame.Position = UDim2.new(0, 0, 0, 1100)
				StatFrame.BackgroundTransparency = 1

				StatFrame.LayoutOrder = Order
				Order = Order + 1

				if not IsOnMobile then
					StatFrame.MouseEnter:Connect(function()
						StatFrame.BackgroundTransparency = 0 
					end)
					
					StatFrame.MouseLeave:Connect(function()
						StatFrame.BackgroundTransparency = 1 
					end)
				end
				
				local StatUICorner = Instance.new("UICorner", StatFrame)
				
				local StatLabel = Instance.new("TextLabel", StatFrame)
				StatLabel.TextWrapped = true
				StatLabel.ZIndex = 2
				StatLabel.TextXAlignment = Enum.TextXAlignment.Left
				StatLabel.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				StatLabel.TextSize = 17
				StatLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				StatLabel.AutomaticSize = Enum.AutomaticSize.Y
				StatLabel.Size = UDim2.new(0.4, -20, 1, 0)
				StatLabel.Text = StatText
				StatLabel.Name = StatText .. "Label"
				StatLabel.BackgroundTransparency = 1
				StatLabel.Position = UDim2.new(0, 10, 0, 0)
				
				local StatUIPadding = Instance.new("UIPadding", StatLabel)
				StatUIPadding.PaddingTop = UDim.new(0, 10)
				StatUIPadding.Name = [[Output DeviceUIPadding]]
				StatUIPadding.PaddingBottom = UDim.new(0, 10)
				
				local Selector = Instance.new("ImageButton", StatFrame)
				Selector.ZIndex = 2
				Selector.AutoButtonColor = false
				Selector.AnchorPoint = Vector2.new(1, 0.5)
				Selector.Size = UDim2.new(0.6, 0, 0, 50)
				Selector.Name = [[Selector]]
				Selector.Position = UDim2.new(1, 0, 0.5, 0)
				Selector.BackgroundTransparency = 1
				
				local Selection1 = Instance.new("TextLabel", Selector)
				Selection1.TextWrapped = true
				Selection1.ZIndex = 2
				Selection1.BorderSizePixel = 0
				Selection1.FontFace = Font.new([[rbxasset://fonts/families/BuilderSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Selection1.TextTransparency = 0.5
				Selection1.TextSize = 17
				Selection1.TextColor3 = Color3.fromRGB(255, 255, 255)
				Selection1.Size = UDim2.new(1, -64, 1, 0)
				Selection1.Text = Text
				Selection1.Name = [[Selection1]]
				Selection1.BackgroundTransparency = 1
				Selection1.Position = UDim2.new(0, 32, 0, 0)

				ChangeText = function(NewText)
					Selection1.Text = NewText
				end
				
				GetText = function()
					return Selection1.Text
				end
				
				ResetText = function()
					Selection1.Text = Text
				end
				
				return {
					ChangeText = ChangeText,
					GetText = GetText,
					ResetText = ResetText
				}
			end,
			

			Show = function()
				if IsSubMenu then
					for _, v in pairs(MenuContainer.HubBar.HubBarContainer:GetChildren()) do
						if v:IsA("TextButton") then
							v.TabSelection.Visible = false
							v.TabLabel.Title.TextTransparency = 0.5
							v.TabLabel.Icon.ImageTransparency = 0.5
						end
					end
					for _, v in pairs(MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:GetChildren()) do
						if v:IsA("Frame") then
							v.Visible = false
						end
					end
					PageDuplicate.Visible = true
					PageDuplicate.Position = UDim2.fromScale(0, 0)
				else
					for _, v in pairs(MenuContainer.PageViewClipper.PageView.PageViewInnerFrame:GetChildren()) do
						if v:IsA("Frame") then
							v.Visible = false
						end
					end
					for _, v in pairs(MenuContainer.HubBar.HubBarContainer:GetChildren()) do
						if v:IsA("TextButton") and v.Name ~= Tab.Name then
							v.TabSelection.Visible = false
							v.TabLabel.Title.TextTransparency = 0.5
							v.TabLabel.Icon.ImageTransparency = 0.5
							v.MouseButton1Click:Connect(function()
								PageDuplicate.Visible = false
								Tab.TabLabel.Title.TextTransparency = 0.5
								Tab.TabLabel.Icon.ImageTransparency = 0.5
								Tab.TabSelection.Visible = false
							end)
						end
					end
					Tab.TabLabel.Title.TextTransparency = 0
					Tab.TabLabel.Icon.ImageTransparency = 0
					PageDuplicate.Visible = true
					PageDuplicate.Position = UDim2.fromScale(0, 0)
					Tab.TabSelection.Visible = true
				end
			end,

			CreateNotification = function(HeaderText, Description, Image, Duration)
				local Canvas = Instance.new("Frame", ActiveNotifications)
				Canvas.BorderSizePixel = 0
				Canvas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Canvas.AnchorPoint = Vector2.new(0.5, 0)
				Canvas.BackgroundTransparency = 1
				Canvas.Size = UDim2.new(0.35, 0, 0.026, 0)
				Canvas.BorderColor3 = Color3.fromRGB(28, 43, 54)
				Canvas.Position = UDim2.new(0.5, 0, 0, 0)
				Canvas.Name = "Canvas"

				local Background = Instance.new("ImageLabel", Canvas)
				Background.BorderSizePixel = 0
				Background.SliceCenter = Rect.new(512, 512, 512, 512)
				Background.ScaleType = Enum.ScaleType.Slice
				Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Background.ImageColor3 = Colours[Configuration.Selectors.Theme] or Colours["Royal Violet"]
				Background.ImageTransparency = 0.3
				Background.AnchorPoint = Vector2.new(0.5, 0.5)
				Background.Image = "rbxassetid://11983017276"
				Background.Size = UDim2.new(0.25, 0, 0.6, 0)
				Background.Name = "Background"
				Background.BackgroundTransparency = 1
				Background.Position = UDim2.new(0.5, 0, 0.5, 0)

				local Scale = Instance.new("UIScale", Background)
				Scale.Name = "Scale"

				local Content = Instance.new("CanvasGroup", Canvas)
				Content.ZIndex = 2
				Content.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Content.AnchorPoint = Vector2.new(0.5, 0.5)
				Content.BackgroundTransparency = 1
				Content.Size = UDim2.new(1, 0, 0.6, 0)
				Content.BorderColor3 = Color3.fromRGB(28, 43, 54)
				Content.Position = UDim2.new(0.5, 0, 0.5, 0)
				Content.Name = "Content"

				local Header = Instance.new("TextLabel", Content)
				Header.TextWrapped = true
				Header.ZIndex = 2
				Header.TextScaled = true
				Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Header.TextXAlignment = Enum.TextXAlignment.Left
				Header.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				Header.TextTransparency = 0.2
				Header.TextSize = 14
				Header.TextColor3 = Color3.fromRGB(255, 255, 255)
				Header.AnchorPoint = Vector2.new(0.5, 0.5)
				Header.Size = UDim2.new(0.722, 0, 0.302, 0)
				Header.BorderColor3 = Color3.fromRGB(28, 43, 54)
				Header.Text = HeaderText
				Header.Name = "Header"
				Header.BackgroundTransparency = 1
				Header.Position = UDim2.new(0.596, 0, 0.352, 0)
				Header.Visible = false

				local Icon = Instance.new("ImageLabel", Content)
				Icon.ZIndex = 2
				Icon.BorderSizePixel = 0
				Icon.ScaleType = Enum.ScaleType.Fit
				Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Icon.ImageTransparency = 0.2
				Icon.AnchorPoint = Vector2.new(0.5, 0.5)
				Icon.Image = Image
				Icon.Size = UDim2.new(0.089, 0, 0.48, 0)
				Icon.BorderColor3 = Color3.fromRGB(28, 43, 54)
				Icon.Name = "Icon"
				Icon.BackgroundTransparency = 1
				Icon.Position = UDim2.new(0.122, 0, 0.486, 0)
				Icon.Visible = false 

				local Message = Instance.new("TextLabel", Content)
				Message.TextWrapped = true
				Message.ZIndex = 2
				Message.TextScaled = true
				Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Message.TextXAlignment = Enum.TextXAlignment.Left
				Message.FontFace = Font.new("rbxasset://fonts/families/" .. Configuration.Selectors.Font .. ".json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Message.TextTransparency = 0.5
				Message.TextSize = 14
				Message.TextColor3 = Color3.fromRGB(255, 255, 255)
				Message.AnchorPoint = Vector2.new(0.5, 0.5)
				Message.Size = UDim2.new(0.722, 0, 0.266, 0)
				Message.BorderColor3 = Color3.fromRGB(28, 43, 54)
				Message.Text = Description
				Message.Name = "Message"
				Message.BackgroundTransparency = 1
				Message.Position = UDim2.new(0.596, 0, 0.686, 0)
				Message.Visible = false

				local Size = Instance.new("UISizeConstraint", Canvas)
				Size.Name = "Size"
				Size.MaxSize = Vector2.new(350, 101)
				Size.MinSize = Vector2.new(300, 101)	

				ContentProvider:PreloadAsync({
					Icon.Image,
					Background.Image
				})

				local tweenInfoIn = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
				local sizeGoalIn = {
					Size = UDim2.new(1, 0, 0.6, 0)
				}
				local tweenIn = TweenService:Create(Background, tweenInfoIn, sizeGoalIn)

				tweenIn:Play()
				tweenIn.Completed:Connect(function()
					Icon.Visible = true
					Message.Visible = true
					Header.Visible = true
					
					task.delay(Duration, function()
						Icon.Visible = false
						Message.Visible = false
						Header.Visible = false
					

						local tweenInfoOut = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
						local sizeGoalOut = {
							Size = UDim2.new(1, 0, 0.25, 0)
						}
						local tweenOut = TweenService:Create(Background, tweenInfoOut, sizeGoalOut)
						
						tweenOut:Play()
						tweenOut.Completed:Connect(function()
							Canvas:Destroy()
						end)
					end)
				end)

			end,

			CreateNotificationV2 = function(Description, Image, Duration)
				local OriginalText = RobloxGui.Children.ErrorMessage.ErrorText.Text
				local OriginalImage = RobloxGui.Children.ErrorMessage.ErrorIcon.Image
				
				RobloxGui.Children.ErrorMessage.ErrorText.Text = Description
				RobloxGui.Children.ErrorMessage.ErrorIcon.Image = Image
				RobloxGui.Children.ErrorMessage.Visible = true

				task.delay(Duration, function()
					RobloxGui.Children.ErrorMessage.ErrorText.Text = OriginalText
					RobloxGui.Children.ErrorMessage.ErrorIcon.Image = OriginalImage
					RobloxGui.Children.ErrorMessage.Visible = false
				end)
			end,
		}

		return PageFunctions
	end,
}
return RobloxGUIAPI
