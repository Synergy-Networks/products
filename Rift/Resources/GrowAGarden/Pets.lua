local v5 = Instance.new("Folder")
local v7 = {["Dog"] = {
		["Description"] = "Digging Buddy: Occasionally digs up a random seed",
		["Actions"] = {},
		["DefaultHunger"] = 1000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://135018170520317",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 55000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Digging Buddy"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Golden Lab"] = {
		["Description"] = "Digging Friend: Occasionally digs up a random seed at a higher chance",
		["Actions"] = {},
		["DefaultHunger"] = 1200,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://99376934607716",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 55000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Digging Friend"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Bunny"] = {
		["Description"] = "Carrot Chomper: Runs to carrots, eats them, and grants bonus sheckles (more than normal value)",
		["Actions"] = {},
		["DefaultHunger"] = 1100,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://85830855120751",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 55000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Carrot Chomper"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Black Bunny"] = {
		["Description"] = "Carrot Devourer: Runs to carrots, eats them, and grants bonus sheckles (more than normal value)",
		["Actions"] = {},
		["DefaultHunger"] = 1300,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://86614624778104",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Carrot Chomper"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Cat"] = {
		["Description"] = "Cat Nap: Cat naps in a random spot in your farm, emitting an aura that boosts nearby fruit size",
		["Actions"] = {},
		["DefaultHunger"] = 1400,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://136444015144013",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Cat Nap"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Deer"] = {
		["Description"] = "Forester: When harvesting berry plants, there is a chance the fruit will remain",
		["Actions"] = {},
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://91926785467809",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Forester"
		},
		["YHeightScaler"] = 0.65,
		["States"] = {}
	},["Chicken"] = {
		["Description"] = "Eggcelerator: Decreases the time needed to hatch other eggs",
		["Actions"] = {},
		["DefaultHunger"] = 3400,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://108080824427369",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Eggcelerator"
		},
		["YHeightScaler"] = 0.15,
		["States"] = {}
	},["Orange Tabby"] = {
		["Description"] = "Orange Tabby: Orange Tabby naps in a random spot in your farm, emitting an aura that boosts nearby fruit size",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://103360220936666",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 660000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Lazy Nap"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Spotted Deer"] = {
		["Description"] = "Forester: When harvesting berry plants, there is a chance the fruit will remain",
		["Actions"] = {},
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://126439207915258",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 660000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Spotted Forester"
		},
		["YHeightScaler"] = 0.65,
		["States"] = {}
	},["Rooster"] = {
		["Description"] = "Eggcelerator: Decreases the time needed to hatch other eggs",
		["Actions"] = {},
		["DefaultHunger"] = 4000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://137107493326109",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 650000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Better Eggcelerator"
		},
		["YHeightScaler"] = 0.15,
		["States"] = {}
	},["Monkey"] = {
		["Description"] = "Cheeky Refund: Chance to get your fruit back when you sell it",
		["Actions"] = {},
		["DefaultHunger"] = 7400,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://113881196210664",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 660000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Cheeky Refund"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Pig"] = {
		["Description"] = "Fertilizer Frenzy: Occasionally releases a fertilizing AOE boosting variant chance",
		["Actions"] = {},
		["DefaultHunger"] = 5000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://134476443266448",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 650000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Fertilizer Frenzy"
		},
		["YHeightScaler"] = 0.6,
		["States"] = {}
	},["Silver Monkey"] = {
		["Description"] = "Premium Cheeky Refund: Chance to get your fruit back when you sell it",
		["Actions"] = {},
		["DefaultHunger"] = 8000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://136985272620600",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Premium Cheeky Refund"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Turtle"] = {
		["Description"] = "Turtle Tinkerer: Slowing aura that makes sprinklers last longer",
		["Actions"] = {},
		["DefaultHunger"] = 10000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://92906330087175",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Turtle Tinkerer"
		},
		["YHeightScaler"] = -0.32,
		["States"] = {}
	},["Cow"] = {
		["Description"] = "Milk of the Land: Fertilizing aura that boosts nearby plant growth speed ",
		["Actions"] = {},
		["DefaultHunger"] = 9500,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://118832676475537",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["YHeightScaler"] = 0.5,
		["Passives"] = {
			"Milk of the Land"
		},
		["States"] = {}
	},["Sea Otter"] = {
		["Description"] = "Water Spray: Water\'s plants randomly like a watering can",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://94422445572440",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Water Spray"
		},
		["YHeightScaler"] = -0.25,
	},["Polar Bear"] = {
		["Description"] = "Polar Express: Occasionally sets a random nearby fruit cold, turning it into Chilled with a small chance for Frozen",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://72209118254193",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Polar Express"
		},
		["YHeightScaler"] = 0.35,
	},["Caterpillar"] = {
		["Description"] = "Leaf Lover Passive: Boost nearby Leafy plants growth rate",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://119651461526366",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 50000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Leaf Lover"
		},
		["YHeightScaler"] = -0.55,
	},["Snail"] = {
		["Description"] = "Slow and Steady: Increased lucky harvest chance",
		["Actions"] = {},
		["DefaultHunger"] = 12000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 3.141592653589793),
		["Icon"] = "rbxassetid://80970021440625",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 3,
		["SellPrice"] = 50000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Slow and Steady"
		},
		["YHeightScaler"] = 0,
		["States"] = {}
	},["Giant Ant"] = {
		["Description"] = "For the Blue Colony: Small chance to duplicate harvested plant & Candy Harvester: Increased chance to duplicate harvested candy type plant",
		["Actions"] = {},
		["DefaultHunger"] = 18000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 3.141592653589793),
		["Icon"] = "rbxassetid://71413253805996",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5,
		["SellPrice"] = 60000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"For the Blue Colony",
			"Candy Harvester"
		},
		["YHeightScaler"] = 0.4,
	},["Praying Mantis"] = {
		["Description"] = "Zen Zone: Prays, then gives plants in AOE Buff that increases the chance of fruit variants from plants",
		["Actions"] = {},
		["DefaultHunger"] = 55000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 3.141592653589793),
		["Icon"] = "rbxassetid://121485029406440",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 60000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Zen Zone"
		},
		["YHeightScaler"] = 0.1,
	},["Dragonfly"] = {
		["Description"] = "Transmutation: Occasionally, turns a random fruit gold",
		["Actions"] = {},
		["DefaultHunger"] = 100000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["Icon"] = "rbxassetid://118484611393651",
		["TwoHanded"] = true,
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 70000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Transmutation"
		},
		["YHeightScaler"] = 2,
	},["Panda"] = {
		["Description"] = "Bamboozle: Waddles to bamboo, eats it, and grants bonus sheckles (more than normal value)",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://107090327345246",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Bamboozle"
		},
		["YHeightScaler"] = 0.35,
	},["Hedgehog"] = {
		["Description"] = "Prickly Lover: Makes nearby prickly fruit grow bigger",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://83544966481425",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 1000000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Prickly Lover"
		},
		["YHeightScaler"] = 0.01,
	},["Kiwi"] = {
		["Description"] = "Nocturnal Nursery: Occasionally reduces the hatch time of the egg with the most hatch time left",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://104651906442347",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1000000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Nocturnal Nursery"
		},
		["YHeightScaler"] = 0.9,
	},["Mole"] = {
		["Description"] = "Treasure Hunter: Will occasionally dig down to find gear or sheckles",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 0),
		["Icon"] = "rbxassetid://79089804794269",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 2000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Treasure Hunter"
		},
		["YHeightScaler"] = 0.1,
	},["Frog"] = {
		["Description"] = "Croak: Occasionally advances a nearby plant\'s growth by 24 hours",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://96930166899467",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Croak"
		},
		["YHeightScaler"] = 0.1,
	},["Echo Frog"] = {
		["Description"] = "Echo Croak: Occasionally advances a nearby plant\'s growth by 24 hours",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://102271225890686",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 5000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Echo Croak"
		},
		["YHeightScaler"] = 0.1,
	},["Raccoon"] = {
		["Description"] = "Rascal: Occasionally steals (duplicates) fruit from other player\'s plot and hands it to you",
		["Actions"] = {},
		["DefaultHunger"] = 45000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://136232391555861",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 20000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Rascal"
		},
		["YHeightScaler"] = 0.1,
	},["Night Owl"] = {
		["Description"] = "King of the Night: Grants bonus experience per second gain to all active pets.",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://101760640498094",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 15000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"King of the Night",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.5,
	},["Owl"] = {
		["Description"] = "Prince of the Night: Grants bonus experience per second gain to all active pets.",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://138016343005291",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 15000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Prince of the Night",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.5,
	},["Grey Mouse"] = {
		["Description"] = "Whisker Wisdom: Occasionally gains bonus experience & Scamper: Increase player movement speed",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://116310390398341",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Whisker Wisdom",
			"Scamper"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Squirrel"] = {
		["Description"] = "Seed Stash: Grants a chance to not consume a use when using the reclaimer & Nutty Apology: Gains additional XP per second",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://96950434895806",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Seed Stash",
			"Nutty Apology"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Brown Mouse"] = {
		["Description"] = "Whiskier Wisdom: Occasionally gains bonus experience & Cheese Hop: Increase player jump height",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://94641319183999",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Whiskier Wisdom",
			"Cheese Hop"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Red Giant Ant"] = {
		["Description"] = "For the Red Colony: Small chance to duplicate harvested plant & Fruit Harvester: Increased chance to duplicate harvested fruit type plant",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 3.141592653589793),
		["Icon"] = "rbxassetid://89449712431551",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5,
		["SellPrice"] = 10500000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"For the Red Colony",
			"Fruit Harvester"
		},
		["YHeightScaler"] = 0.4,
	},["Red Fox"] = {
		["Description"] = "Scoundrel: Occasionally goes to another player\'s plot and tries to steal a seed from a random plant. The rarer the plant, the harder it is to succeed",
		["Actions"] = {},
		["DefaultHunger"] = 35000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://116662854190616",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 16,
		["SellPrice"] = 20500000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Scoundrel"
		},
		["YHeightScaler"] = 0.1,
	},["Chicken Zombie"] = {
		["Description"] = "Zombify: Occasionally has a chance to zombify a nearby random fruit & Eggcelerator: Decreases the time needed to hatch other eggs",
		["Actions"] = {},
		["DefaultHunger"] = 35000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://108581559611673",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Zombify",
			"Eggcelerator"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Blood Hedgehog"] = {
		["Description"] = "Sanguine Spike: Makes nearby prickly fruit have increased variant chance and grow bigger",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://76471191139414",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 33000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Sanguine Spike",
			"Prickly Blessing"
		},
		["YHeightScaler"] = 0.01,
	},["Blood Kiwi"] = {
		["Description"] = "Crimson Cradle: Occasionally reduces the egg hatch time and boosts egg hatch speed",
		["Actions"] = {},
		["DefaultHunger"] = 45000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://87343374343285",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 30000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Crimson Cradle",
			"Better Eggcelerator"
		},
		["YHeightScaler"] = 0.9,
	},["Blood Owl"] = {
		["Description"] = "Monarch of Midnight: Grants bonus experience per second gain to all active pets",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://81262783747840",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 70000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Monarch of Midnight",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.5,
	},["Moon Cat"] = {
		["Description"] = "Moon Nap: Moon cat naps in a random spot in your farm, and boosts nearby fruit size & Moon Harvest: Grants chance for Night type plants to replant when harvested ",
		["Actions"] = {},
		["DefaultHunger"] = 2400,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://72392850111255",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 25000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Moon Nap",
			"Moon Harvest"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Bee"] = {
		["Description"] = "Pollinator: Occasionally pollinates fruit",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -3.141592653589793),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://114116135745614",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 400000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Pollinator"
		},
		["YHeightScaler"] = 0.2,
	},["Honey Bee"] = {
		["Description"] = "Beeter Pollinator: Occasionally pollinates fruit",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -3.141592653589793),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://134999468799162",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 800000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Beeter Pollinator"
		},
		["YHeightScaler"] = 0.2,
	},["Petal Bee"] = {
		["Description"] = "Pollinator: Occasionally pollinates fruit & Flower Harvest: Harvested flowers have a chance to stay",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -3.141592653589793),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://137924182648564",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 1000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Pollinator",
			"Flower Harvest"
		},
		["YHeightScaler"] = 0.03,
	},["Bear Bee"] = {
		["Description"] = "Wanna-Bee: Occasionally tries to pollinate fruit, but it just ends up being Honey-Glazed",
		["Actions"] = {},
		["DefaultHunger"] = 45000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://97465846056354",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 4000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Wanna-Bee"
		},
		["YHeightScaler"] = 0.35,
	},["Queen Bee"] = {
		["Description"] = "Queen Pollinator: Occasionally pollinates fruit instantly & For the Queen: Occasionally refrehes the pet with the highest cooldown ability",
		["Actions"] = {},
		["DefaultHunger"] = 65000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -2.530727415391778),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://127281358672581",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 5,
		["SellPrice"] = 8000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Queen Pollinator",
			"For the Queen"
		},
		["YHeightScaler"] = 10,
	},["Wasp"] = {
		["Description"] = "Wasp Pollinator: Occasionally pollinates fruit & Stinger: Occasionally stings pet with highest cooldown advancing cooldown",
		["Actions"] = {},
		["DefaultHunger"] = 28000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://72767862942880",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 12,
		["SellPrice"] = 1000000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Wasp Pollinator",
			"Stinger"
		},
		["YHeightScaler"] = 0.2,
	},["Tarantula Hawk"] = {
		["Description"] = "Wasp Pollinator: Occasionally pollinates fruit & Tarantula Stinger: Occasionally stings pet with highest cooldown advancing cooldown",
		["Actions"] = {},
		["DefaultHunger"] = 28000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://126203792467378",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 12,
		["SellPrice"] = 2000000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Pollinator",
			"Tarantula Stinger"
		},
		["YHeightScaler"] = 0.2,
	},["Moth"] = {
		["Description"] = "Silksong: Sings to a random pet and magically restore its hunger",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://134180528391091",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 8,
		["SellPrice"] = 4000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Silksong"
		},
		["YHeightScaler"] = 0.2,
	},["Butterfly"] = {
		["Description"] = "Rainbow Flutter: Occasionally flies to a fruit with 4+ mutations, removes all mutations from it and converts it into rainbow. Ignores favorited fruit",
		["Actions"] = {},
		["DefaultHunger"] = 26000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://119048229505161",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 8,
		["SellPrice"] = 8000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Rainbow Flutter"
		},
		["YHeightScaler"] = 0.2,
	},["Disco Bee"] = {
		["Description"] = "Disco Disco: Occasionally has a chance to turn a nearby fruit into Disco",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -3.141592653589793),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://139406192899443",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 12000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Disco Disco"
		},
		["YHeightScaler"] = 0.03,
	},["Cooked Owl"] = {
		["Description"] = "Let Him Cook: Occasionally burns or cook a random nearby fruit & King of the Grill: Grants bonus experience per second gain to all active pets. Also very tasty!",
		["Actions"] = {},
		["ToolWeldOffset"] = true,
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://78954652883059",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Let Him Cook",
			"King of the Grill",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.1,
	},["Pack Bee"] = {
		["Description"] = "Pack Bee: Increases backpack size by 30 and occasionally pollinates nearby fruit",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -3.141592653589793),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://105775306251306",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 2500000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Pollinator",
			"Pack Bee"
		},
		["YHeightScaler"] = 0.5,
	},["Starfish"] = {
		["Description"] = "You\'re a Star: Gains additional XP per second",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["Icon"] = "rbxassetid://120520383369074",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 0.25,
		["SellPrice"] = 50000,
		["Rarity"] = "Common",
		["Passives"] = {
			"You\'re a Star"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Crab"] = {
		["Description"] = "Pinch Pocket: Occasionally goes to another player and pinches them and grants you a small amount of sheckles",
		["Actions"] = {},
		["DefaultHunger"] = 3000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://73259620945174",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 4,
		["SellPrice"] = 60000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Pinch Pocket"
		},
		["YHeightScaler"] = 0.8,
		["States"] = {}
	},["Seagull"] = {
		["Description"] = "Scavenger: Grants to get double the seeds when getting a Lucky Harvest",
		["Actions"] = {},
		["DefaultHunger"] = 3500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://125267211322255",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 70000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Movement Variation",
			"Scavenger"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Toucan"] = {
		["Description"] = "Tropical Lover: Makes all nearby Tropical type plants have increased variant chance and grow bigger",
		["Actions"] = {},
		["DefaultHunger"] = 9000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://118598422473758",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 880000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Tropical Lover",
			"Tropical Blessing",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.9,
	},["Flamingo"] = {
		["Description"] = "Flamboyance: Occasionally stands on one legs and all nearby plants will grow incredibly fast",
		["Actions"] = {},
		["DefaultHunger"] = 14000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://122573642551827",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 880000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Flamboyance"
		},
		["YHeightScaler"] = 2.4,
	},["Sea Turtle"] = {
		["Description"] = "Shell Share: Occasionally shares its wisdom to a random active pet granting bonus experience & Water Splash: Occasionally has a chance to Wet a nearby fruit",
		["Actions"] = {},
		["DefaultHunger"] = 22200,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://136324651089948",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 1.5,
		["SellPrice"] = 880000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Shell Share",
			"Water Splash"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Seal"] = {
		["Description"] = "Seal the Deal: When selling pets, has a small chance to get the pet back as its egg equivalent",
		["Actions"] = {},
		["DefaultHunger"] = 17000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://70977930937021",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 880000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Seal the Deal"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Orangutan"] = {
		["Description"] = "Helping Hands: When crafting, each material has a chance for it not to be consumed",
		["Actions"] = {},
		["DefaultHunger"] = 55000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://91252752916705",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 880000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Helping Hands"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Peacock"] = {
		["Description"] = "Utter Beauty: Occasionally fans its feathers and all nearby pets will advance ability cooldowns",
		["Actions"] = {},
		["DefaultHunger"] = 19000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://79434662175672",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Utter Beauty"
		},
		["YHeightScaler"] = 0.8,
		["States"] = {}
	},["Capybara"] = {
		["Description"] = "Chill Zone: Nearby pets\' hunger will not go down and they will gain additional xp per second",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://109096250560950",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Chill Zone"
		},
		["YHeightScaler"] = 1.5,
	},["Scarlet Macaw"] = {
		["Description"] = "Verdant Bird: Occasionally has a chance to mutate nearby fruits Verdant",
		["Actions"] = {},
		["DefaultHunger"] = 12000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://103592675269053",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Verdant Bird",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.75,
	},["Ostrich"] = {
		["Description"] = "Eggsperience: Grants pets hatched from eggs an age bonus",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://85113894132517",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8.5,
		["SellPrice"] = 4400000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Eggsperience"
		},
		["YHeightScaler"] = 2.4,
	},["Mimic Octopus"] = {
		["Description"] = "Mimicry: Mimics and copies an ability from another pet and performs its ability",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://118831959038511",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Mimicry"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Meerkat"] = {
		["Description"] = "Lookout: Occasionally goes to another pet and does a lookout for it. That pet advances cooldown. Has a chance to do it again after each lookout.",
		["Actions"] = {},
		["DefaultHunger"] = 22000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://111346621796974",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 1100000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Lookout"
		},
		["YHeightScaler"] = 1,
	},["Sand Snake"] = {
		["Description"] = "Coiled Commerce: Buying from the seed/gear shop has a small chance to duplicate the bought item!",
		["Actions"] = {},
		["DefaultHunger"] = 28000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://110203289397199",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 1100000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Coiled Commerce"
		},
		["YHeightScaler"] = 0.1,
	},["Axolotl"] = {
		["Description"] = "Summer Regeneration: Summer type fruits have a chance to stay after collecting!",
		["Actions"] = {},
		["DefaultHunger"] = 22000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://115096754077953",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5,
		["SellPrice"] = 3300000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Summer Regeneration"
		},
		["YHeightScaler"] = 0.5,
	},["Hyacinth Macaw"] = {
		["Description"] = "Cloudtouched Bird: Occasionally has a chance to mutate nearby fruits Cloudtouched",
		["Actions"] = {},
		["DefaultHunger"] = 12000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://118586950763516",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 4400000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Cloudtouched Bird",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.75,
	},["Fennec Fox"] = {
		["Description"] = "Sly: Occasionally goes to another player\'s random fruit, has a chance to copy a mutation from it and applies it to a random fruit you own.",
		["Actions"] = {},
		["DefaultHunger"] = 35000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://106568248173155",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 16,
		["SellPrice"] = 7500000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Sly"
		},
		["YHeightScaler"] = 1.1,
	},["Hamster"] = {
		["Description"] = "Hamster Wheel: Occasionally runs in a hamster wheel and grants increased crafting speed for a duration",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://95041454621458",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 3300000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Hamster Wheel"
		},
		["YHeightScaler"] = 0.5,
	},["Bald Eagle"] = {
		["Description"] = "Wings of Freedom: Every 7:04m, takes flight and spreads its wings. All eggs advanced their hatch time by 70.4s. There\'s a 7.04% chance for the effect to be multiplied",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://100494018595907",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Wings of Freedom",
			"Movement Variation"
		},
		["YHeightScaler"] = 2,
	},["Raptor"] = {
		["Description"] = "Clever Claws: Small chance fruit gets Amber mutation after collecting! & Raptor Dance: Player has increased movement speed",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://133649762905181",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Clever Claws",
			"Raptor Dance"
		},
		["YHeightScaler"] = 0,
	},["Stegosaurus"] = {
		["Description"] = "Prehistoric Doubling: Small chance to duplicate harvested fruit & Prehistoric Harvester: Increased chance to duplicate harvested prehistoric type plant",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://115750504063562",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Prehistoric Doubling",
			"Prehistoric Harvester"
		},
		["YHeightScaler"] = 0,
	},["Triceratops"] = {
		["Description"] = "Tri-Horn: Rams into random plants and advances their growth",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://133031079193526",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Tri-Horn"
		},
		["YHeightScaler"] = 0,
	},["Pterodactyl"] = {
		["Description"] = "Sky Reptile: Occasionally applies Windstruck mutation to multiple nearby fruits! & Air Time: Player has increased jump height",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://132325249273328",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Sky Reptile",
			"Air Time",
			"Movement Variation"
		},
		["YHeightScaler"] = 1,
	},["Brontosaurus"] = {
		["Description"] = "Giant Incubator: Pets hatched from eggs have higher base weight",
		["Actions"] = {},
		["DefaultHunger"] = 80000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://138431192706334",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5,
		["SellPrice"] = 20000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Giant Incubator"
		},
		["YHeightScaler"] = 0,
	},["Radioactive Stegosaurus"] = {
		["Description"] = "Developer RemorsEcoDe\'s pet",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://98472855896357",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Radioactive Lizard"
		},
		["YHeightScaler"] = 0,
		["Untradeable"] = true
	},["T-Rex"] = {
		["Description"] = "Apex Predator: Occasionally eats a random mutation from a fruit in your garden then roars and applies that mutation to other fruits in your garden.",
		["Actions"] = {},
		["DefaultHunger"] = 60000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://72024850228702",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 40000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Apex Predator"
		},
		["YHeightScaler"] = 0.05,
	},["Parasaurolophus"] = {
		["Description"] = "Crowbar Head: Occasionally, goes to the cosmetic crate with the highest time and reduces time to open!",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://77060347493123",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Crowbar Head"
		},
		["YHeightScaler"] = 0.05,
	},["Iguanodon"] = {
		["Description"] = "Dino Herd: Grants bonus experience per second gain to all Dinosaur type active pets",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://132997806707299",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Dino Herd"
		},
		["YHeightScaler"] = 0.05,
	},["Pachycephalosaurus"] = {
		["Description"] = "Crafty Dome: Grants a small chance to duplicate the crafted item.",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://98967783170808",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Crafty Dome"
		},
		["YHeightScaler"] = 0.05,
	},["Dilophosaurus"] = {
		["Description"] = "Frilled Reptile: Occasionally opens its frills and spits out venom! The venom spreads to other random pets, advancing cooldown OR granting bonus xp",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://88442192911950",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Frilled Reptile"
		},
		["YHeightScaler"] = 0.05,
	},["Ankylosaurus"] = {
		["Description"] = "Armored Defender: When a player steals a fruit from you, grants a chance you get the stolen fruit as well.",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://128962631009648",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 20000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Armored Defender"
		},
		["YHeightScaler"] = 0.05,
	},["Spinosaurus"] = {
		["Description"] = "Occasionally, devours a random mutation from random fruits in your garden each, roars and applies it to 1 other random fruit in your garden!",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://78132119445447",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 40000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Food Chain"
		},
		["YHeightScaler"] = 0.05,
	},["Rainbow Parasaurolophus"] = {
		["Description"] = "Crowbar Head: Occasionally, goes to the cosmetic crate with the highest time and reduces time to open!",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://116062422658499",
		["OddsIcon"] = "rbxassetid://125458280085952",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 10000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Crowbar Head"
		},
		["YHeightScaler"] = 0.05,
	},["Rainbow Iguanodon"] = {
		["Description"] = "Dino Herd: Grants bonus experience per second gain to all Dinosaur type active pets",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://70960389100537",
		["OddsIcon"] = "rbxassetid://94572344496310",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 10000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Dino Herd"
		},
		["YHeightScaler"] = 0.05,
	},["Rainbow Pachycephalosaurus"] = {
		["Description"] = "Crafty Dome: Grants a small chance to duplicate the crafted item.",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://71353461716145",
		["OddsIcon"] = "rbxassetid://104196332322283",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 10000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Crafty Dome"
		},
		["YHeightScaler"] = 0.05,
	},["Rainbow Dilophosaurus"] = {
		["Description"] = "Frilled Reptile: Occasionally opens its frills and spits out venom! The venom spreads to other random pets, advancing cooldown OR granting bonus xp",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://114260890723408",
		["OddsIcon"] = "rbxassetid://92472270160849",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 20000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Rainbow Frilled Reptile"
		},
		["YHeightScaler"] = 0.05,
	},["Rainbow Ankylosaurus"] = {
		["Description"] = "Armored Defender: When a player steals a fruit from you, grants a chance you get the stolen fruit as well.",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://108330251202915",
		["OddsIcon"] = "rbxassetid://96359333884841",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 40000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Rainbow Armored Defender"
		},
		["YHeightScaler"] = 0.05,
	},["Rainbow Spinosaurus"] = {
		["Description"] = "Occasionally, devours a random mutation from random fruits in your garden each, roars and applies it to 1 other random fruit in your garden!",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://98134533729834",
		["OddsIcon"] = "rbxassetid://132599364727436",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 80000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Rainbow Food Chain"
		},
		["YHeightScaler"] = 0.05,
	},["Shiba Inu"] = {
		["Description"] = "Man\'s Best Tomodachi: Occasionally digs up a random seed at a higher chance",
		["Actions"] = {},
		["DefaultHunger"] = 2000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://109495487067387",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 50000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Man\'s Best Tomodachi"
		},
		["YHeightScaler"] = 1.5,
		["States"] = {}
	},["Nihonzaru"] = {
		["Description"] = "Bathe Time: As long as you have a Hot Spring in your garden: bathes in it and relaxes",
		["Actions"] = {},
		["DefaultHunger"] = 8000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://83549828969544",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 250000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Bathe Time"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Tanuki"] = {
		["Description"] = "Mischief: Occasionally causes mischief doing random actions in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://86675114036925",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 550000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Mischief"
		},
		["YHeightScaler"] = 0.8,
		["States"] = {}
	},["Tanchozuru"] = {
		["Description"] = "Balance and Harmony: Occasionally channels tranquility and has a chance to mutate nearby fruits into Tranquil",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://102876710012857",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 10000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Balance and Harmony"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Kappa"] = {
		["Description"] = "Water Spirit: Occasionally sprays water on all nearby fruits, mutating them to wet, and has a chance to convert Wet mutations already on fruit to Bloodlit",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://139605839925044",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 25000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Water Spirit"
		},
		["YHeightScaler"] = 1.1,
		["States"] = {}
	},["Kitsune"] = {
		["Description"] = "Nine-Tailed Myth: Occasionally goes to other player\'s fruit, mutates with Chakra or Foxfire Chakra and steals (duplicates) hands it to you",
		["Actions"] = {},
		["DefaultHunger"] = 49999,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://135428084676433",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 99999999,
		["Rarity"] = "Prismatic",
		["Passives"] = {
			"Nine-Tailed Myth"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Koi"] = {
		["Description"] = "Fish of Fortune: Grants a chance to recover an egg when hatching. Can be different colors",
		["Actions"] = {},
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://112819490327372",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 6,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Fish of Fortune"
		},
		["YHeightScaler"] = 2,
		["States"] = {}
	},["Football"] = {
		["Description"] = "Touchdown: Occasionally runs to the Gear Shop or Seed Shop (whichever is farther) and does a touchdown which awards you with sheckles or a Watering Can",
		["Actions"] = {},
		["DefaultHunger"] = 870,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://97868319630227",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 650000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Touchdown"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Maneki-neko"] = {
		["Description"] = "Fortune Cat: Occasionally does a wave of good luck and grants increased chance to get your fruit back after selling it",
		["Actions"] = {},
		["DefaultHunger"] = 1777,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://116049439913569",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 50000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Fortune Cat"
		},
		["YHeightScaler"] = 0.8,
		["States"] = {}
	},["Kodama"] = {
		["Description"] = "Tree Spirit: Collecting Zen type fruits have a chance to mutate with Tranquil.",
		["Actions"] = {},
		["DefaultHunger"] = 22000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://123076615425263",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 550000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Tree Spirit"
		},
		["YHeightScaler"] = 1.2,
		["States"] = {}
	},["Corrupted Kodama"] = {
		["Description"] = "Corrupted Tree Spirit: Collecting Zen type fruits have a chance to mutate with Corrupt.",
		["Actions"] = {},
		["DefaultHunger"] = 22000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://131755084333898",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 550000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Corrupted Tree Spirit"
		},
		["YHeightScaler"] = 1.2,
		["States"] = {}
	},["Raiju"] = {
		["Description"] = "Lightning Beast: Occasionally devours a fruit with Shocked for bonus value, spits a chain lightning that mutates fruit with Static or Shocked if its a Thunderstorm",
		["Actions"] = {},
		["DefaultHunger"] = 42000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://111087166681850",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 10000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Lightning Beast"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Corrupted Kitsune"] = {
		["Description"] = "Nine-Tailed Curse: Occasionally, applies Corrupted Chakra to 9 different fruit with a very rare chance for Corrupted Foxfire Chakra instead!",
		["Actions"] = {},
		["DefaultHunger"] = 49999,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://73884777977436",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 99999999,
		["Rarity"] = "Prismatic",
		["Passives"] = {
			"Nine-Tailed Curse"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Rainbow Maneki-neko"] = {
		["Description"] = "Rainbow Fortune Cat: Occasionally does a wave of good luck and grants increased chance to get your fruit back after selling it",
		["Actions"] = {},
		["DefaultHunger"] = 1777,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://127837229475229",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 100000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Rainbow Fortune Cat"
		},
		["YHeightScaler"] = 0.8,
		["States"] = {}
	},["Rainbow Kodama"] = {
		["Description"] = "Rainbow Tree Spirit: Collecting Zen type fruits have a chance to mutate with Tranquil.",
		["Actions"] = {},
		["DefaultHunger"] = 22000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://130281044212300",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 1100000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Tree Spirit"
		},
		["YHeightScaler"] = 1.2,
		["States"] = {}
	},["Rainbow Corrupted Kitsune"] = {
		["Description"] = "Rainbow Nine-Tailed Curse: Occasionally, applies Corrupted Chakra to 9 different fruit with a very rare chance for Corrupted Foxfire Chakra instead!",
		["Actions"] = {},
		["DefaultHunger"] = 49999,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://112845542239850",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 199999998,
		["Rarity"] = "Prismatic",
		["Passives"] = {
			"Rainbow Nine-Tailed Curse"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Bagel Bunny"] = {
		["Description"] = "Bagel and Carrots: Runs to carrots, eats them, and grants bonus sheckles multiplier",
		["Actions"] = {},
		["DefaultHunger"] = 1200,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://83878222838385",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 55000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Bagel and Carrots"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Pancake Mole"] = {
		["Description"] = "Pancake Hunter: Will occasionally dig down to find gear or sheckles",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, 0),
		["Icon"] = "rbxassetid://118795155833639",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 650000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Pancake Hunter"
		},
		["YHeightScaler"] = 0.1,
	},["Sushi Bear"] = {
		["Description"] = "Sushi Express: Occasionally sets a random nearby fruit cold, turning it Chilled or rarely Frozen & Sushi Time: Occasionally throws sushi towards a pet, feeding it",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://101808352881529",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Sushi Express",
			"Sushi Time"
		},
		["YHeightScaler"] = 0.35,
		["States"] = {}
	},["Spaghetti Sloth"] = {
		["Description"] = "Al dente: Occasionally applies Pasta, Sauce or Meatball mutation",
		["Actions"] = {},
		["DefaultHunger"] = 18000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://82028428678888",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 2.5,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Al dente"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["French Fry Ferret"] = {
		["Description"] = "Welcome to Fry Town: Occasionally increases a pet\'s level by one",
		["Actions"] = {},
		["DefaultHunger"] = 37000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://124662460084969",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Friendly Frier"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Mochi Mouse"] = {
		["Description"] = "Mochi Marathon: Grants bonus experience per second gain to all Food type pets & Whisker Wisdom: Occasionally gains bonus experience",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://91015602604713",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 25000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Mochi Marathon",
			"Whisker Wisdom"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Junkbot"] = {
		["Description"] = "OIL OR BOIL: Occasionally has a chance to oil nearby fruit applying the Oil mutation",
		["Actions"] = {},
		["DefaultHunger"] = 10101,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://91201635928407",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"OIL OR BOIL"
		},
		["YHeightScaler"] = 0.05,
	},["Bacon Pig"] = {
		["Description"] = "Bacon Frenzy: Emits an aura granting chance for new fruit to grow as variants",
		["Actions"] = {},
		["DefaultHunger"] = 5000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://133632938597101",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 650000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Bacon Frenzy"
		},
		["YHeightScaler"] = 0.6,
		["States"] = {}
	},["Hotdog Daschund"] = {
		["Description"] = "Loaded Dog: Drops a mustard or ketchup puddle. Pets that stand in mustard get faster cooldown and pets that step on ketchup gain more experience",
		["Actions"] = {},
		["DefaultHunger"] = 16000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://91582048906102",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Loaded Dog"
		},
		["YHeightScaler"] = 0.7,
		["States"] = {}
	},["Lobster Thermidor"] = {
		["Description"] = "Boiling Point: Chance a nearby fruit becomes Molten! Chance a nearby fruit becomes Meteoric!",
		["Actions"] = {},
		["DefaultHunger"] = 50505,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://78602813358591",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 70000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Molten Boiling Point",
			"Meteoric Boiling Point"
		},
		["YHeightScaler"] = 0,
		["States"] = {}
	},["Sunny-Side Chicken"] = {
		["Description"] = "Better Eggcelerator: Decreases the time needed to hatch eggs",
		["Actions"] = {},
		["DefaultHunger"] = 3400,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://86615656407099",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Better Eggcelerator"
		},
		["YHeightScaler"] = 0.15,
		["States"] = {}
	},["Gorilla Chef"] = {
		["Description"] = "Helping Hands: When crafting, each material has a chance for it not to be consumed",
		["Actions"] = {},
		["DefaultHunger"] = 55000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://104448554207781",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"King Cook"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Rainbow Bacon Pig"] = {
		["Description"] = "Rainbow Bacon Frenzy: Emits an aura granting chance for new fruit to grow as variants",
		["Actions"] = {},
		["DefaultHunger"] = 5000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://124076295505957",
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["HungerFruitMultipliers"] = {},
		["SellPrice"] = 650000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Rainbow Bacon Frenzy"
		},
		["YHeightScaler"] = 0.6,
		["States"] = {}
	},["Rainbow Hotdog Daschund"] = {
		["Description"] = "Rainbow Loaded Dog: Drops a mustard or ketchup puddle. Pets that stand in mustard get faster cooldown and pets that step on ketchup gain more experience",
		["Actions"] = {},
		["DefaultHunger"] = 16000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://126077770122949",
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["HungerFruitMultipliers"] = {},
		["SellPrice"] = 3300000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Loaded Dog"
		},
		["YHeightScaler"] = 0.7,
		["States"] = {}
	},["Rainbow Lobster Thermidor"] = {
		["Description"] = "Rainbow Boiling Point: Chance a nearby fruit becomes Molten! Chance a nearby fruit becomes Meteoric!",
		["Actions"] = {},
		["DefaultHunger"] = 50505,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://120857500058999",
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["HungerFruitMultipliers"] = {},
		["SellPrice"] = 70000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Rainbow Molten Boiling Point",
			"Rainbow Meteoric Boiling Point"
		},
		["YHeightScaler"] = 0,
		["States"] = {}
	},["Dairy Cow"] = {
		["Description"] = "Milk of the Land: Fertilizing aura that boosts nearby plant growth speed & Trade-In: Selling this pet has a small chance to get a Beanstalk seed",
		["Actions"] = {},
		["DefaultHunger"] = 9000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://78935458311782",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 55000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Milk of the Land",
			"Trade-In"
		},
		["YHeightScaler"] = 1.4,
		["States"] = {}
	},["Jackalope"] = {
		["Description"] = "Thunper: Occasionally has a chance to apply the Sandy mutation",
		["Actions"] = {},
		["DefaultHunger"] = 22000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://102758469732489",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 550000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Thumper"
		},
		["YHeightScaler"] = 0.9,
		["States"] = {}
	},["Seedling"] = {
		["Description"] = "Sprout: Swaps mutations between two different random fruits. Ignores favorited fruits",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://116498603071650",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Sprout"
		},
		["YHeightScaler"] = 3.2,
		["States"] = {}
	},["Golem"] = {
		["Description"] = "Tech Savvy: Goes to the mutation machine and tinkers with it and advances its time",
		["Actions"] = {},
		["DefaultHunger"] = 32000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://92787444445017",
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["HungerFruitMultipliers"] = {},
		["SellPrice"] = 10500000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Tech Savvy"
		},
		["YHeightScaler"] = 2.5,
		["States"] = {}
	},["Golden Goose"] = {
		["Description"] = "Golden Laying: Occasionally lays a Golden Egg plant that starts with the Fortune mutation. Selling the Golden Egg has chance to apply Fortune mutation to a random fruit in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 48000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://116621756658631",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 24000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Golden Laying"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Spriggan"] = {
		["Description"] = "Overgrowth: Occasionally spreads it\'s roots and all nearby fruit have a chance to get the Bloom mutation",
		["Actions"] = {},
		["DefaultHunger"] = 45000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://133648608922103",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 5500000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Overgrowth"
		},
		["YHeightScaler"] = 2.2,
		["States"] = {}
	},["Peach Wasp"] = {
		["Description"] = "Peach Pollinator: Occasionally applies Plasma to fruit & Peach Stinger: Stings a random pet to advance ability cooldown",
		["Actions"] = {},
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://112368163015890",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Peach Pollinator",
			"Peach Stinger"
		},
		["YHeightScaler"] = 0.2,
		["States"] = {}
	},["Apple Gazelle"] = {
		["Description"] = "Apple Harvester: Fruits that have apple in the name have a chance to duplicate when collected & Sugar Warp: Harvesting Sugar Apples have a chance to apply Warped mutation to a random fruit in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://117047179450553",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Apple Harvester",
			"Sugar Warp"
		},
		["YHeightScaler"] = 1.6,
		["States"] = {}
	},["Lemon Lion"] = {
		["Description"] = "Brain-Roar: Roars and mutates a random fruit with Brainrot mutation & Citrus Roar: Occasionally grants bonus experience to a random pet",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://82370830738421",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7.5,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Brain-Roar",
			"Citrus Roar"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Green Bean"] = {
		["Description"] = "Bean for the Bean God: Occasionally sacrifices a random Beanstalk fruit in your garden to instantly grow a random plant in your garden with a fruit size bonus",
		["Actions"] = {},
		["DefaultHunger"] = 23825,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://135399291806752",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 10000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Bean for the Bean God"
		},
		["YHeightScaler"] = 0.05,
	},["Elk"] = {
		["Description"] = "Elk Forester: Chance berry fruit stays after collecting! Rarer plants have a rarer chance to replant",
		["Actions"] = {},
		["ToolWeldOffset"] = true,
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["Icon"] = "rbxassetid://98272040040520",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Elk Forester"
		},
		["YHeightScaler"] = 0.95,
		["States"] = {}
	},["Mandrake"] = {
		["Description"] = "Mandrake Essence: Harvesting Mandrake crops have a chance to mutate a random fruit in your garden with Rot mutation",
		["Actions"] = {},
		["DefaultHunger"] = 10000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://119966585905991",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Mandrake Essence"
		},
		["YHeightScaler"] = 1.72,
		["States"] = {}
	},["Griffin"] = {
		["Description"] = "Glorious Wings: Flaunts its wings releasing a cyclone in a random directions. Pets struck have cooldown advanced and fruits struck get Cyclonic mutation",
		["Actions"] = {},
		["DefaultHunger"] = 65000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://95812299319372",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 30000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Movement Variation",
			"Glorious Wings"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Gnome"] = {
		["Description"] = "Gnome Collector: Has a chance to mutate a random fruit with the Gnomed mutation. Gains additional chance for every Gnome cosmetic in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://109829511445289",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Gnome Collector"
		},
		["YHeightScaler"] = 0.6,
		["States"] = {}
	},["Rainbow Elk"] = {
		["Description"] = "Rainbow Elk Forester: Chance berry fruit stays after collecting! Rarer plants haves have rarer chance to replant",
		["Actions"] = {},
		["ToolWeldOffset"] = true,
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["Icon"] = "rbxassetid://71610269617190",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 165000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Rainbow Elk Forester"
		},
		["YHeightScaler"] = 0.65,
		["States"] = {}
	},["Rainbow Mandrake"] = {
		["Description"] = "Rainbow Mandrake Essence: Harvesting Mandrake crops have a chance to mutate a random fruit in your garden with Rot mutation",
		["Actions"] = {},
		["DefaultHunger"] = 10000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://127979754158695",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 5500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Mandrake Essence"
		},
		["YHeightScaler"] = 1.72,
		["States"] = {}
	},["Rainbow Griffin"] = {
		["Description"] = "Rainbow Glorious Wings: Flaunts its wings releasing a cyclone in a random directions. Pets struck have cooldown advanced and fruits struck get Cyclonic mutation",
		["Actions"] = {},
		["DefaultHunger"] = 65000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://106497940180682",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 30000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Movement Variation",
			"Rainbow Glorious Wings"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Ladybug"] = {
		["Description"] = "Flower Fortune: All flower type plants grow faster",
		["Actions"] = {},
		["DefaultHunger"] = 1200,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://71662166827211",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 250000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Flower Fortune"
		},
		["YHeightScaler"] = 0,
	},["Pixie"] = {
		["Description"] = "Pixie Dust: Occasionally spreads pixie dust for a duration, all plants within range will advance growth an extra 30 seconds every second. Also makes nearby players levitate ",
		["Actions"] = {},
		["DefaultHunger"] = 500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://80171506933019",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 14,
		["SellPrice"] = 1500000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Pixie Dust"
		},
		["YHeightScaler"] = 1,
	},["Imp"] = {
		["Description"] = "Scamp: Occasionally, the Imp will playfully invite you to chase it. Catching the Imp will grant a reward.",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://119736963641690",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Scamp"
		},
		["YHeightScaler"] = 1.5,
	},["Glimmering Sprite"] = {
		["Description"] = "Glimmer: Occasionally flies to a random fruit and applies the Glimmering mutation",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://92219508074359",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Glimmer"
		},
		["YHeightScaler"] = 1,
	},["Cockatrice"] = {
		["Description"] = "Silver Screech: Occasionally lets out a screech that has a chance to convert nearby fruit to Silver or Gold & Venom Spit: Spits venom at different fruit/egg/pets which apply bonuses",
		["Actions"] = {},
		["DefaultHunger"] = 66000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://82549803808662",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Silver Screech",
			"Venom Spit"
		},
		["YHeightScaler"] = 0,
	},["Cardinal"] = {
		["Description"] = "Magical Friend: All Magical type plants grow faster!",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://128524579624312",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 550000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Magical Friend",
			"Movement Variation"
		},
		["YHeightScaler"] = 1.5,
	},["Shroomie"] = {
		["Description"] = "Mushroom Madness: All nearby plants will have increased size bonus for every Mushroom planted in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://86618600557433",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 6000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Mushroom Madness"
		},
		["YHeightScaler"] = 1.55,
	},["Phoenix"] = {
		["Description"] = "Bird of Rebirth: Pets taken from the mutation machine have a bonus to their age & Icarus: Goes to random fruits to apply flaming mutation, fruits passed along the way have a chance to get the Flaming mutation",
		["Actions"] = {},
		["DefaultHunger"] = 65000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://133893751009091",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 8,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Bird of Rebirth",
			"Icarus",
			"Bird of Rebirth Min"
		},
		["YHeightScaler"] = 0,
	},["Wisp"] = {
		["Description"] = "Will-o\226\128\153-the-Wisp: As long as you have a Wisp Well in your garden: Pets gain additional bonus experience per second",
		["Actions"] = {},
		["DefaultHunger"] = 1000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://78045326476838",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 12,
		["SellPrice"] = 2500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Will-o-the-Wisp"
		},
		["YHeightScaler"] = 0,
	},["Drake"] = {
		["Description"] = "Flambe: Goes to a Cooking Kit and breathes fire on it, helping the cooking process and boosting cooking speed",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://118082232105261",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 12000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Flambe"
		},
		["YHeightScaler"] = 0,
	},["Luminous Sprite"] = {
		["Description"] = "Illuminate: Occasionally flies to a random fruit and applies the Luminous mutation",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://93050542576309",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Illuminate"
		},
		["YHeightScaler"] = 1,
	},["Rainbow Cardinal"] = {
		["Description"] = "Magical Friend: All Magical type plants have increased variant chance",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://113286700917316",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 550000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Rainbow Magical Friend"
		},
		["YHeightScaler"] = 1.5,
	},["Rainbow Shroomie"] = {
		["Description"] = "Mushroom Madness: All nearby plants will have increased size bonus for every Mushroom planted in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 20000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://116644160801234",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 6000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Mushroom Madness"
		},
		["YHeightScaler"] = 1.55,
	},["Rainbow Phoenix"] = {
		["Description"] = "Bird of Rebirth: Pets taken from the mutation machine have a bonus to their age & Icarus: Goes to random fruits to apply flaming mutation, fruits passed along the way have a chance to get the Flaming mutation",
		["Actions"] = {},
		["DefaultHunger"] = 65000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://73940127432853",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 8,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Rainbow Bird of Rebirth",
			"Rainbow Icarus",
			"Rainbow Bird of Rebirth Min"
		},
		["YHeightScaler"] = 0,
	},["Robin"] = {
		["Description"] = "Tiny Bird: Grants decreased player size",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://138585723590344",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 250000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Tiny Bird",
			"Movement Variation"
		},
		["YHeightScaler"] = 1.5,
	},["Badger"] = {
		["Description"] = "Earthquake Excavator: Occasionally digs around and spreads mud has a chance to mutate nearby fruits with Cracked",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://82559063839388",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 550000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Earthquake Excavator"
		},
		["YHeightScaler"] = 1,
	},["Grizzly Bear"] = {
		["Description"] = "Fall Express: Chance to apply the Fall mutation & Mighty Bear: Grants increased player size",
		["Actions"] = {},
		["DefaultHunger"] = 55000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://132828392036742",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 2500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Fall Express",
			"Mighty Bear"
		},
		["YHeightScaler"] = 0.7,
	},["Barn Owl"] = {
		["Description"] = "Wise Shopper: Pets bought from shops directly have a chance to get an extra base weight & Prince of Fall: All Fall type pets gain bonus XP per second",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://131206107902314",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 550000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Wise Shopper",
			"Prince of Fall",
			"Movement Variation"
		},
		["YHeightScaler"] = 1.1,
	},["Swan"] = {
		["Description"] = "Swan Song: Occasionally goes to another player\'s pet and befriends it and performs its ability & Bird of Grace: Occasionally applies Graceful mutation",
		["Actions"] = {},
		["DefaultHunger"] = 56000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://99524799826321",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 18000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Swan Song",
			"Bird of Grace"
		},
		["YHeightScaler"] = 0.1,
	},["GIANT Robin"] = {
		["Description"] = "Giant Tiny Bird: Grants decreased player size",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://98399905797582",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 250000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Giant Tiny Bird",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.1,
	},["GIANT Badger"] = {
		["Description"] = "Giant Earthquake Excavator: Occasionally digs around and spreads mud has a chance to mutate nearby fruits with Cracked",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://104728209226087",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 550000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Giant Earthquake Excavator"
		},
		["YHeightScaler"] = 0.1,
	},["GIANT Grizzly Bear"] = {
		["Description"] = "Giant Fall Express: Chance to apply the Fall mutation & Giant Mighty Bear: Grants increased player size",
		["Actions"] = {},
		["DefaultHunger"] = 55000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://110271406500145",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 2500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Giant Fall Express",
			"Giant Mighty Bear"
		},
		["YHeightScaler"] = 0.1,
	},["GIANT Barn Owl"] = {
		["Description"] = "Giant Wise Shopper: Pets bought from shops directly have a chance to get an extra base weight & Giant Prince of Fall: All Fall type pets gain bonus XP per second",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://127621730946839",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 550000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Giant Wise Shopper",
			"Giant Prince of Fall",
			"Movement Variation"
		},
		["YHeightScaler"] = 0.1,
	},["GIANT Swan"] = {
		["Description"] = "Giant Swan Song: Occasionally goes to another player\'s pet and befriends it and performs its ability & Bird of Grace: Occasionally applies Graceful mutation",
		["Actions"] = {},
		["DefaultHunger"] = 56000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://97853931002050",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 18000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Giant Swan Song",
			"Giant Bird of Grace"
		},
		["YHeightScaler"] = 0.1,
	},["Chipmunk"] = {
		["Description"] = "Harvest Stash: Grants a chance to not consume a use when using a Harvest Tool",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://93618771832898",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 150000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Harvest Stash"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Red Squirrel"] = {
		["Description"] = "Squirrel Support: When Fall type pets finish their abilities, they will start their next cooldown with less",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://79329520265110",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 800000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Squirrel Support"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Marmot"] = {
		["Description"] = "Whack-A-Marmot: Occasionally burrows down in the ground and hides in a random mound! Finding the mound grants a random Fall related reward!",
		["Actions"] = {},
		["DefaultHunger"] = 38000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://130585040362437",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1800000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Whack-A-Marmot"
		},
		["YHeightScaler"] = 1.4,
		["States"] = {}
	},["Sugar Glider"] = {
		["Description"] = "Sugar Gliding: Occasionally glides from random different mutated fruits. Copies 1 mutation from each fruit and applies it to the next.",
		["Actions"] = {},
		["DefaultHunger"] = 16000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://104336468107138",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Sugar Gliding"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Space Squirrel"] = {
		["Description"] = "A Space Odd-Nut-sy: Occasionally, has chance to apply the Voidtouched mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://113256096415475",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 20000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"A Space Odd-Nut-sy"
		},
		["YHeightScaler"] = 0.8,
		["States"] = {}
	},["Salmon"] = {
		["Description"] = "Salmon School: Gets bonus experience for every other Salmon in your garden",
		["Actions"] = {},
		["DefaultHunger"] = 2500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://92754624465168",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 6,
		["SellPrice"] = 250000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Salmon School"
		},
		["YHeightScaler"] = 1.2,
		["States"] = {}
	},["Woodpecker"] = {
		["Description"] = "Woodpecking: Ocassionally goes to a Woody type plant and pecks at it, which grants a chance for Woody type fruit to duplicate! Rarer crops have lower chance to duplicate.",
		["Actions"] = {},
		["DefaultHunger"] = 5000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://113365591365168",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 550000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Woodpecking"
		},
		["YHeightScaler"] = 0.5,
	},["Mallard"] = {
		["Description"] = "Southbound: On the half-hourly, all Mallards fly south to migrate. The mallard leaves you with a random reward! Mallards return to your inventory.",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://84996135827286",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Southbound"
		},
		["YHeightScaler"] = 1.5,
	},["Red Panda"] = {
		["Description"] = "Adorable Haggler: Occasionally, goes to the Gear or Seed Shop or Pet Egg Shop and restocks a random stock. Rarer items have rarer chance to stock.",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["Icon"] = "rbxassetid://120849980403539",
		["ToolWeldOffset"] = true,
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 20000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Adorable Haggler"
		},
		["YHeightScaler"] = 1.5,
	},["Tree Frog"] = {
		["Description"] = "Mini Croak: Advances the growth of a random plant.",
		["Actions"] = {},
		["DefaultHunger"] = 16000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://139519707978244",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 9,
		["SellPrice"] = 500000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Mini Croak"
		},
		["YHeightScaler"] = 0.42,
		["States"] = {}
	},["Hummingbird"] = {
		["Description"] = "Seed Disperser: Converts a random single-harvest plant into its seed equivalent. Ignores favorited plants.",
		["Actions"] = {},
		["DefaultHunger"] = 8000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://109225210641870",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 5000000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Seed Disperser"
		},
		["YHeightScaler"] = 0,
		["States"] = {}
	},["Iguana"] = {
		["Description"] = "Sun Basking: Goes to a random fruit with Frozen mutation and melts it back to Chilled or Wet. Ignores favorited fruit.",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://133975355093355",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 10000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Sun Basking"
		},
		["YHeightScaler"] = 0.97,
		["States"] = {}
	},["Chimpanzee"] = {
		["Description"] = "Primate Profit: Grabs a random fruit from your garden and goes to the sell stall and sells it for you. There is a chance the fruit does not get harvested. Ignores favorited fruit.",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://90844890201281",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 15000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Primate Profit"
		},
		["YHeightScaler"] = 1.7,
		["States"] = {}
	},["Tiger"] = {
		["Description"] = "King of the Jungle: Roars and 3 random mutations from your garden will be replaced with another mutation. Ignores favorited fruit.",
		["Actions"] = {},
		["DefaultHunger"] = 100000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://84624825972686",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Tiger Call",
			"King of the Jungle"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Blue Jay"] = {
		["Description"] = "Berry Friend: All Berry type plants grow faster!",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://95379340428030",
		["SeasonPassIcon"] = "rbxassetid://89951704408491",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 550000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Berry Friend",
			"Movement Variation"
		},
		["YHeightScaler"] = 1.5,
	},["Silver Dragonfly"] = {
		["Description"] = "Silver Transmutation: Occasionally, turns a random fruit Silver",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://96067721100425",
		["SeasonPassIcon"] = "rbxassetid://117053825983924",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Silver Transmutation"
		},
		["YHeightScaler"] = 2,
	},["Firefly"] = {
		["Description"] = "Lightning Bug: Occasionally strikes a random nearby fruit, with a small chance of turning it Shocked",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://131310748087635",
		["SeasonPassIcon"] = "rbxassetid://109332988155070",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Lightning Bug"
		},
		["YHeightScaler"] = 0.5,
		["States"] = {}
	},["Mizuchi"] = {
		["Description"] = "Water Diety: When selling fruits with Azure mutation, there is chance a random mutation from that fruit will be applied to a fruit in your garden! & Azure Surge: Occasionally roars on a random nearby fruit, with a small chance of applying Azure mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 70000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://91185943483703",
		["SeasonPassIcon"] = "rbxassetid://106439194517610",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 6,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Water Diety",
			"Azure Surge"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Rainbow Blue Jay"] = {
		["Description"] = "Rainbow Berry Friend: All Berry type plants grow faster!",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://133585552724823",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 550000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Rainbow Berry Friend",
			"Movement Variation"
		},
		["YHeightScaler"] = 1.5,
	},["GIANT Silver Dragonfly"] = {
		["Description"] = "Giant Silver Transmutation: Occasionally, turns a random fruit Silver",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["Icon"] = "rbxassetid://98905461908746",
		["SeasonPassIcon"] = "rbxassetid://98905461908746",
		["TwoHanded"] = true,
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 5000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"GIANT Silver Transmutation"
		},
		["YHeightScaler"] = 2,
	},["GIANT Firefly"] = {
		["Description"] = "Giant Lightning Bug: Occasionally strikes a random nearby fruit, with a small chance of turning it Shocked",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://94457540770263",
		["SeasonPassIcon"] = "rbxassetid://94457540770263",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 10000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"GIANT Lightning Bug"
		},
		["YHeightScaler"] = 0.5,
		["States"] = {}
	},["Rainbow Mizuchi"] = {
		["Description"] = "Rainbow Water Diety: When selling fruits with Azure mutation, there is chance a random mutation from that fruit will be applied to a fruit in your garden! & Rainbow Azure Surge: Occasionally roars on a random nearby fruit, with a small chance of applying Azure mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 70000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://99745824120363",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 6,
		["SellPrice"] = 25000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Rainbow Water Diety",
			"Rainbow Azure Surge"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Chubby Chipmunk"] = {
		["Description"] = "Chubby Chimpunk: Occasionally eats a random fruit in your garden and gains weight. Also spawns a Acorn somewhere which upon collected grants a random reward!",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://102761957577352",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 50000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Chubby Chipmunk"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Farmer Chipmunk"] = {
		["Description"] = "Nuturalist: All Nutty type plants grow faster!",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://71613444377937",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 50000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Nuturalist"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Idol Chipmunk"] = {
		["Description"] = "Chip-Hop: Occasionally performs a concert for a duration and all your pets gain hunger percentage per second",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://90727554939682",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Chip-Hop"
		},
		["YHeightScaler"] = 0.4,
	},["Chinchilla"] = {
		["Description"] = "Dust Bath: Occasionally goes to another pet, rolls around in dust and makes that pet perform its ability multiple times in a row!",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://90320556188216",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 15000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Dust Bath"
		},
		["YHeightScaler"] = 0.8,
	},["Rainbow Farmer Chipmunk"] = {
		["Description"] = "Rainbow Nuturalist: All Nutty type plants grow faster!",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://98659230942001",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 50000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Rainbow Nuturalist"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Rainbow Idol Chipmunk"] = {
		["Description"] = "Rainbow Chip-Hop: Occasionally performs a concert for a duration and all your pets gain hunger percentage per second",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://122645043299669",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Rainbow Chip-Hop"
		},
		["YHeightScaler"] = 0.4,
	},["Rainbow Chinchilla"] = {
		["Description"] = "Rainbow Dust Bath: Occasionally goes to another pet, rolls around in dust and makes that pet perform its ability multiple times in a row!",
		["Actions"] = {},
		["DefaultHunger"] = 50000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://127959624081025",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 15000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Rainbow Dust Bath"
		},
		["YHeightScaler"] = 0.8,
	},["Hyrax"] = {
		["Description"] = "Hyrax: Occasionally eats a random fruit in your garden and spits out a Fissure Berry seed!",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://112568063976163",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 250000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Hyrax Harvest"
		},
		["YHeightScaler"] = 0.9,
		["States"] = {}
	},["Fortune Squirrel"] = {
		["Description"] = "CHA-CHING: Occasioally has a chance to apply the Jackpot mutation",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://88962216889577",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"CHA-CHING"
		},
		["YHeightScaler"] = 0.1,
	},["Bat"] = {
		["Description"] = "Spooky Bat: Grants nearby Spooky type plants a variant chance bonus.",
		["Actions"] = {},
		["DefaultHunger"] = 5000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://87628430678748",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 150000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Spooky Bat"
		},
		["YHeightScaler"] = 0.01,
	},["Bone Dog"] = {
		["Description"] = "Gravedigger: Occasionally digs up seeds.",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://122820979496928",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 550000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Gravedigger"
		},
		["YHeightScaler"] = 0.9,
	},["Spider"] = {
		["Description"] = "Web Weave: Occasionally weaves a web for a duration. All Pets on the web advance cooldown faster and all plants on the web grow faster.",
		["Actions"] = {},
		["DefaultHunger"] = 35000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://125091376615804",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 2500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Web Weave"
		},
		["YHeightScaler"] = 0.65,
	},["Black Cat"] = {
		["Description"] = "Witch\'s Nap: Occasionally goes to a Witch\'s Cauldron cosmetic and naps near it for a duration. New fruit within radius have bonus size!",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://102896419499784",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 15000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Witch\'s Nap"
		},
		["YHeightScaler"] = 0.9,
	},["Headless Horseman"] = {
		["Description"] = "The Reins of Ruin: Occasionally haunts pets with one of four chaotic mutations!",
		["Actions"] = {},
		["DefaultHunger"] = 77777,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://79885667264056",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 88888888,
		["Rarity"] = "Prismatic",
		["Passives"] = {
			"The Reins of Ruin"
		},
		["YHeightScaler"] = 0.01,
	},["Ghostly Bat"] = {
		["Description"] = "Ghostly Spooky Bat: Grants nearby Spooky type plants a variant chance bonus.",
		["Actions"] = {},
		["DefaultHunger"] = 5000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://87685014926552",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 150000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Ghostly Spooky Bat"
		},
		["YHeightScaler"] = 0.01,
	},["Ghostly Bone Dog"] = {
		["Description"] = "Ghostly Gravedigger: Occasionally digs up seeds.",
		["Actions"] = {},
		["DefaultHunger"] = 15000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://88263641115892",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 550000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Ghostly Gravedigger"
		},
		["YHeightScaler"] = 0.9,
	},["Ghostly Spider"] = {
		["Description"] = "Ghostly Web Weave: Occasionally weaves a web for a duration. All Pets on the web advance cooldown faster and all plants on the web grow faster.",
		["Actions"] = {},
		["DefaultHunger"] = 35000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://135196202044019",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 2500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Ghostly Web Weave"
		},
		["YHeightScaler"] = 0.65,
	},["Ghostly Black Cat"] = {
		["Description"] = "Ghostly Witch\'s Nap: Occasionally goes to a Witch\'s Cauldron cosmetic and naps near it for a duration. New fruit within radius have bonus size!",
		["Actions"] = {},
		["DefaultHunger"] = 40000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://71194480217335",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 15000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Ghostly Witch\'s Nap"
		},
		["YHeightScaler"] = 0.9,
	},["Ghostly Headless Horseman"] = {
		["Description"] = "The Ghostly Reins of Ruin: Occasionally haunts pets with one of four chaotic mutations!",
		["Actions"] = {},
		["DefaultHunger"] = 77777,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://91953710699229",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 88888888,
		["Rarity"] = "Prismatic",
		["Passives"] = {
			"The Ghostly Reins of Ruin"
		},
		["YHeightScaler"] = 0.01,
	},["Pumpkin Rat"] = {
		["Description"] = "Pumpkin Carver: Occasionally converts a Pumpkin in your garden into a random Jack-O-Lantern cosmetic! Collect all 5 variants!",
		["Actions"] = {},
		["DefaultHunger"] = 6000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://97475620451127",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 50000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Pumpkin Carver"
		},
		["YHeightScaler"] = 1,
	},["Ghost Bear"] = {
		["Description"] = "Boo!: Occasionally scares fruit and applies the Spooky Mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://104662849593251",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 500000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Boo!"
		},
		["YHeightScaler"] = 1.1,
	},["Wolf"] = {
		["Description"] = "Wolf Howl: Occasionally howls, mutating some nearby fruit into moonlit and turns you into a Werewolf for a short duration, granting bonus movement speed and jump height!",
		["Actions"] = {},
		["DefaultHunger"] = 55000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://110892049103393",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 1500000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Wolf Howl"
		},
		["YHeightScaler"] = 0.01,
	},["Reaper"] = {
		["Description"] = "Reap What You Sow: Occasionally sacrifices random 4 fruits in your garden to apply a Medium Passive Boost or Medium XP Boost to a random pet in your garden!",
		["Actions"] = {},
		["DefaultHunger"] = 67000,
		["WeldOffset"] = CFrame.new(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://109861305277240",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 6,
		["SellPrice"] = 20000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Reap What You Sow"
		},
		["YHeightScaler"] = 0.01,
	},["Crow"] = {
		["Description"] = "Spooky Crow: Nearby Spooky type plants have increased growth speed!",
		["Actions"] = {},
		["DefaultHunger"] = 1500,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://103370749125147",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 50000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Spooky Crow",
			"Movement Variation"
		},
		["YHeightScaler"] = 1.52,
		["States"] = {}
	},["Goat"] = {
		["Description"] = "Ram: Occasionally goes to a random player and rams them, knocking and launching them away!",
		["Actions"] = {},
		["DefaultHunger"] = 60000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://128297419936951",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 800000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Ram"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Goblin"] = {
		["Description"] = "Looter: Occasionally goes to another random player and carries them and brings them to you! Player can jump to be released!",
		["Actions"] = {},
		["DefaultHunger"] = 38000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://127885235829657",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1800000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Looter"
		},
		["YHeightScaler"] = 2,
		["States"] = {}
	},["Dark Spriggan"] = {
		["Description"] = "Dark Overgrowth: Occasionally spreads it\'s roots and all nearby fruit have a chance to get the Blight mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 45000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://107696482291104",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 5500000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Dark Overgrowth"
		},
		["YHeightScaler"] = 2.2,
		["States"] = {}
	},["Hex Serpent"] = {
		["Description"] = "Witchcraft: Plant single-harvest plants in a Hex Circle cosmetic and occasionally: The Hex Serpent will perform a ritual, consuming the plants, granting random rewards! The rarer plants and better variants grants better effects!",
		["Actions"] = {},
		["DefaultHunger"] = 66666,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://121113414387758",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 6,
		["SellPrice"] = 10500000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Hex Magic"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Ghostly Dark Spriggan"] = {
		["Description"] = "Ghostly Overgrowth: Occasionally spreads it\'s roots and all nearby fruit have a chance to get the Blight or rarer chance for Necrotic mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 45000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://110448754441838",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 7,
		["SellPrice"] = 5500000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Ghostly Overgrowth"
		},
		["YHeightScaler"] = 2.2,
		["States"] = {}
	},["Scarab"] = {
		["Description"] = "Spooky Scarab: Nearby Spooky type plants have increased growth size!",
		["Actions"] = {},
		["DefaultHunger"] = 2000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://136076341712984",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 500000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Spooky Scarab"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Tomb Marmot"] = {
		["Description"] = "Tomb Raid: Occasionally burrows down in the ground and hides in a Tombstone! Finding the tombstone grants a random Graveyard cosmetic!",
		["Actions"] = {},
		["DefaultHunger"] = 38000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://99976660992669",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1800000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Tomb Raid"
		},
		["YHeightScaler"] = 1.4,
		["States"] = {}
	},["Mummy"] = {
		["Description"] = "King\'s Sarcophagus: As long as you have a Sarcophogus in your Garden: Pets you get from Chests have a chance to get extra base weight",
		["Actions"] = {},
		["DefaultHunger"] = 88000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://106414262511327",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5.5,
		["SellPrice"] = 18000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"King\'s Sarcophagus"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Ghostly Scarab"] = {
		["Description"] = "Ghostly Spooky Scarab: Nearby Spooky type plants have increased growth size!",
		["Actions"] = {},
		["DefaultHunger"] = 2000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://112844006603733",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 500000,
		["Rarity"] = "Uncommon",
		["Passives"] = {
			"Spooky Scarab"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Ghostly Tomb Marmot"] = {
		["Description"] = "Ghostly Tomb Raid: Occasionally burrows down in the ground and hides in a Tombstone! Finding the tombstone grants a random Graveyard cosmetic!",
		["Actions"] = {},
		["DefaultHunger"] = 38000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://108400222651524",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1800000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Ghostly Tomb Raid"
		},
		["YHeightScaler"] = 1.4,
		["States"] = {}
	},["Ghostly Mummy"] = {
		["Description"] = "Ghostly King\'s Sarcophagus: As long as you have a Sarcophogus in your Garden: Pets you get from Chests have a chance to get extra base weight",
		["Actions"] = {},
		["DefaultHunger"] = 88000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://128554214079406",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 5.5,
		["SellPrice"] = 18000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Ghostly King\'s Sarcophagus"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Lich"] = {
		["Description"] = "Spooky Lich: Spooky type plants have increased variant chance, growth speed and size bonus & Dread Lord: All Halloween type pets gain bonus XP per second!",
		["Actions"] = {},
		["DefaultHunger"] = 100000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = true,
		["Icon"] = "rbxassetid://71204006185207",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 5,
		["SellPrice"] = 30000000,
		["Rarity"] = "Divine",
		["Passives"] = {
			"Spooky Lich",
			"Dread Lord",
			"Lich Blessing",
			"Lich Tempo",
			"Lich Power"
		},
		["YHeightScaler"] = 0.1,
		["States"] = {}
	},["Woody"] = {
		["Description"] = "Vampire Doggy: Occasionally goes to fruit and applies the Leeched mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["TwoHanded"] = false,
		["Icon"] = "rbxassetid://112904079042866",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 2000000,
		["Rarity"] = "Legendary",
		["Passives"] = {
			"Vampire Doggy"
		},
		["YHeightScaler"] = 1,
		["States"] = {}
	},["Glass Dog"] = {
		["Description"] = "Digging Buddy: Occasionally digs up a random seed & Gloss Animal: Occasionally has a chance to apply Glossy mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 1000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://110697590191533",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 10,
		["SellPrice"] = 55000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Digging Buddy",
			"Gloss Animal"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Glass Cat"] = {
		["Description"] = "Cat Nap: Cat naps in a random spot in your farm, emitting an aura that boosts nearby fruit size & Gloss Animal: Occasionally has a chance to apply Glossy mutation!",
		["Actions"] = {},
		["DefaultHunger"] = 1400,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 1.5707963267948966),
		["Icon"] = "rbxassetid://85890740547063",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 12,
		["SellPrice"] = 165000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Cat Nap",
			"Gloss Animal"
		},
		["YHeightScaler"] = 0.4,
		["States"] = {}
	},["Red Dragon"] = {
		["Description"] = "Scorched Soil: Occasionally sets a random nearby fruit ablaze, turning it into Burnt",
		["Actions"] = {},
		["DefaultHunger"] = 10000,
		["WeldOffset"] = CFrame.Angles(0, -1.5707963267948966, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://140223014467344",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 10,
		["SellPrice"] = 100000,
		["Rarity"] = "Common",
		["Passives"] = {
			"Scorched Soil"
		},
		["YHeightScaler"] = 0.2,
		["States"] = {}
	},["Golden Bee"] = {
		["Description"] = "Pollinator: Occasionally pollinates fruit & Golden Harvest: Harvested fruit has a chance to turn to gold",
		["Actions"] = {},
		["DefaultHunger"] = 25000,
		["WeldOffset"] = CFrame.Angles(0, 1.5707963267948966, -3.141592653589793),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://125658111834879",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Flight",
		["MovementSpeed"] = 9,
		["SellPrice"] = 1000000,
		["Rarity"] = "Mythical",
		["Passives"] = {
			"Pollinator",
			"Golden Harvest"
		},
		["YHeightScaler"] = 0.03,
		["States"] = {}
	},["Tsuchinoko"] = {
		["Description"] = "Fat Snake: Increased lucky harvest chance!",
		["Actions"] = {},
		["DefaultHunger"] = 28000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://104799415228364",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 3,
		["SellPrice"] = 250000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"Fat Snake"
		},
		["YHeightScaler"] = 0.01,
		["States"] = {}
	},["Rainbow Fortune Squirrel"] = {
		["Description"] = "RAINBOW CHA-CHING: Occasioally has a chance to apply the Jackpot mutation",
		["Actions"] = {},
		["DefaultHunger"] = 30000,
		["WeldOffset"] = CFrame.Angles(0, 0, 0),
		["ToolWeldOffset"] = true,
		["Icon"] = "rbxassetid://88962216889577",
		["HungerFruitMultipliers"] = {},
		["MovementType"] = "Grounded",
		["MovementSpeed"] = 8,
		["SellPrice"] = 1000000,
		["Rarity"] = "Rare",
		["Passives"] = {
			"RAINBOW CHA-CHING"
		},
		["YHeightScaler"] = 0.1,
	}}
return v7
