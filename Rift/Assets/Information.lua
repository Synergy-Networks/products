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
            :gsub("\n+$", "")  -- remove trailing newlines
    
        Changelogs = string.format('<font size="15"><b><u>%s</u></b></font>%s', Title, Description)
    end

end



return {
    VERSION = "1.25.22.20",
    CHANNEL = "Beta",
    ADVERTISEMENT_ENABLED = false,
    CHANGELOGS = Changelogs .. "\n\nThis update log may not be up to date!",
    GAMES_SUPPORTED =  "<font color=\"#00ff00\">◉</font> → Maintained & Updated\n" ..
            "<font color=\"#ffff00\">◉</font> → Experimental / Has Issues\n" ..
            "<font color=\"#ff0000\">◉</font> → Offline / Broken\n\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Grow a Garden</b>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>99 Nights in the Forest</b>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Steal a Brainrot</b>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Plants Vs Brainrots</b> <font color='%AccentColor%'>[NEW]</font>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Forsaken</b>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Dead Rails</b>",
    SCRIPT_NAMES = {
        "BetterBypasser (Chat Bypass)",
        "Rizzler"
    },
    SCRIPT_LINKS = {
        ["Rizzler"] = [[-- Discord Server: https://vaultcord.win/synergy
-- Join our server to get consistent updates about our products and services

loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/OpenSource/main/rizzler.lua"))()]],
        ["BetterBypasser (Chat Bypass)"] = [[loadstring(game:HttpGet("https://github.com/Synergy-Networks/products/raw/main/BetterBypasser/loader.lua"))()]]
    },
    ADVERTISEMENTS = {
        'There is a <font color="#DC551E"><b>CLIENT DESYNC</b></font> for Steal a Brainrot. Enjoy!'
    }
}
