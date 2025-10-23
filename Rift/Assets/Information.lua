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

return {
    VERSION = "1.25.24.4",
    CHANNEL = "Beta",
    ADVERTISEMENT_ENABLED = true,
    CHANGELOGS = Changelogs .. "\n\nThis update log may not be up to date!",
    GAMES_SUPPORTED =  "<font color=\"#00ff00\">◉</font> → Maintained & Updated\n" ..
            "<font color=\"#ffff00\">◉</font> → Experimental / Has Issues\n" ..
            "<font color=\"#ff0000\">◉</font> → Offline / Broken\n\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Grow a Garden</b>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>99 Nights in the Forest</b>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Steal a Brainrot</b> <font color='%AccentColor%'>[KEYLESS]\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Plants Vs Brainrots</b></font>\n" ..
            "<font color=\"#00ff00\">◉</font> <b>Fisch</b>\n" ..
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
        'Fisch is <font color="#DC551E"><b>BACK</b></font>. Come check it out!'
    },
    KEY_SYS_INFO =
        "<font color='%AccentColor%'>❖ Tired of the key system?</font>\n" ..
        "<font color='%AccentColor%'>·</font> You can purchase a key from our official resellers at https://rifton.top/resellers using multiple payment options.\n\n" ..

        "<font color='%AccentColor%'>❖ How do temporary keys work?</font>\n" ..
        "<font color='%AccentColor%'>·</font> Completing one checkpoint grants you 24 hours of access to Rift under a temporary key.\n\n" ..

        "<font color='%AccentColor%'>❖ What games are supported?</font>\n" ..
        "<font color='%AccentColor%'>·</font> Grow a Garden, Plants vs Brainrots, Steal a Brainrot, Fisch, Forsaken, and Dead Rails.\n\n" ..

        "<font color='%AccentColor%'>❖ Having trouble loading the key page?</font>\n" ..
        "<font color='%AccentColor%'>·</font> Use a modern browser such as Google Chrome.\n" ..
        "<font color='%AccentColor%'>·</font> Temporarily disable firewalls, VPNs, proxies, or antivirus software that may block the page.\n" ..
        "<font color='%AccentColor%'>·</font> We also recommend enabling the <b>Cloudflare WARP</b> app for the most stable connection: https://1.1.1.1\n\n" ..

        "<font color='%AccentColor%'>❖ Why isn’t the LootLabs task completing?</font>\n" ..
        "<font color='%AccentColor%'>·</font> Complete each task fully, then wait on the page for at least 3 minutes. After that, access should be granted automatically.\n\n" ..

        "<font color='%AccentColor%'>❖ Why is my key invalid?</font>\n" ..
        "<font color='%AccentColor%'>·</font> Double-check that there are no extra spaces in your key.\n" ..
        "<font color='%AccentColor%'>·</font> Expired keys cannot be reused — generate a new one or purchase a permanent key.\n" ..
        "<font color='%AccentColor%'>·</font> Keys created or shared by others are not valid for your device."

}
