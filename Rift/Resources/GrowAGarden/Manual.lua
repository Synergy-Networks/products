return {
	Mutations = {
		"Acidic",
		"Alienlike",
		"Amber",
		"AncientAmber",
		"Aurora",
		"Bloodlit",
		"Blitzshock",
		"Burnt",
		"Celestial",
		"Ceramic",
		"Chakra",
		"Chilled",
		"Choc",
		"Clay",
		"Cloudtouched",
		"Cooked",
		"Corrupt",
		"CorruptChakra",
		"CorruptFoxfireChakra",
		"Dawnbound",
		"Disco",
		"Drenched",
		"Eclipsed",
		"Enlightened",
		"FoxfireChakra",
		"Fried",
		"Friendbound",
		"Frozen",
		"Galactic",
		"HarmonisedChakra",
		"HarmonisedFoxfireChakra",
		"Heavenly",
		"HoneyGlazed",
		"Infected",
		"Jackpot",
		"Lightcycle",
		"Meatball",
		"Meteoric",
		"Molten",
		"Moonlit",
		"OldAmber",
		"Paradisal",
		"Pasta",
		"Plasma",
		"Pollinated",
		"Radioactive",
		"Sandy",
		"Sauce",
		"Shocked",
		"Sliced",
		"Spaghetti",
		"Static",
		"Subzero",
		"Sundried",
		"Tempestuous",
		"Touchdown",
		"Toxic",
		"Tranquil",
		"Twisted",
		"Verdant",
		"Voidtouched",
		"Wet",
		"Wiltproof",
		"Windstruck",
		"Zombified"
	},
	PetMutations = {
		"Ascended",
		"Corrupted",
		"Frozen",
		"Golden",
		"Inverted",
		"IronSkin",
		"Mega",
		"Normal",
		"Radiant",
		"Rainbow",
		"Rideable",
		"Shiny",
		"Shocked",
		"Tiny",
		"Tranquil",
		"Windy"
	},
	CookingRecipes = {
		Soup = {},
		Sandwich = {
			"Tomato",
			"Corn"
		},
		Pie = {
			{
				"Pumpkin",
				"Apple"
			},
			{
				"Corn",
				"Coconut"
			}
		},
		Burger = {
			"Pepper",
			"Corn",
			"Tomato"
		},
		Hotdog = {
			"Pepper",
			{
				"Corn",
				"Banana"
			} 
		},
		Waffle = {
			{
				"Pumpkin",
				"Watermelon"
			},
			{
				"Pumpkin",
				"Sugar Apple"
			}
		},
		Salad = {
			"Tomato"
		},
		Sushi = {
			"Bamboo",
			"Corn"
		},
		IceCream = {
			{
				"Blueberry",
				"Corn"
			},
			{
				"Pineapple",
				"Corn"
			}
		},
		Donut = {
			{
				"Corn",
				"Blueberry",
				"Strawberry"
			},
			{
				"Strawberry",
				"Tomato",
				"Apple"
			}
		},
		Pizza = {
			"Corn",
			"Tomato",
			"Pepper"
		},
		Cake = {
			"Watermelon",
			"Corn"
		}
	},

	Variants = {
		"Normal",
		"Gold",
		"Rainbow"
	},
	Teleports = {
		"Seeds Shop",
		"Sell Shop",
		"Gear Shop",
		"Cosmetics Shop",
		"Eggs Shop",
		"Event Area"
	},
	Recipes = {
		EventWorkbench = {
			"Ancient Seed Pack",
			"Archaeologist Crate",
			"Dino Crate",
			"Dinosaur Egg",
			"Mutation Spray Amber",
			"Primal Egg"
		},
		MiniWorkbench = {
			"Amber Spine",
			"Aloe Vera",
			"Grand Volcania",
			"Guanabana",
			"Horsetail",
			"Lingonberry",
			"Peace Lily"
		},
		LargeWorkbench = {
			"Anti Bee Egg",
			"Berry Blusher Sprinkler",
			"Flower Froster Sprinkler",
			"Honey Crafters Crate",
			"Mutation Spray Choc",
			"Mutation Spray Pollinated",
			"Pack Bee",
			"Reclaimer",
			"Small Toy",
			"Small Treat",
			"Spice Spritzer Sprinkler",
			"Stalk Sprout Sprinkler",
			"Sweet Soaker Sprinkler",
			"Tropical Mist Sprinkler"
		}
	},
	ServerEvents = {
		["Rain"] = "RainEvent",
		["Thunderstorm"] = "Thunderstorm",
		["Frost"] = "Frost",
		["SheckleRain"] = "SheckleRain",
		["MeteorShower"] = "MeteorShower",
		["ChocolateRain"] = "ChocolateRain",
		["JandelStorm"] = "JandelStorm",
		["DJJhai"] = "DJJhai",
		["Tornado"] = "Tornado",
		["MonsterMash"] = "MonsterMash",
		["JandelLazer"] = "JandelLazer",
		["BeeNado"] = "BeeNado",
		["BeeStorm"] = "BeeStorm",
		["Blackhole"] = "Blackhole",
		["BeeEvent"] = "BeeEvent",
		["Rainbow"] = "Rainbow",
		["JandelFloat"] = "JandelFloat",
		["Windy"] = "Windy",
		["SunGod"] = "SunGod",
		["Volcano"] = "Volcano",
		["MeteorStrike"] = "MeteorStrike",
		["Heatwave"] = "Heatwave",
		["AlienInvasion"] = "AlienInvasion",
		["SpaceTravel"] = "SpaceTravel",
		["UnderTheSea"] = "UnderTheSea",
		["Gale"] = "Gale",
		["SummerEvent"] = "SummerEvent",
		["SolarFlare"] = "SolarFlare",
		["Drought"] = "Drought",
		["TropicalRain"] = "TropicalRain",
		["ChickenRain"] = "ChickenRain",
		["AuroraBorealis"] = "AuroraBorealis",
		["Sandstorm"] = "Sandstorm",
		["ShootingStars"] = "ShootingStars",
		["DJSandstorm"] = "DJSandstorm",
		["Obby"] = "Obby",
		["PoolParty"] = "PoolParty",
		["AirHead"] = "AirHead",
		["CrystalBeams"] = "CrystalBeams",
		["TextCollect"] = "TextCollect",
		["JandelZombie"] = "JandelZombie",
		["RadioactiveCarrot"] = "RadioactiveCarrot",
		["Armageddon"] = "Armageddon",
		["Enlightenment"] = "Enlightenment",
		["SolarEclipse"] = "SolarEclipse",
		["AcidRain"] = "AcidRain",
		["TK_LightningStorm"] = "TK_LightningStorm",
		["TK_MoneyRain"] = "TK_MoneyRain",
		["TK_RouteRunner"] = "TK_RouteRunner",
		["TK_PostDunk"] = "TK_PostDunk",
		["JandelKatana"] = "JandelKatana",
		["Stoplight"] = "Stoplight"
	},
	TeleportLocations = {
		["Garden"] = CFrame.new(0, 0, 0),
		["Seeds Shop"] = CFrame.new(62, 3, -27),
		["Sell Shop"] = CFrame.new(-259, 3, -9),
		["Gear Shop"] = CFrame.new(-285, 3, -33),
		["Cosmetics Shop"] = CFrame.new(-285, 3, -15),
		["Eggs Shop"] = CFrame.new(-284, 3, -2),
		["Event Area"] = CFrame.new(-101, 4, -7)
	}
}
