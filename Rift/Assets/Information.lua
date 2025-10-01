local Changelogs = "View the change logs at https://docs.rifton.top/changelogs."

local Success, Response = pcall(function()
    return request({
        Url = "https://docs.rifton.top/changelogs/rss.xml",
        Method = "GET"
    })
end)

if Success and Response.Success then
    local Body = Response.Body
    local LatestItem = Body:match("<item>(.-)</item>")
    local Description, Title
    if LatestItem then
        Description = LatestItem:match("<description><!%[CDATA%[(.-)%]%]></description>") 
                      or LatestItem:match("<description>(.-)</description>")
                      or LatestItem:match("<content:encoded><!%[CDATA%[(.-)%]%]></content:encoded>")
                      or LatestItem:match("<content:encoded>(.-)</content:encoded>")
        Title = LatestItem:match("<title><!%[CDATA%[(.-)%]%]></title>") or LatestItem:match("<title>(.-)</title>")
    end

    if Description and Title then
        Description = Description
            :gsub("&lt;", "<"):gsub("&gt;", ">"):gsub("&amp;", "&")
            :gsub("&quot;", '"'):gsub("&#39;", "'")
            :gsub("<ul>", ""):gsub("</ul>", "")
            :gsub("<ol>", ""):gsub("</ol>", "")
            :gsub("<li>", "• "):gsub("</li>", "\n")
            :gsub("<br ?/?>", "\n")
            :gsub("<p>", ""):gsub("</p>", "\n")
            :gsub("<strong>", "<b>"):gsub("</strong>", "</b>")
            :gsub("<em>", "<i>"):gsub("</em>", "</i>")
            :gsub("<u>", "<u>"):gsub("</u>", "</u>")
            :gsub("<(?!/?(b|i|u|font)).->", "")
            :gsub("\n+", "\n")
            :gsub("\n+$", "")
    
        Changelogs = string.format('<font size="15"><b><u>%s</u></b></font>%s', Title, Description)
    end
end

local Date = os.date("*t")
local HolidayMessage = ""

if Date.month == 1 and Date.day == 1 then
    HolidayMessage = "\n\n<font color=\"#00FF00\"><b>Happy New Year!</b></font> Start the year with excitement, new goals, and adventures in your favourite games. May this year bring you fun and success!"
elseif Date.month == 2 and Date.day == 14 then
    HolidayMessage = "\n\n<font color=\"#FF69B4\"><b>Happy Valentine's Day!</b></font> Celebrate friendship, love, and good vibes while enjoying your favourite games. Share the joy with others today!"
elseif Date.month == 3 and Date.day == 17 then
    HolidayMessage = "\n\n<font color=\"#00FF00\"><b>Happy St. Patrick's Day!</b></font> Enjoy the luck of the day, explore new adventures, and find hidden treasures in your games!"
elseif Date.month == 4 and Date.day == 1 then
    HolidayMessage = "\n\n<font color=\"#FFFF00\"><b>April Fool's Day!</b></font> Watch out for surprises, tricks, and fun moments in your games today!"
elseif Date.month == 5 and Date.day == 1 then
    HolidayMessage = "\n\n<font color=\"#00FFFF\"><b>Happy May Day!</b></font> Take a break, celebrate spring, and enjoy some relaxing or exciting gameplay!"
elseif Date.month == 7 and Date.day == 4 then
    HolidayMessage = "\n\n<font color=\"#FF0000\"><b>Happy Independence Day!</b></font> Celebrate freedom and have a blast playing your favourite games today!"
elseif Date.month == 10 and Date.day == 31 then
    HolidayMessage = "\n\n<font color=\"#FFA500\"><b>Happy Halloween!</b></font> Get into the spooky spirit, enjoy eerie adventures, and have fun exploring haunted challenges!"
elseif Date.month == 11 and Date.day >= 23 and Date.day <= 29 and os.date("%w", os.time({year=Date.year, month=11, day=1})) == "5" then
    HolidayMessage = "\n\n<font color=\"#FFFF00\"><b>Black Friday!</b></font> Check out great deals, explore new updates, and enjoy exciting gameplay opportunities today!"
elseif Date.month == 12 and Date.day >= 24 and Date.day <= 26 then
    HolidayMessage = "\n\n<font color=\"#FF0000\"><b>Merry Christmas!</b></font> Celebrate the holiday season, enjoy time with friends, and dive into festive adventures in your favourite games!"
elseif Date.month == 12 and Date.day == 31 then
    HolidayMessage = "\n\n<font color=\"#00FFFF\"><b>Happy New Year's Eve!</b></font> Prepare for the countdown, reflect on the year, and enjoy memorable moments in your games!"
end

local GamesSupported = "<font color=\"#00ff00\">◉</font> → Maintained & Updated\n" ..
    "<font color=\"#ffff00\">◉</font> → Experimental / Has Issues\n" ..
    "<font color=\"#ff0000\">◉</font> → Offline / Broken\n\n" ..
    "<font color=\"#00ff00\">◉</font> <b>Grow a Garden</b>\n" ..
    "<font color=\"#00ff00\">◉</font> <b>99 Nights in the Forest</b>\n" ..
    "<font color=\"#00ff00\">◉</font> <b>Steal a Brainrot</b>\n" ..
    "<font color=\"#00ff00\">◉</font> <b>Plants Vs Brainrots</b> <font color='%AccentColor%'>[NEW]</font>\n" ..
    "<font color=\"#00ff00\">◉</font> <b>Forsaken</b>\n" ..
    "<font color=\"#00ff00\">◉</font> <b>Dead Rails</b>" ..
    HolidayMessage

return {
    VERSION = "1.25.22.23",
    CHANNEL = "Beta",
    ADVERTISEMENT_ENABLED = false,
    CHANGELOGS = Changelogs .. "\n\nThis update log may not be up to date!",
    GAMES_SUPPORTED = GamesSupported,
    SCRIPT_NAMES = {
        "BetterBypasser (Chat Bypass)",
        "Rizzler"
    },
    SCRIPT_LINKS = {
        ["Rizzler"] = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/OpenSource/main/rizzler.lua"))()]],
        ["BetterBypasser (Chat Bypass)"] = [[loadstring(game:HttpGet("https://github.com/Synergy-Networks/products/raw/main/BetterBypasser/loader.lua"))()]]
    },
    ADVERTISEMENTS = {
        'There is a <font color="#DC551E"><b>DUPE</b></font> for Plants Vs Brainrots. Enjoy!'
    }
}
