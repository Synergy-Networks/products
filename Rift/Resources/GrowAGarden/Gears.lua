local v1 = game:GetService("ReplicatedStorage")
local v3 = {
	["Watering Can"] = {
		["GearName"] = "Watering Can",
		["GearRarity"] = "Common",
		["StockChance"] = 1,
		["StockAmount"] = {
			1,
			3
		},
		["Price"] = 50000,
		["PurchaseID"] = 3260229242,
		["GiftPurchaseID"] = 3269349334,
		["Stack"] = 10,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 1,
		["Asset"] = "rbxassetid://140223014467344",
	},
	["Trowel"] = {
		["GearName"] = "Trowel",
		["GearRarity"] = "Uncommon",
		["StockChance"] = 1,
		["StockAmount"] = {
			1,
			3
		},
		["Price"] = 100000,
		["PurchaseID"] = 3265946561,
		["Stack"] = 5,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 2,
		["Asset"] = "rbxassetid://115261280019001",
	},
	["Recall Wrench"] = {
		["GearName"] = "Recall Wrench",
		["GearRarity"] = "Uncommon",
		["StockChance"] = 1,
		["StockAmount"] = {
			1,
			3
		},
		["Price"] = 150000,
		["PurchaseID"] = 3282918403,
		["GiftPurchaseID"] = 3282918955,
		["Stack"] = 5,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 3,
		["Asset"] = "rbxassetid://98327818593168",
	},
	["Basic Sprinkler"] = {
		["GearName"] = "Basic Sprinkler",
		["GearRarity"] = "Rare",
		["StockChance"] = 3,
		["StockAmount"] = {
			1,
			3
		},
		["Price"] = 25000,
		["PurchaseID"] = 3265889601,
		["GiftPurchaseID"] = 3269349445,
		["Stack"] = 1,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 4,
		["Asset"] = "rbxassetid://120314005864914",
	},
	["Advanced Sprinkler"] = {
		["GearName"] = "Advanced Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 7,
		["StockAmount"] = {
			1,
			2
		},
		["Price"] = 50000,
		["PurchaseID"] = 3265889751,
		["GiftPurchaseID"] = 3269349768,
		["Stack"] = 1,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 5,
		["Asset"] = "rbxassetid://90193997839883",
	},
	["Godly Sprinkler"] = {
		["GearName"] = "Godly Sprinkler",
		["GearRarity"] = "Mythical",
		["StockChance"] = 11,
		["StockAmount"] = {
			1,
			1
		},
		["Price"] = 120000,
		["PurchaseID"] = 3265889948,
		["GiftPurchaseID"] = 3269349908,
		["Stack"] = 1,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 6,
		["Asset"] = "rbxassetid://75442797836082",
	},
	["Lightning Rod"] = {
		["GearName"] = "Lightning Rod",
		["GearRarity"] = "Mythical",
		["StockChance"] = 50,
		["StockAmount"] = {
			1,
			1
		},
		["Price"] = 1000000,
		["PurchaseID"] = 3265946758,
		["GiftPurchaseID"] = 3274108730,
		["Stack"] = 1,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 7,
		["Asset"] = "rbxassetid://125433095334047",
	},
	["Master Sprinkler"] = {
		["GearName"] = "Master Sprinkler",
		["GearRarity"] = "Divine",
		["StockChance"] = 100,
		["StockAmount"] = {
			1,
			1
		},
		["Price"] = 10000000,
		["PurchaseID"] = 3267580365,
		["GiftPurchaseID"] = 3269350167,
		["Stack"] = 1,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 8,
		["Asset"] = "rbxassetid://98504519094449",
	},
	["Cleaning Spray"] = {
		["GearName"] = "Cleaning Spray",
		["GearRarity"] = "Divine",
		["StockChance"] = 1,
		["StockAmount"] = {
			1,
			5
		},
		["Price"] = 15000000,
		["PurchaseID"] = 3306767043,
		["GiftPurchaseID"] = 3306767451,
		["Stack"] = 10,
		["LayoutOrder"] = 9,
		["DisplayInShop"] = true,
		["Asset"] = "rbxassetid://134458369683392",
	},
	["Favorite Tool"] = {
		["GearName"] = "Favorite Tool",
		["GearRarity"] = "Divine",
		["StockChance"] = 1,
		["StockAmount"] = {
			1,
			3
		},
		["Price"] = 20000000,
		["PurchaseID"] = 3281679093,
		["Stack"] = 20,
		["GiftPurchaseID"] = 3281679185,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 10,
		["Asset"] = "rbxassetid://129676033321965",
	},
	["Harvest Tool"] = {
		["GearName"] = "Harvest Tool",
		["GearRarity"] = "Divine",
		["StockChance"] = 1,
		["StockAmount"] = {
			1,
			3
		},
		["Price"] = 30000000,
		["PurchaseID"] = 3286038236,
		["Stack"] = 5,
		["GiftPurchaseID"] = 3286038078,
		["LayoutOrder"] = 11,
		["DisplayInShop"] = true,
		["Asset"] = "rbxassetid://99521037861537",
	},
	["Friendship Pot"] = {
		["GearName"] = "Friendship Pot",
		["GearRarity"] = "Divine",
		["StockChance"] = 50,
		["StockAmount"] = {
			1,
			1
		},
		["Price"] = 15000000,
		["PurchaseID"] = 3301473650,
		["Stack"] = 1,
		["GiftPurchaseID"] = 3301474767,
		["LayoutOrder"] = 12,
		["DisplayInShop"] = true,
		["Asset"] = "rbxassetid://106888620308041",
	},
	["Mutation Spray Choc"] = {
		["GearName"] = "Mutation Spray Choc",
		["GearRarity"] = "Divine",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["Stack"] = 10,
		["GiftPurchaseID"] = 0,
		["LayoutOrder"] = 13,
		["DisplayInShop"] = false,
		["Asset"] = "rbxassetid://104900539098874",
	},
	["Mutation Spray Pollinated"] = {
		["GearName"] = "Mutation Spray Choc",
		["GearRarity"] = "Divine",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["Stack"] = 10,
		["GiftPurchaseID"] = 0,
		["LayoutOrder"] = 13,
		["DisplayInShop"] = false,
		["Asset"] = "rbxassetid://103170047234524",
	},
	["Mutation Spray Shocked"] = {
		["GearName"] = "Mutation Spray Shocked",
		["GearRarity"] = "Divine",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["Stack"] = 10,
		["GiftPurchaseID"] = 0,
		["LayoutOrder"] = 14,
		["DisplayInShop"] = false,
		["Asset"] = "rbxassetid://131806798815295",
	},
	["Reclaimer"] = {
		["GearName"] = "Reclaimer",
		["GearRarity"] = "Divine",
		["StockChance"] = 1,
		["StockAmount"] = {
			5,
			10
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["Stack"] = 1,
		["GiftPurchaseID"] = 3309685958,
		["LayoutOrder"] = 15,
		["DisplayInShop"] = false,
		["Asset"] = "rbxassetid://79034654924763",
	},
	["Tanning Mirror"] = {
		["GearName"] = "Tanning Mirror",
		["GearRarity"] = "Mythical",
		["StockChance"] = 50,
		["StockAmount"] = {
			1,
			1
		},
		["Price"] = 1000000,
		["PurchaseID"] = 3311159836,
		["GiftPurchaseID"] = 3311160347,
		["Stack"] = 1,
		["DisplayInShop"] = true,
		["LayoutOrder"] = 7,
		["Asset"] = "rbxassetid://81619835086288",
	},
	["Tropical Mist Sprinkler"] = {
		["GearName"] = "Tropical Mist Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["GiftPurchaseID"] = 0,
		["Stack"] = 1,
		["DisplayInShop"] = false,
		["LayoutOrder"] = 0,
		["Asset"] = "rbxassetid://122592465315585",
	},
	["Spice Spritzer Sprinkler"] = {
		["GearName"] = "Spice Spritzer Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["GiftPurchaseID"] = 0,
		["Stack"] = 1,
		["DisplayInShop"] = false,
		["LayoutOrder"] = 0,
		["Asset"] = "rbxassetid://130541096369176",
	},
	["Sweet Soaker Sprinkler"] = {
		["GearName"] = "Sweet Soaker Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["GiftPurchaseID"] = 0,
		["Stack"] = 1,
		["DisplayInShop"] = false,
		["LayoutOrder"] = 0,
		["Asset"] = "rbxassetid://91036428046936",
	},
	["Stalk Sprout Sprinkler"] = {
		["GearName"] = "Stalk Sprout Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["GiftPurchaseID"] = 0,
		["Stack"] = 1,
		["DisplayInShop"] = false,
		["LayoutOrder"] = 0,
		["Asset"] = "rbxassetid://125326661954614",
	},
	["Berry Blusher Sprinkler"] = {
		["GearName"] = "Berry Blusher Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["GiftPurchaseID"] = 0,
		["Stack"] = 1,
		["DisplayInShop"] = false,
		["LayoutOrder"] = 0,
		["Asset"] = "rbxassetid://121776369197466",
	},
	["Flower Froster Sprinkler"] = {
		["GearName"] = "Flower Froster Sprinkler",
		["GearRarity"] = "Legendary",
		["StockChance"] = 0,
		["StockAmount"] = {
			0,
			0
		},
		["Price"] = 10000000000000,
		["PurchaseID"] = 0,
		["GiftPurchaseID"] = 0,
		["Stack"] = 1,
		["DisplayInShop"] = false,
		["LayoutOrder"] = 0,
		["Asset"] = "rbxassetid://86602672756084",
	}
}
return v3
