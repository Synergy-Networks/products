return {
	VERSION = "1.25.7.3",
	CHANNEL = "Beta",
	ADVERTISEMENT_ENABLED = true,
	CHANGELOGS = [[
<b>Dead Rails</b><br/>
• Fixed Rift not executing properly<br/>
• Rift now adaptively searches for remotes<br/>
• Removed Train module until further notice<br/>
• Fixed Kill Aura / Auto Shoot<br/>

<br/>
<b>Fisch</b><br/>
• Fixed Rift not executing properly
]],
	GAMES_SUPPORTED =   "<font color=\"#00ff00\">◉</font> → Maintained & Updated\n" ..
                        "<font color=\"#ffff00\">◉</font> → Experimental / Has Issues\n" ..
                        "<font color=\"#ff0000\">◉</font> → Offline / Broken\n\n" ..
                        "<font color=\"#00ff00\">◉</font> <b>Dead Rails</b>\n" ..
                        "<font color=\"#00ff00\">◉</font> <b>Fisch</b>\n" ..
                        "<font color=\"#00ff00\">◉</font> <b>Forsaken</b>", 
	GAME_NAMES = {
		"Dead Rails",
		"Fisch",
		"Forsaken"
	},
	GAME_TELEPORTS = {
		["Dead Rails"] = 116495829188952,
		["Fisch"] = 16732694052,
		["Forsaken"] = 18687417158
	},
	SCRIPT_NAMES = {
		"BetterBypasser (Chat Bypass)",
		"Rizzler"
	},
	SCRIPT_LINKS = {
		["BetterBypasser (Chat Bypass)"] = [[-- Discord Server: https://vaultcord.win/synergy
-- Join our server to get consistent updates about our products and services

loadstring(game:HttpGet("https://github.com/Synergy-Networks/products/raw/main/BetterBypasser/loader.lua"))()]],
		["Rizzler"] = [[-- Discord Server: https://vaultcord.win/synergy
-- Join our server to get consistent updates about our products and services

loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/OpenSource/main/rizzler.lua"))()]]
	},
	ADVERTISEMENTS = {
		"Rift can be keyless — enjoy access for just $3.75 via Crypto. Buy now at https://rifton.top",
		"We'd appreciate it if you could give feedback to us! Check out our Discord at https://vaultcord.win/synergy",
		"Wanna get rid of these ads? Pay $3.75 via Crypto which comes with a keyless version aswell. Buy now at https://rifton.top"
	}
}
