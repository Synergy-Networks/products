local v1 = game:GetService("ReplicatedStorage"):WaitForChild("Resources"):WaitForChild("Animations"):WaitForChild("Shovel")
local v2 = {
	["Wooden Shovel"] = {
		["Control"] = 4,
		["Haste"] = 2,
		["Strength"] = 4,
		["Luck"] = 0,
		["Passive"] = nil,
		["BossDamage"] = 5,
		["RockEnabled"] = false,
		["RockBoost"] = nil,
		["PreferredGround"] = "Dirt",
		["StatsShow"] = "Dirt",
		["UIColour"] = Color3.fromRGB(255, 227, 156),
		["Description"] = "A trusted shovel, carved from old weak wood! Not the best, but it moves dirt!",
		["AnimationPack"] = v1:WaitForChild("Default"),
		["Cost"] = 0
	},
	["Training Shovel"] = {
		["Control"] = 7,
		["Haste"] = 1,
		["Strength"] = 3,
		["Luck"] = -20,
		["Passive"] = nil,
		["BossDamage"] = 5,
		["RockEnabled"] = false,
		["RockBoost"] = nil,
		["PreferredGround"] = "Dirt",
		["StatsShow"] = "Dirt",
		["UIColour"] = Color3.fromRGB(255, 82, 51),
		["Description"] = "This shovel is specifically made to help new players learn the ropes!",
		["AnimationPack"] = v1:WaitForChild("Default"),
		["Cost"] = 85,
		["PurchaseFrom"] = "Rocky\'s Shovel Store",
		["PurchaseFromColor"] = Color3.fromRGB(255, 126, 87)
	},
	["Toy Shovel"] = {
		["Control"] = 5.5,
		["Haste"] = 2.5,
		["Strength"] = 4,
		["Luck"] = 5,
		["Passive"] = nil,
		["BossDamage"] = 7,
		["RockEnabled"] = false,
		["RockBoost"] = nil,
		["PreferredGround"] = "Dirt",
		["StatsShow"] = "Dirt",
		["UIColour"] = Color3.fromRGB(255, 227, 156),
		["Description"] = "A toy plastic shovel with many fun colors. Not that practical when digging heavy items.",
		["AnimationPack"] = v1:WaitForChild("Default"),
		["Cost"] = 350,
		["PurchaseFrom"] = "Rocky\'s Shovel Store",
		["PurchaseFromColor"] = Color3.fromRGB(255, 212, 112)
	},
	["Copper Shovel"] = {
		["Control"] = 6,
		["Haste"] = 3.5,
		["Strength"] = 4.5,
		["Luck"] = 3,
		["Passive"] = nil,
		["BossDamage"] = 10,
		["RockEnabled"] = false,
		["RockBoost"] = nil,
		["PreferredGround"] = "Dirt",
		["StatsShow"] = "Dirt",
		["UIColour"] = Color3.fromRGB(200, 113, 62),
		["Description"] = "A sturdy shovel forged out of a conductive metal!",
		["AnimationPack"] = v1:WaitForChild("Default"),
		["Cost"] = 650,
		["PurchaseFrom"] = "Rocky\'s Shovel Store",
		["PurchaseFromColor"] = Color3.fromRGB(193, 193, 193)
	}
}
local v3 = {
	["Control"] = 6,
	["Haste"] = 4,
	["Strength"] = 5,
	["Luck"] = 7,
	["Passive"] = nil,
	["BossDamage"] = 10,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 6,
		["Haste"] = 4,
		["Strength"] = 5,
		["Luck"] = 7
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Dirt",
	["UIColour"] = Color3.fromRGB(255, 246, 119),
	["Description"] = "A sturdy shovel forged out of gold and diamonds!- Thank you for supporting DIG!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil
}
v2["Bejeweled Shovel"] = v3
local v4 = {
	["Control"] = 4,
	["Haste"] = 1,
	["Strength"] = 6,
	["Luck"] = 0,
	["Passive"] = nil,
	["BossDamage"] = 25,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 6.5,
		["Haste"] = 1,
		["Strength"] = 6.5,
		["Luck"] = 10
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["CharmSynergies"] = { "Rock Pounder" },
	["CharmSynergyBuffs"] = {
		{ "Strength", 2 }
	},
	["UIColour"] = Color3.fromRGB(255, 183, 183),
	["Description"] = "Great for destroying rocks. However, it\'s nearly useless on dirt.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 800,
	["PurchaseFrom"] = "Rocky\'s Shovel Store",
	["PurchaseFromColor"] = Color3.fromRGB(193, 193, 193)
}
v2["Rock Shovel"] = v4
local v5 = {
	["Control"] = 5,
	["Haste"] = 1,
	["Strength"] = 5,
	["Luck"] = 18,
	["Passive"] = nil,
	["BossDamage"] = 17,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 5,
		["Haste"] = 1,
		["Strength"] = 7,
		["Luck"] = 18
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Dirt",
	["UIColour"] = Color3.fromRGB(153, 255, 116),
	["Description"] = "This shovel\'s clovered appearance gives it a slight luck boost. Less junk items will be dug up!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 1800,
	["PurchaseFrom"] = "Rocky\'s Shovel Store",
	["PurchaseFromColor"] = Color3.fromRGB(193, 193, 193)
}
v2["Lucky Shovel"] = v5
local v6 = {
	["Control"] = 6,
	["Haste"] = 3,
	["Strength"] = 7,
	["Luck"] = 13,
	["Passive"] = nil,
	["BossDamage"] = 20,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 6.5,
		["Haste"] = 3.5,
		["Strength"] = 7,
		["Luck"] = 13
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["UIColour"] = Color3.fromRGB(255, 47, 47),
	["Description"] = "This trusty shovel is forged from pure ruby! Not just making it a formidable tool, but a pretty lucky one too!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 6500,
	["PurchaseFrom"] = "Cindy\'s Shore Shop",
	["PurchaseFromColor"] = Color3.fromRGB(193, 193, 193)
}
v2["Ruby Shovel"] = v6
local v7 = {
	["Control"] = 5,
	["Haste"] = 1,
	["Strength"] = 8,
	["Luck"] = 20,
	["Passive"] = nil,
	["BossDamage"] = 35,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 5,
		["Haste"] = 1,
		["Strength"] = 9,
		["Luck"] = 20
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["UIColour"] = Color3.fromRGB(72, 55, 255),
	["Description"] = "The armored claw of a King Crab proves quite useful for a shovel head.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil
}
v2["Abyssal Shovel"] = v7
local v8 = {
	["Control"] = 8,
	["Haste"] = 3,
	["Strength"] = 4,
	["Luck"] = -100,
	["Passive"] = nil,
	["BossDamage"] = 20,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 8,
		["Haste"] = 3,
		["Strength"] = 4,
		["Luck"] = -100
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Rock",
	["UIColour"] = Color3.fromRGB(255, 47, 47),
	["Description"] = "A shovel that has had it\'s head replaced with a strong magnet. Can only dig junk items, but great at digging up loot!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 10000,
	["PurchaseFrom"] = "Cinder Cavern Magnet Shop",
	["PurchaseFromColor"] = Color3.fromRGB(51, 54, 255)
}
v2["Magnet Shovel"] = v8
v2["Jam Shovel"] = {
	["Control"] = 8,
	["Haste"] = 6,
	["Strength"] = 6,
	["Luck"] = 15,
	["Passive"] = "Jam Coating",
	["BossDamage"] = 27,
	["RockEnabled"] = false,
	["RockBoost"] = nil,
	["PreferredGround"] = "Dirt",
	["StatsShow"] = "Dirt",
	["CharmSynergies"] = { "Jar Of Jam", "Jar Of Peanut Butter" },
	["CharmSynergyBuffs"] = {
		{ "Haste", 2 },
		{ "Strength", 3 }
	},
	["UIColour"] = Color3.fromRGB(120, 28, 53),
	["Description"] = "A sweet and gooey shovel with lots of speed. [10% chance to coat you and nearby players in jam for a temporary haste boost]",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 20000,
	["PurchaseFrom"] = "Silver\'s Farm",
	["PurchaseFromColor"] = Color3.fromRGB(159, 175, 188)
}
local v9 = {
	["Control"] = 7,
	["Haste"] = 4,
	["Strength"] = 9,
	["Luck"] = 15,
	["Passive"] = nil,
	["BossDamage"] = 30,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 7,
		["Haste"] = 4,
		["Strength"] = 9,
		["Luck"] = 18
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Tasty", 25, "Force" },
	["UIColour"] = Color3.fromRGB(255, 121, 181),
	["Description"] = "Tom\'s greatest creation! Dig in style, and never fear being hungry ever again!- Has a 25% chance to make items \'tasty\'.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 45000,
	["PurchaseFrom"] = "Tom\'s Bakery",
	["PurchaseFromColor"] = Color3.fromRGB(102, 171, 255)
}
v2["Shortcake Shovel"] = v9
local v10 = {
	["Control"] = 7,
	["Haste"] = 5,
	["Strength"] = 6,
	["Luck"] = 18,
	["Passive"] = "Spore Spawner",
	["BossDamage"] = 15,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 8,
		["Haste"] = 5,
		["Strength"] = 6,
		["Luck"] = 18
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["UIColour"] = Color3.fromRGB(255, 227, 156),
	["Description"] = "This spade is covered in rare, lucky spores. [10% chance to spawn a luck totem when digging]",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 30000,
	["PurchaseFrom"] = "Rooftop Woodlands",
	["PurchaseFromColor"] = Color3.fromRGB(255, 35, 35)
}
v2["Spore Spade"] = v10
local v11 = {
	["Control"] = 6,
	["Haste"] = 7,
	["Strength"] = 6,
	["Luck"] = 15,
	["BossDamage"] = 80,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 5,
		["Haste"] = 7,
		["Strength"] = 7,
		["Luck"] = 15
	},
	["PreferredGround"] = "Dirt",
	["StatsShow"] = "Dirt",
	["Requirements"] = {
		{ "Bosses_Defeated", 6 }
	},
	["UIColour"] = Color3.fromRGB(255, 227, 156),
	["Description"] = "This spear (turned shovel) is an extremely quick, and efficient weapon for fending off foes.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 40000
}
v2["Slayers Shovel"] = v11
local v12 = {
	["Control"] = 5.5,
	["Haste"] = 3,
	["Strength"] = 6,
	["Luck"] = 25,
	["Passive"] = nil,
	["BossDamage"] = 12,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 5.5,
		["Haste"] = 3,
		["Strength"] = 6,
		["Luck"] = 25
	},
	["PreferredGround"] = "Dirt",
	["StatsShow"] = "Dirt",
	["CharmSynergies"] = { "Lucky Bell", "Solstice Bell", "Fortuned Bell" },
	["CharmSynergyBuffs"] = {
		{ "Luck", 5 }
	},
	["UIColour"] = Color3.fromRGB(255, 237, 41),
	["Description"] = "This shovel is forged purely with the power of luck. Less junk and common items will be dug up!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 14000,
	["PurchaseFrom"] = "Cindy\'s Shore Shop",
	["PurchaseFromColor"] = Color3.fromRGB(193, 193, 193)
}
v2["Bell Shovel"] = v12
v2["Venomous Shovel"] = {
	["Control"] = 3,
	["Haste"] = 7,
	["Strength"] = 11.5,
	["Luck"] = 16,
	["Passive"] = nil,
	["BossDamage"] = 75,
	["RockEnabled"] = false,
	["RockBoost"] = nil,
	["PreferredGround"] = "Dirt",
	["StatsShow"] = "Dirt",
	["Modified_Passive"] = { "Venomous", 200, "Add" },
	["UIColour"] = Color3.fromRGB(8, 102, 7),
	["Description"] = "Enhanced with the venom of a basilisk. Items are more likely to be Venomous.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil
}
local v13 = {
	["Control"] = 5,
	["Haste"] = 5,
	["Strength"] = 10,
	["Luck"] = 15,
	["Passive"] = nil,
	["BossDamage"] = 30,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 5,
		["Haste"] = 4.5,
		["Strength"] = 9.5,
		["Luck"] = 13
	},
	["PreferredGround"] = "Dirt",
	["StatsShow"] = "Dirt",
	["UIColour"] = Color3.fromRGB(75, 255, 171),
	["Description"] = "Forged from the metals of a candlelight phantom, haunted with their anomalous energy.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil
}
v2["Candlelight Shovel"] = v13
local v14 = {
	["Control"] = 5,
	["Haste"] = 4,
	["Strength"] = 10.5,
	["Luck"] = 20,
	["Passive"] = nil,
	["BossDamage"] = 40,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 7,
		["Haste"] = 4,
		["Strength"] = 10.5,
		["Luck"] = 20
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["CharmSynergies"] = { "Copper Cowboy Hat" },
	["CharmSynergyBuffs"] = {
		{ "Control", 1.5 },
		{ "Strength", 6 }
	},
	["UIColour"] = Color3.fromRGB(255, 44, 44),
	["Description"] = "Mr Salty has a history of being a metal-worker, often scraping up his metals and making shovels, such as this one!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 60000,
	["PurchaseFrom"] = "Salty\'s Saloon",
	["PurchaseFromColor"] = Color3.fromRGB(255, 183, 82)
}
v2["Archaic Shovel"] = v14
local v15 = {
	["Control"] = 5,
	["Haste"] = 4,
	["Strength"] = 7,
	["Luck"] = 22,
	["Passive"] = nil,
	["BossDamage"] = 50,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 5,
		["Haste"] = 4.5,
		["Strength"] = 8,
		["Luck"] = 22
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Frigid", 30, "Force" },
	["UIColour"] = Color3.fromRGB(114, 170, 255),
	["Description"] = "Forged from the high pressure conditions of Mount Cinder\'s crystal ice. 30% chance to make items Frigid.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 75000,
	["PurchaseFrom"] = "Mount Cinder",
	["PurchaseFromColor"] = Color3.fromRGB(120, 224, 255)
}
v2["Frigid Shovel"] = v15
local v16 = {
	["Control"] = 6.5,
	["Haste"] = 4,
	["Strength"] = 3,
	["Luck"] = 25,
	["Passive"] = nil,
	["BossDamage"] = 80,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 6.5,
		["Haste"] = 4,
		["Strength"] = 3,
		["Luck"] = 25
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Dirt",
	["UIColour"] = Color3.fromRGB(166, 125, 255),
	["Description"] = "A spooky shovel, imbued with silk-weaving powers. The webs make it easier to dig! [Chance for a dig bar to have increased control]",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil
}
v2["Arachnid Shovel"] = v16
local v17 = {
	["Control"] = 8.5,
	["Haste"] = 5,
	["Strength"] = 7,
	["Luck"] = 20,
	["Passive"] = nil,
	["BossDamage"] = 60,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 9,
		["Haste"] = 5,
		["Strength"] = 8,
		["Luck"] = 20
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Iridescent", 30, "Force" },
	["CharmSynergies"] = { "Prismatic Domino Crown" },
	["CharmSynergyBuffs"] = {
		{ "Control", 2 },
		{ "Haste", 3 },
		{ "Strength", 3 },
		{ "Luck", 5 }
	},
	["UIColour"] = Color3.fromRGB(255, 106, 195),
	["Description"] = "A mythical shovel glistening with every color. Items have a 30% chance to be Iridescent.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 300000,
	["PurchaseFrom"] = "Travelling Merchant",
	["PurchaseFromColor"] = Color3.fromRGB(226, 79, 255)
}
v2["Prismatic Shovel"] = v17
local v18 = {
	["Control"] = 9,
	["Haste"] = 7,
	["Strength"] = 7.5,
	["Luck"] = 25,
	["Passive"] = "HealthPulse",
	["Passive_Chance"] = 0.1,
	["BossDamage"] = 86,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 9,
		["Haste"] = 7,
		["Strength"] = 7.5,
		["Luck"] = 25
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Golden", 20, "Force" },
	["UIColour"] = Color3.fromRGB(255, 210, 96),
	["Description"] = "Forged centuries ago by the Divine of Strength. He collected gold nuggets and formed it into his own shovel. [20% Chance for an item to be golden. Your shovel will also heal endurance over time]",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 345000,
	["Requirements"] = {
		{ "Bosses_Defeated", 10 }
	}
}
v2["Glinted Shovel"] = v18
local v19 = {
	["Control"] = 9,
	["Haste"] = 5,
	["Strength"] = 9,
	["Luck"] = 35,
	["Passive"] = nil,
	["BossDamage"] = 60,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 9,
		["Haste"] = 5,
		["Strength"] = 10,
		["Luck"] = 30
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Celestial", 40, "Force" },
	["UIColour"] = Color3.fromRGB(255, 210, 96),
	["Description"] = "Shattered off from the stars far above. 40% Chance to turn an item Celestial.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 600000,
	["Requirements"] = {
		{ "Boss", "Molten Monstrosity" }
	}
}
v2["Starfire Shovel"] = v19
local v20 = {
	["Control"] = 6,
	["Haste"] = 5,
	["Strength"] = 8,
	["Luck"] = 20,
	["Passive"] = nil,
	["BossDamage"] = 30,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 7,
		["Haste"] = 5,
		["Strength"] = 8.5,
		["Luck"] = 20
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Golden", 25, "Force" },
	["UIColour"] = Color3.fromRGB(255, 195, 98),
	["Description"] = "Armoured with the luck of Midas; 25% Chance to turn an item Golden.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 140000,
	["PurchaseFrom"] = "Travelling Merchant",
	["PurchaseFromColor"] = Color3.fromRGB(226, 79, 255)
}
v2["Gold Digger"] = v20
local v21 = {
	["Control"] = 3,
	["Haste"] = 15,
	["Strength"] = 4,
	["Luck"] = 10,
	["Passive"] = nil,
	["BossDamage"] = 50,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 3,
		["Haste"] = 16,
		["Strength"] = 5,
		["Luck"] = 10
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["CharmSynergies"] = { "Magma Boots" },
	["CharmSynergyBuffs"] = {
		{ "Strength", 3 }
	},
	["UIColour"] = Color3.fromRGB(255, 113, 42),
	["Description"] = "A strong, light-weight shovel made purely of obsidian and magma.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 100000
}
v2["Obsidian Shovel"] = v21
local v22 = {
	["Control"] = 15,
	["Haste"] = 3,
	["Strength"] = 3,
	["Luck"] = 15,
	["Passive"] = nil,
	["BossDamage"] = 50,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 16,
		["Haste"] = 3,
		["Strength"] = 3,
		["Luck"] = 15
	},
	["PreferredGround"] = "Rock",
	["StatsShow"] = "Rock",
	["UIColour"] = Color3.fromRGB(152, 62, 255),
	["Description"] = "Something overtakes you; it\'s like you can\'t miss a hit!- This shovels control is phenomenal!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 170000
}
v2["Draconic Shovel"] = v22
local v23 = {
	["Control"] = 8,
	["Haste"] = 7.5,
	["Strength"] = 8,
	["Luck"] = 12.5,
	["Passive"] = nil,
	["BossDamage"] = 85,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 8,
		["Haste"] = 7.5,
		["Strength"] = 9,
		["Luck"] = 12.5
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Dirt",
	["Modified_Passive"] = { "Dark", 50, "Force" },
	["CharmSynergies"] = { "Imp Horns", "Radioactive Horns", "Blood Crown" },
	["CharmSynergyBuffs"] = {
		{ "Haste", 3.5 },
		{ "Luck", 9 }
	},
	["UIColour"] = Color3.fromRGB(255, 85, 0),
	["Description"] = "A fierce shovel forged in the deepest and hottest depths of Mount Charcoal; 50% chance to turn an item Dark.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil
}
v2["Monstrous Shovel"] = v23
local v24 = {
	["Control"] = 7,
	["Haste"] = 3.5,
	["Strength"] = 11,
	["Luck"] = 11,
	["Passive"] = nil,
	["BossDamage"] = 55,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 8,
		["Haste"] = 1.5,
		["Strength"] = 13,
		["Luck"] = 9
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Rock",
	["Modified_Passive"] = { "Pizza", 25, "Force" },
	["UIColour"] = Color3.fromRGB(184, 233, 255),
	["Description"] = "Some think its only use is to cut pizza, but some smart balls of dough figured out that it can be used to dig up some strong loot!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = (1 / 0)
}
v2["Pizza Roller"] = v24
local v25 = {
	["Thumbnail"] = "rbxassetid://77931167219401",
	["Control"] = 0.25,
	["Haste"] = 5,
	["Strength"] = 24,
	["Luck"] = 0,
	["Passive"] = nil,
	["BossDamage"] = 65,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 0.25,
		["Haste"] = 5,
		["Strength"] = 20,
		["Luck"] = 0
	},
	["PreferredGround"] = "Dirt",
	["StatsShow"] = "Dirt",
	["CharmSynergies"] = { "Solstice Bell" },
	["CharmSynergyBuffs"] = {
		{ "Haste", 3 },
		{ "Luck", 15 }
	},
	["UIColour"] = Color3.fromRGB(255, 125, 65),
	["Description"] = "Forged from fragments of fallen stars. It\'s strength and power is unlike any other.",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = 190000,
	["BoolTracker_Required"] = "Seen_Solstice_Shovel"
}
v2["Solstice Shovel"] = v25
local v26 = {
	["Control"] = 100,
	["Haste"] = 100,
	["Strength"] = 100,
	["Luck"] = 100,
	["Passive"] = nil,
	["BossDamage"] = 50000,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 100,
		["Haste"] = 100,
		["Strength"] = 100,
		["Luck"] = 100
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Dirt",
	["UIColour"] = Color3.fromRGB(255, 0, 255),
	["Description"] = "together... WE. ARE. DIG!",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil,
	["Unobtainable"] = true
}
v2["Developer Shovel"] = v26
local v27 = {
	["Control"] = 100,
	["Haste"] = 100,
	["Strength"] = 100,
	["Luck"] = 100,
	["Passive"] = nil,
	["BossDamage"] = 1000,
	["RockEnabled"] = true,
	["RockBoost"] = {
		["Control"] = 100,
		["Haste"] = 100,
		["Strength"] = 100,
		["Luck"] = 100
	},
	["PreferredGround"] = "Any",
	["StatsShow"] = "Dirt",
	["UIColour"] = Color3.fromRGB(89, 21, 21),
	["Description"] = "",
	["AnimationPack"] = v1:WaitForChild("Default"),
	["Cost"] = nil,
	["Unobtainable"] = true
}
v2["Gravekeeper\'s Shovel"] = v27
return v2
