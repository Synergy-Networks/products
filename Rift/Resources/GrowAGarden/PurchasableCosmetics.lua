local v1 = game:GetService("ReplicatedStorage")
local v2 = {
    ["Yellow Umbrella"] = {
        ["CosmeticName"] = "Yellow Umbrella",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145031,
        ["FallbackPrice"] = 29
    },
    ["Orange Umbrella"] = {
        ["CosmeticName"] = "Orange Umbrella",
        ["StockAmount"] = { 1, 1 },
        ["ShecklesPurchaseOnly"] = true,
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145015,
        ["FallbackPrice"] = 29
    },
    ["Brick Stack"] = {
        ["CosmeticName"] = "Brick Stack",
        ["StockAmount"] = { 3, 5 },
        ["Price"] = 350000,
        ["PurchaseID"] = 3290145041,
        ["FallbackPrice"] = 29
    },
    ["Compost Bin"] = {
        ["CosmeticName"] = "Compost Bin",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1200000,
        ["PurchaseID"] = 3290145025,
        ["FallbackPrice"] = 29
    },
    ["Log"] = {
        ["CosmeticName"] = "Log",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145010,
        ["FallbackPrice"] = 29
    },
    ["Rock Pile"] = {
        ["CosmeticName"] = "Rock Pile",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145022,
        ["FallbackPrice"] = 29
    },
    ["Rake"] = {
        ["CosmeticName"] = "Rake",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290113000,
        ["FallbackPrice"] = 29
    },
    ["Shovel"] = {
        ["CosmeticName"] = "Shovel",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290113132,
        ["FallbackPrice"] = 29
    },
    ["Torch"] = {
        ["CosmeticName"] = "Torch",
        ["StockAmount"] = { 1, 3 },
        ["Price"] = 800000,
        ["PurchaseID"] = 3290145030,
        ["FallbackPrice"] = 29
    },
    ["Wood Pile"] = {
        ["CosmeticName"] = "Wood Pile",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 800000,
        ["PurchaseID"] = 3290145016,
        ["FallbackPrice"] = 29
    },
    ["Small Circle Tile"] = {
        ["CosmeticName"] = "Small Circle Tile",
        ["StockAmount"] = { 3, 5 },
        ["Price"] = 150000,
        ["PurchaseID"] = 3290145040,
        ["FallbackPrice"] = 29
    },
    ["Medium Circle Tile"] = {
        ["CosmeticName"] = "Medium Circle Tile",
        ["StockAmount"] = { 1, 3 },
        ["Price"] = 250000,
        ["PurchaseID"] = 3290145046,
        ["FallbackPrice"] = 29
    },
    ["Small Path Tile"] = {
        ["CosmeticName"] = "Small Path Tile",
        ["StockAmount"] = { 3, 5 },
        ["Price"] = 250000,
        ["PurchaseID"] = 3290145036,
        ["FallbackPrice"] = 29
    },
    ["Medium Path Tile"] = {
        ["CosmeticName"] = "Medium Path Tile",
        ["StockAmount"] = { 1, 5 },
        ["Price"] = 450000,
        ["PurchaseID"] = 3290145011,
        ["FallbackPrice"] = 29
    },
    ["Large Path Tile"] = {
        ["CosmeticName"] = "Large Path Tile",
        ["StockAmount"] = { 1, 3 },
        ["Price"] = 650000,
        ["PurchaseID"] = 3290145052,
        ["FallbackPrice"] = 29
    },
    ["Axe Stump"] = {
        ["CosmeticName"] = "Axe Stump",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1500000,
        ["PurchaseID"] = 3290145012,
        ["FallbackPrice"] = 59
    },
    ["Bookshelf"] = {
        ["CosmeticName"] = "Bookshelf",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 2000000,
        ["PurchaseID"] = 3290145044,
        ["FallbackPrice"] = 59
    },
    ["Brown Bench"] = {
        ["CosmeticName"] = "Brown Bench",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145003,
        ["FallbackPrice"] = 59
    },
    ["Hay Bale"] = {
        ["CosmeticName"] = "Hay Bale",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 750000,
        ["PurchaseID"] = 3290785122,
        ["FallbackPrice"] = 59
    },
    ["Light On Ground"] = {
        ["CosmeticName"] = "Light On Ground",
        ["StockAmount"] = { 1, 3 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145047,
        ["FallbackPrice"] = 59
    },
    ["Log Bench"] = {
        ["CosmeticName"] = "Log Bench",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1200000,
        ["PurchaseID"] = 3290110287,
        ["FallbackPrice"] = 59
    },
    ["Mini TV"] = {
        ["CosmeticName"] = "Mini TV",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1300000,
        ["PurchaseID"] = 3290145028,
        ["FallbackPrice"] = 59
    },
    ["Shovel Grave"] = {
        ["CosmeticName"] = "Shovel Grave",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145050,
        ["FallbackPrice"] = 59
    },
    ["Small Stone Lantern"] = {
        ["CosmeticName"] = "Small Stone Lantern",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145009,
        ["FallbackPrice"] = 59
    },
    ["Small Stone Pad"] = {
        ["CosmeticName"] = "Small Stone Pad",
        ["StockAmount"] = { 3, 5 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145024,
        ["FallbackPrice"] = 59
    },
    ["Large Stone Pad"] = {
        ["CosmeticName"] = "Large Stone Pad",
        ["StockAmount"] = { 1, 3 },
        ["Price"] = 1500000,
        ["PurchaseID"] = 3290145006,
        ["FallbackPrice"] = 59
    },
    ["Stone Lantern"] = {
        ["CosmeticName"] = "Stone Lantern",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1500000,
        ["PurchaseID"] = 3290145017,
        ["FallbackPrice"] = 59
    },
    ["Water Trough"] = {
        ["CosmeticName"] = "Water Trough",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1500000,
        ["PurchaseID"] = 3290145001,
        ["FallbackPrice"] = 59
    },
    ["Wood Fence"] = {
        ["CosmeticName"] = "Wood Fence",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 750000,
        ["PurchaseID"] = 3290144997,
        ["FallbackPrice"] = 59
    },
    ["Small Wood Flooring"] = {
        ["CosmeticName"] = "Small Wood Flooring",
        ["StockAmount"] = { 3, 5 },
        ["Price"] = 850000,
        ["PurchaseID"] = 3290145005,
        ["FallbackPrice"] = 59
    },
    ["Medium Wood Flooring"] = {
        ["CosmeticName"] = "Medium Wood Flooring",
        ["StockAmount"] = { 1, 3 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3290145051,
        ["FallbackPrice"] = 59
    },
    ["Large Wood Flooring"] = {
        ["CosmeticName"] = "Large Wood Flooring",
        ["StockAmount"] = { 1, 2 },
        ["Price"] = 1200000,
        ["PurchaseID"] = 3290145007,
        ["FallbackPrice"] = 59
    },
    ["Small Stone Table"] = {
        ["CosmeticName"] = "Small Stone Table",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1300000,
        ["PurchaseID"] = 3290145042,
        ["FallbackPrice"] = 59
    },
    ["Medium Stone Table"] = {
        ["CosmeticName"] = "Medium Stone Table",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1750000,
        ["PurchaseID"] = 3290145039,
        ["FallbackPrice"] = 59
    },
    ["Long Stone Table"] = {
        ["CosmeticName"] = "Long Stone Table",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 2000000,
        ["PurchaseID"] = 3290145023,
        ["FallbackPrice"] = 59
    },
    ["Lamp Post"] = {
        ["CosmeticName"] = "Lamp Post",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 11800000,
        ["PurchaseID"] = 3290145019,
        ["FallbackPrice"] = 119
    },
    ["Bird Bath"] = {
        ["CosmeticName"] = "Bird Bath",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12000000,
        ["PurchaseID"] = 3290144990,
        ["FallbackPrice"] = 119
    },
    ["Brown Stone Pillar"] = {
        ["CosmeticName"] = "Brown Stone Pillar",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12500000,
        ["PurchaseID"] = 3290145018,
        ["FallbackPrice"] = 119
    },
    ["Dark Stone Pillar"] = {
        ["CosmeticName"] = "Dark Stone Pillar",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12500000,
        ["PurchaseID"] = 3290145000,
        ["FallbackPrice"] = 119
    },
    ["Grey Stone Pillar"] = {
        ["CosmeticName"] = "Grey Stone Pillar",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12500000,
        ["PurchaseID"] = 3290145035,
        ["FallbackPrice"] = 119
    },
    ["Campfire"] = {
        ["CosmeticName"] = "Campfire",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 11800000,
        ["PurchaseID"] = 3290145034,
        ["FallbackPrice"] = 119
    },
    ["Cooking Pot"] = {
        ["CosmeticName"] = "Cooking Pot",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12000000,
        ["PurchaseID"] = 3290145020,
        ["FallbackPrice"] = 119
    },
    ["Curved Canopy"] = {
        ["CosmeticName"] = "Curved Canopy",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12500000,
        ["PurchaseID"] = 3290144999,
        ["FallbackPrice"] = 119
    },
    ["Flat Canopy"] = {
        ["CosmeticName"] = "Flat Canopy",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12500000,
        ["PurchaseID"] = 3290145032,
        ["FallbackPrice"] = 119
    },
    ["Small Wood Table"] = {
        ["CosmeticName"] = "Small Wood Table",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 11800000,
        ["PurchaseID"] = 3290145021,
        ["FallbackPrice"] = 119
    },
    ["Large Wood Table"] = {
        ["CosmeticName"] = "Large Wood Table",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12200000,
        ["PurchaseID"] = 3290145002,
        ["FallbackPrice"] = 119
    },
    ["Wheelbarrow"] = {
        ["CosmeticName"] = "Wheelbarrow",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 13000000,
        ["PurchaseID"] = 3290112654,
        ["FallbackPrice"] = 119
    },
    ["Green Tractor"] = {
        ["CosmeticName"] = "Green Tractor",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 555500000,
        ["PurchaseID"] = 3290113504,
        ["FallbackPrice"] = 189
    },
    ["Red Tractor"] = {
        ["CosmeticName"] = "Red Tractor",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 555500000,
        ["PurchaseID"] = 3290114982,
        ["FallbackPrice"] = 189
    },
    ["Large Wood Arbour"] = {
        ["CosmeticName"] = "Large Wood Arbour",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 55500000,
        ["PurchaseID"] = 3290114021,
        ["FallbackPrice"] = 189
    },
    ["Round Metal Arbour"] = {
        ["CosmeticName"] = "Round Metal Arbour",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 55500000,
        ["PurchaseID"] = 3290115313,
        ["FallbackPrice"] = 189
    },
    ["Frog Fountain"] = {
        ["CosmeticName"] = "Frog Fountain",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 65200000,
        ["PurchaseID"] = 3290145037,
        ["FallbackPrice"] = 189
    },
    ["Blue Cooler Chest"] = {
        ["CosmeticName"] = "Blue Cooler Chest",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3311239350,
        ["FallbackPrice"] = 119
    },
    ["Blue Hammock"] = {
        ["CosmeticName"] = "Blue Hammock",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1200000,
        ["PurchaseID"] = 3311240231,
        ["FallbackPrice"] = 119
    },
    ["Cabana"] = {
        ["CosmeticName"] = "Cabana",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12000000,
        ["PurchaseID"] = 3311240323,
        ["FallbackPrice"] = 189
    },
    ["Lemonade Stand"] = {
        ["CosmeticName"] = "Lemonade Stand",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 16500000,
        ["PurchaseID"] = 3311240446,
        ["FallbackPrice"] = 299
    },
    ["Market Cart"] = {
        ["CosmeticName"] = "Market Cart",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 555500000,
        ["PurchaseID"] = 3311240572,
        ["FallbackPrice"] = 299
    },
    ["Mower"] = {
        ["CosmeticName"] = "Mower",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 12500000,
        ["PurchaseID"] = 3311240673,
        ["FallbackPrice"] = 189
    },
    ["Pink Cooler Chest"] = {
        ["CosmeticName"] = "Pink Cooler Chest",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3311240802,
        ["FallbackPrice"] = 119
    },
    ["Red Cooler Chest"] = {
        ["CosmeticName"] = "Red Cooler Chest",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1000000,
        ["PurchaseID"] = 3311240905,
        ["FallbackPrice"] = 119
    },
    ["Red Hammock"] = {
        ["CosmeticName"] = "Red Hammock",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 1200000,
        ["PurchaseID"] = 3311241055,
        ["FallbackPrice"] = 119
    },
    ["Tiki Bar"] = {
        ["CosmeticName"] = "Tiki Bar",
        ["StockAmount"] = { 1, 1 },
        ["Price"] = 555500000,
        ["PurchaseID"] = 3311241135,
        ["FallbackPrice"] = 299
    }
}
return v2
