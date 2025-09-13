local v2 = {
    ["Common Egg"] = {
        ["EggName"] = "Common Egg",
        ["EggRarity"] = "Common",
        ["StockChance"] = 1,
        ["Price"] = 50000,
        ["PurchaseID"] = 3276346455,
        ["GiftPurchaseID"] = 3331486819,
        ["LayoutOrder"] = 10,
        ["PetEggDescription"] = "",
        ["FallbackPrice"] = 19
    },
    ["Uncommon Egg"] = {
        ["EggName"] = "Uncommon Egg",
        ["EggRarity"] = "Uncommon",
        ["StockChance"] = 6,
        ["Price"] = 150000,
        ["PurchaseID"] = 3276346509,
        ["GiftPurchaseID"] = 3376050257,
        ["LayoutOrder"] = 15,
        ["PetEggDescription"] = "",
        ["FallbackPrice"] = 39
    },
    ["Rare Egg"] = {
        ["EggName"] = "Rare Egg",
        ["EggRarity"] = "Rare",
        ["StockChance"] = 20,
        ["Price"] = 600000,
        ["PurchaseID"] = 3276346557,
        ["GiftPurchaseID"] = 3376050938,
        ["LayoutOrder"] = 20,
        ["PetEggDescription"] = "",
        ["FallbackPrice"] = 89
    },
    ["Legendary Egg"] = {
        ["EggName"] = "Legendary Egg",
        ["EggRarity"] = "Legendary",
        ["StockChance"] = 50,
        ["Price"] = 3000000,
        ["PurchaseID"] = 3276346676,
        ["GiftPurchaseID"] = 3376048526,
        ["LayoutOrder"] = 25,
        ["PetEggDescription"] = "",
        ["FallbackPrice"] = 129
    },
    ["Mythical Egg"] = {
        ["EggName"] = "Mythical Egg",
        ["EggRarity"] = "Mythical",
        ["StockChance"] = 70,
        ["Price"] = 8000000,
        ["PurchaseID"] = 3286560171,
        ["GiftPurchaseID"] = 3362615399,
        ["LayoutOrder"] = 35,
        ["PetEggDescription"] = "",
        ["FallbackPrice"] = 119
    },
    ["Bug Egg"] = {
        ["EggName"] = "Bug Egg",
        ["EggRarity"] = "Divine",
        ["StockChance"] = 100,
        ["Price"] = 50000000,
        ["PurchaseID"] = 3277000452,
        ["GiftPurchaseID"] = 3362615986,
        ["LayoutOrder"] = 60,
        ["PetEggDescription"] = "",
        ["FallbackPrice"] = 149
    },
    ["Pet Name Reroller"] = {
        ["EggName"] = "Pet Name Reroller",
        ["EggRarity"] = "Legendary",
        ["StockChance"] = 1,
        ["StockAmount"] = { 1, 10 },
        ["Price"] = 10000000,
        ["PurchaseID"] = 3394263188,
        ["DisplayInShop"] = true,
        ["LayoutOrder"] = 500,
        ["ItemType"] = "Gear",
        ["PetEggDescription"] = "Picks a new random name for your pet!",
        ["FallbackPrice"] = 49
    }
}
local v3 = {
    ["EggName"] = "Pet Lead",
    ["EggRarity"] = "Legendary",
    ["StockChance"] = 4,
    ["StockAmount"] = { 1, 2 },
    ["Price"] = 20000000,
    ["PurchaseID"] = 3394262674,
    ["DisplayInShop"] = true,
    ["LayoutOrder"] = 700,
    ["ItemType"] = "Gear",
    ["PetEggDescription"] = "Make a pet follow you for 10 seconds!",
    ["FallbackPrice"] = 99,
    ["LevelLocks"] = {
        ["Raphael"] = 3
    }
}
v2["Pet Lead"] = v3
local v4 = {
    ["EggName"] = "Rainbow Lollipop",
    ["EggRarity"] = "Prismatic",
    ["StockChance"] = 0,
    ["StockAmount"] = { 0, 0 },
    ["Price"] = 1e17,
    ["PurchaseID"] = 0,
    ["SpecialCurrencyType"] = "GardenCoins",
    ["DisplayInShop"] = false,
    ["LayoutOrder"] = 800,
    ["ItemType"] = "Gear",
    ["PetEggDescription"] = "Increases your pet\'s age by 25!",
    ["FallbackPrice"] = 0,
    ["LevelLocks"] = {
        ["Raphael"] = 6
    }
}
v2["Rainbow Lollipop"] = v4
return v2
