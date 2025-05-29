local v1 = game:GetService("ReplicatedStorage")
local v2 = v1:WaitForChild("Assets"):WaitForChild("Cosmetics")
local v4 = {
    ["Monster Mash Trophy"] = {
        ["Description"] = "Monster Mash Trophy gained by participating in the WORLD RECORD monster mash!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://77599265819344",
        ["Model"] = v2:FindFirstChild("Monster Mash Trophy"),
        ["Actions"] = {}
    },
    ["Yellow Umbrella"] = {
        ["Description"] = "Sunshine on a stick.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://94314012476539",
        ["Model"] = v2:FindFirstChild("Yellow Umbrella"),
        ["Actions"] = {}
    },
    ["Orange Umbrella"] = {
        ["Description"] = "Citrusy shade for sunny days.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://88274038012868",
        ["Model"] = v2:FindFirstChild("Orange Umbrella"),
        ["Actions"] = {}
    },
    ["Brick Stack"] = {
        ["Description"] = "Stacked with brickstar power.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://128357565698061",
        ["Model"] = v2:FindFirstChild("Brick Stack"),
        ["Actions"] = {}
    },
    ["Compost Bin"] = {
        ["Description"] = "Trash to treasure, garden edition.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://96378933887328",
        ["Model"] = v2:FindFirstChild("Compost Bin"),
        ["Actions"] = {}
    },
    ["Log"] = {
        ["Description"] = "The OG garden decor.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://76301661478378",
        ["Model"] = v2:FindFirstChild("Log"),
        ["Actions"] = {}
    },
    ["Rock Pile"] = {
        ["Description"] = "Rocks with sedimental value.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://115500068524301",
        ["Model"] = v2:FindFirstChild("Rock Pile"),
        ["Actions"] = {}
    },
    ["Rake"] = {
        ["Description"] = "Tools with cult-ivation.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://112597085006662",
        ["Model"] = v2:FindFirstChild("Rake"),
        ["Actions"] = {}
    },
    ["Shovel"] = {
        ["Description"] = "Tools with cult-ivation.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://91314518527541",
        ["Model"] = v2:FindFirstChild("Shovel"),
        ["Actions"] = {}
    },
    ["Torch"] = {
        ["Description"] = "Light up the night\226\128\148flamingly.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://138930375147694",
        ["Model"] = v2:FindFirstChild("Torch"),
        ["Actions"] = {}
    },
    ["Red Pottery"] = {
        ["Description"] = "Clay-zy for garden decor.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://116715517791414",
        ["Model"] = v2:FindFirstChild("Red Pottery"),
        ["Actions"] = {}
    },
    ["White Pottery"] = {
        ["Description"] = "Clay-zy for garden decor.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://98046045828300",
        ["Model"] = v2:FindFirstChild("White Pottery"),
        ["Actions"] = {}
    },
    ["Wood Pile"] = {
        ["Description"] = "Logging some serious style points.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://123525466548522",
        ["Model"] = v2:FindFirstChild("Wood Pile"),
        ["Actions"] = {}
    },
    ["Small Circle Tile"] = {
        ["Description"] = "Going in circles never looked so good.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://140549587097599",
        ["Model"] = v2:FindFirstChild("Small Circle Tile"),
        ["Actions"] = {}
    },
    ["Medium Circle Tile"] = {
        ["Description"] = "Going in circles never looked so good.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://114920818848221",
        ["Model"] = v2:FindFirstChild("Medium Circle Tile"),
        ["Actions"] = {}
    },
    ["Small Path Tile"] = {
        ["Description"] = "Pave the way to floral fame.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://115709059245481",
        ["Model"] = v2:FindFirstChild("Small Path Tile"),
        ["Actions"] = {}
    },
    ["Medium Path Tile"] = {
        ["Description"] = "Pave the way to floral fame.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://71405070143013",
        ["Model"] = v2:FindFirstChild("Medium Path Tile"),
        ["Actions"] = {}
    },
    ["Large Path Tile"] = {
        ["Description"] = "Pave the way to floral fame.",
        ["Rarity"] = "Common",
        ["Icon"] = "rbxassetid://85801904008201",
        ["Model"] = v2:FindFirstChild("Large Path Tile"),
        ["Actions"] = {}
    },
    ["Axe Stump"] = {
        ["Description"] = "Chopped, but never forgotten.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://96264914166618",
        ["Model"] = v2:FindFirstChild("Axe Stump"),
        ["Actions"] = {}
    },
    ["Bookshelf"] = {
        ["Description"] = "Grow your mind while your garden grows.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://115973373909016",
        ["Model"] = v2:FindFirstChild("Bookshelf"),
        ["Actions"] = {}
    },
    ["Brown Bench"] = {
        ["Description"] = "Sit, stay, bloom.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://98910490474013",
        ["Model"] = v2:FindFirstChild("Brown Bench"),
        ["Actions"] = {}
    },
    ["Hay Bale"] = {
        ["Description"] = "Bale-out plan for bland gardens.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://87723268241453",
        ["Model"] = v2:FindFirstChild("Hay Bale"),
        ["Actions"] = {}
    },
    ["Light On Ground"] = {
        ["Description"] = "Bright ideas start here.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://117164021377008",
        ["Model"] = v2:FindFirstChild("Light On Ground"),
        ["Actions"] = {}
    },
    ["Log Bench"] = {
        ["Description"] = "Take a seat and branch out.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://70530203579288",
        ["Model"] = v2:FindFirstChild("Log Bench"),
        ["Actions"] = {}
    },
    ["Mini TV"] = {
        ["Description"] = "Binge-watch your plants grow.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://131992955716873",
        ["Model"] = v2:FindFirstChild("Mini TV"),
        ["Actions"] = {}
    },
    ["Shovel Grave"] = {
        ["Description"] = "RIP, dear tool\226\128\148you dug your last hole.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://120224305204338",
        ["Model"] = v2:FindFirstChild("Shovel Grave"),
        ["Actions"] = {}
    },
    ["Small Stone Lantern"] = {
        ["Description"] = "Glow stoned.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://106313535982394",
        ["Model"] = v2:FindFirstChild("Small Stone Lantern"),
        ["Actions"] = {}
    },
    ["Small Stone Pad"] = {
        ["Description"] = "Rock your garden\'s world.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://76334118664068",
        ["Model"] = v2:FindFirstChild("Small Stone Pad"),
        ["Actions"] = {}
    },
    ["Large Stone Pad"] = {
        ["Description"] = "Rock your garden\'s world.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://136964060505236",
        ["Model"] = v2:FindFirstChild("Large Stone Pad"),
        ["Actions"] = {}
    },
    ["Stone Lantern"] = {
        ["Description"] = "Glow stoned.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://119551465521930",
        ["Model"] = v2:FindFirstChild("Stone Lantern"),
        ["Actions"] = {}
    },
    ["Viney Beam"] = {
        ["Description"] = "Nature\'s way of saying, \'Hang in there.\'",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://124170877039835",
        ["Model"] = v2:FindFirstChild("Viney Beam"),
        ["Actions"] = {}
    },
    ["Water Trough"] = {
        ["Description"] = "Hydration station for your green nation.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://75910954482613",
        ["Model"] = v2:FindFirstChild("Water Trough"),
        ["Actions"] = {}
    },
    ["White Bench"] = {
        ["Description"] = "Sit, stay, bloom.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://84377225645349",
        ["Model"] = v2:FindFirstChild("White Bench"),
        ["Actions"] = {}
    },
    ["Wood Fence"] = {
        ["Description"] = "Good fences make good gardeners.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://132290111901072",
        ["Model"] = v2:FindFirstChild("Wood Fence"),
        ["Actions"] = {}
    },
    ["Small Wood Flooring"] = {
        ["Description"] = "Floors so nice, you\'ll wood not believe it.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://130831326552652",
        ["Model"] = v2:FindFirstChild("Small Wood Flooring"),
        ["Actions"] = {}
    },
    ["Medium Wood Flooring"] = {
        ["Description"] = "Floors so nice, you\'ll wood not believe it.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://77772412695376",
        ["Model"] = v2:FindFirstChild("Medium Wood Flooring"),
        ["Actions"] = {}
    },
    ["Large Wood Flooring"] = {
        ["Description"] = "Floors so nice, you\'ll wood not believe it.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://74406299280955",
        ["Model"] = v2:FindFirstChild("Large Wood Flooring"),
        ["Actions"] = {}
    },
    ["Small Stone Table"] = {
        ["Description"] = "Dine rock-style.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://93138997640716",
        ["Model"] = v2:FindFirstChild("Small Stone Table"),
        ["Actions"] = {}
    },
    ["Medium Stone Table"] = {
        ["Description"] = "Dine rock-style.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://83559202798747",
        ["Model"] = v2:FindFirstChild("Medium Stone Table"),
        ["Actions"] = {}
    },
    ["Long Stone Table"] = {
        ["Description"] = "Dine rock-style.",
        ["Rarity"] = "Uncommon",
        ["Icon"] = "rbxassetid://119328686937204",
        ["Model"] = v2:FindFirstChild("Long Stone Table"),
        ["Actions"] = {}
    },
    ["Lamp Post"] = {
        ["Description"] = "Shine bright like a garden diamond.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://138744299024719",
        ["Model"] = v2:FindFirstChild("Lamp Post"),
        ["Actions"] = {}
    },
    ["Bamboo Wind Chime"] = {
        ["Description"] = "Let the wind drop the beat.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://78310105473480",
        ["Model"] = v2:FindFirstChild("Bamboo Wind Chime"),
        ["Actions"] = {}
    },
    ["Metal Wind Chime"] = {
        ["Description"] = "Let the wind drop the beat.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://111513959090645",
        ["Model"] = v2:FindFirstChild("Metal Wind Chime"),
        ["Actions"] = {}
    },
    ["Bird Bath"] = {
        ["Description"] = "A spa day for your feathered friends.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://114210337316371",
        ["Model"] = v2:FindFirstChild("Bird Bath"),
        ["Actions"] = {}
    },
    ["Brown Stone Pillar"] = {
        ["Description"] = "Pillars of rock-solid style.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://80217593163027",
        ["Model"] = v2:FindFirstChild("Brown Stone Pillar"),
        ["Actions"] = {}
    },
    ["Dark Stone Pillar"] = {
        ["Description"] = "Pillars of rock-solid style.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://115143090894918",
        ["Model"] = v2:FindFirstChild("Dark Stone Pillar"),
        ["Actions"] = {}
    },
    ["Grey Stone Pillar"] = {
        ["Description"] = "Pillars of rock-solid style.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://108713406223798",
        ["Model"] = v2:FindFirstChild("Grey Stone Pillar"),
        ["Actions"] = {}
    },
    ["Campfire"] = {
        ["Description"] = "For lit garden vibes.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://114219794929389",
        ["Model"] = v2:FindFirstChild("Campfire"),
        ["Actions"] = {}
    },
    ["Clothesline"] = {
        ["Description"] = "Hang your worries out to dry.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://135426465898486",
        ["Model"] = v2:FindFirstChild("Clothesline"),
        ["Actions"] = {}
    },
    ["Cooking Pot"] = {
        ["Description"] = "Stirring up some botanical brews.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://74493838787153",
        ["Model"] = v2:FindFirstChild("Cooking Pot"),
        ["Actions"] = {}
    },
    ["Curved Canopy"] = {
        ["Description"] = "Shelter with arch-appeal.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://140452365544446",
        ["Model"] = v2:FindFirstChild("Curved Canopy"),
        ["Actions"] = {}
    },
    ["Flat Canopy"] = {
        ["Description"] = "Shelter with arch-appeal.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://98042972289231",
        ["Model"] = v2:FindFirstChild("Flat Canopy"),
        ["Actions"] = {}
    },
    ["Small Wood Arbour"] = {
        ["Description"] = "Walk this way\226\128\148blossom that way.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://101767783873802",
        ["Model"] = v2:FindFirstChild("Small Wood Arbour"),
        ["Actions"] = {}
    },
    ["Square Metal Arbour"] = {
        ["Description"] = "Walk this way\226\128\148blossom that way.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://124482021450642",
        ["Model"] = v2:FindFirstChild("Square Metal Arbour"),
        ["Actions"] = {}
    },
    ["Small Wood Table"] = {
        ["Description"] = "Gather \'round the stump speech.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://79156265194662",
        ["Model"] = v2:FindFirstChild("Small Wood Table"),
        ["Actions"] = {}
    },
    ["Large Wood Table"] = {
        ["Description"] = "Gather \'round the stump speech.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://81844858986120",
        ["Model"] = v2:FindFirstChild("Large Wood Table"),
        ["Actions"] = {}
    },
    ["Wheelbarrow"] = {
        ["Description"] = "Hauling blooms and dad jokes since forever.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://129661977849436",
        ["Model"] = v2:FindFirstChild("Wheelbarrow"),
        ["Actions"] = {}
    },
    ["Blue Well"] = {
        ["Description"] = "Make a wish\226\128\148petals crossed!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://137217556459922",
        ["Model"] = v2:FindFirstChild("Blue Well"),
        ["Actions"] = {}
    },
    ["Brown Well"] = {
        ["Description"] = "Make a wish\226\128\148petals crossed!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://97081445435777",
        ["Model"] = v2:FindFirstChild("Brown Well"),
        ["Actions"] = {}
    },
    ["Red Well"] = {
        ["Description"] = "Make a wish\226\128\148petals crossed!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://100605398217067",
        ["Model"] = v2:FindFirstChild("Red Well"),
        ["Actions"] = {}
    },
    ["Green Tractor"] = {
        ["Description"] = "Crop-tastic cruising.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://127815398735746",
        ["Model"] = v2:FindFirstChild("Green Tractor"),
        ["Actions"] = {}
    },
    ["Red Tractor"] = {
        ["Description"] = "Crop-tastic cruising.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://88340270174678",
        ["Model"] = v2:FindFirstChild("Red Tractor"),
        ["Actions"] = {}
    },
    ["Ring Walkway"] = {
        ["Description"] = "Walk in circles, but make it fashion.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://111450830262119",
        ["Model"] = v2:FindFirstChild("Ring Walkway"),
        ["Actions"] = {}
    },
    ["Viney Ring Walkway"] = {
        ["Description"] = "Step into the vine zone.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://96399926163763",
        ["Model"] = v2:FindFirstChild("Viney Ring Walkway"),
        ["Actions"] = {}
    },
    ["Large Wood Arbour"] = {
        ["Description"] = "Walk this way\226\128\148blossom that way.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://114586442817919",
        ["Model"] = v2:FindFirstChild("Large Wood Arbour"),
        ["Actions"] = {}
    },
    ["Round Metal Arbour"] = {
        ["Description"] = "Walk this way\226\128\148blossom that way.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://104999736010025",
        ["Model"] = v2:FindFirstChild("Round Metal Arbour"),
        ["Actions"] = {}
    },
    ["Frog Fountain"] = {
        ["Description"] = "Ribbit and relax.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://124446917752784",
        ["Model"] = v2:FindFirstChild("Frog Fountain"),
        ["Actions"] = {}
    },
    ["Beta Gnome"] = {
        ["Description"] = "Crash test Gnomey.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://82942574971091",
        ["Model"] = v2:FindFirstChild("BetaGnome"),
        ["Actions"] = {}
    },
    ["Green Gnome"] = {
        ["Description"] = "Gree-gnome.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://114712911840962",
        ["Model"] = v2:FindFirstChild("GreenGnome"),
        ["Actions"] = {}
    },
    ["Blue Gnome"] = {
        ["Description"] = "No one hates blue!",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://126793677651227",
        ["Model"] = v2:FindFirstChild("BlueGnome"),
        ["Actions"] = {}
    },
    ["No Trespassing Sign"] = {
        ["Description"] = "Sign here for sass.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://111642019686941",
        ["Model"] = v2:FindFirstChild("NoTrespassingSign"),
        ["Actions"] = {}
    },
    ["Beware Of Dog Sign"] = {
        ["Description"] = "Sign here for sass.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://89778210976821",
        ["Model"] = v2:FindFirstChild("BewareOfDogSign"),
        ["Actions"] = {}
    },
    ["Mean Gardener Sign"] = {
        ["Description"] = "Sign here for sass.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://74001450966740",
        ["Model"] = v2:FindFirstChild("MeanGardenerSign"),
        ["Actions"] = {}
    },
    ["Keep Out Sign"] = {
        ["Description"] = "Sign here for sass.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://137279504847698",
        ["Model"] = v2:FindFirstChild("KeepOutSign"),
        ["Actions"] = {}
    },
    ["Smile On Cam Sign"] = {
        ["Description"] = "Sign here for sass.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://135786183918317",
        ["Model"] = v2:FindFirstChild("SmileOnCamSign"),
        ["Actions"] = {}
    },
    ["No Stealing Sign"] = {
        ["Description"] = "Sign here for sass.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://96708017956784",
        ["Model"] = v2:FindFirstChild("NoStealingSign"),
        ["Actions"] = {}
    },
    ["Sleepy Gnome"] = {
        ["Description"] = "Catching some zzzzeeds.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://104198914328516",
        ["Model"] = v2:FindFirstChild("SleepyGnome"),
        ["Actions"] = {}
    },
    ["Silly Gnome"] = {
        ["Description"] = "If you wait long enough it\'ll do a backflip",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://85284169151224",
        ["Model"] = v2:FindFirstChild("SillyGnome"),
        ["Actions"] = {}
    },
    ["Crazy Gnome"] = {
        ["Description"] = "Gnome way out.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://114913163768225",
        ["Model"] = v2:FindFirstChild("CrazyGnome"),
        ["Actions"] = {}
    },
    ["Grumpy Gnome"] = {
        ["Description"] = "You are gnot going to like me when grumpy!",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://113529246996386",
        ["Model"] = v2:FindFirstChild("GrumpyGnome"),
        ["Actions"] = {}
    },
    ["Fearless Gnome"] = {
        ["Description"] = "I AM LE-GNOME!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://71291637119739",
        ["Model"] = v2:FindFirstChild("FearlessGnome"),
        ["Actions"] = {}
    },
    ["Roundabout"] = {
        ["Description"] = "Spin your garden drama away.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://127576228279994",
        ["Model"] = v2:FindFirstChild("Roundabout"),
        ["Actions"] = {}
    },
    ["Seesaw"] = {
        ["Description"] = "Ups and downs, but make it playful.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://129298071024340",
        ["Model"] = v2:FindFirstChild("Seesaw"),
        ["Actions"] = {}
    },
    ["Swing set"] = {
        ["Description"] = "Swinging into serenity.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://97650946469601",
        ["Model"] = v2:FindFirstChild("Swingset"),
        ["Actions"] = {}
    },
    ["Red Flag"] = {
        ["Description"] = "Claim your petal territory.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://108826376055758",
        ["Model"] = v2:FindFirstChild("RedFlag"),
        ["Actions"] = {}
    },
    ["Blue Flag"] = {
        ["Description"] = "Claim your petal territory.",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://86956824591443",
        ["Model"] = v2:FindFirstChild("BlueFlag"),
        ["Actions"] = {}
    },
    ["Trampoline"] = {
        ["Description"] = "Bounce into botanical bliss.",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://72039279547348",
        ["Model"] = v2:FindFirstChild("Trampoline"),
        ["Actions"] = {}
    },
    ["Raphael Gnome"] = {
        ["Description"] = "A gnome of Raphael, owner of the pet stall!",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://83040285262266",
        ["Model"] = v2:FindFirstChild("RaphaelGnome"),
        ["Actions"] = {}
    },
    ["Steven Gnome"] = {
        ["Description"] = "A gnome of Steven, owner of the sell stall!",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://130945698778443",
        ["Model"] = v2:FindFirstChild("StevenGnome"),
        ["Actions"] = {}
    },
    ["Eloise Gnome"] = {
        ["Description"] = "A gnome of Eloise, owner of the gear shop!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://111228051132202",
        ["Model"] = v2:FindFirstChild("EloiseGnome"),
        ["Actions"] = {}
    },
    ["Sam Gnome"] = {
        ["Description"] = "A gnome of Sam, owner of the seed shop!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://120985613541798",
        ["Model"] = v2:FindFirstChild("SamGnome"),
        ["Actions"] = {}
    },
    ["Cleetus Gnome"] = {
        ["Description"] = "HOWDY!",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://105475165224126",
        ["Model"] = v2:FindFirstChild("CleetusGnome"),
        ["Actions"] = {}
    },
    ["Builderman Gnome"] = {
        ["Description"] = "He will design a gnomenclature!",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://112903384537909",
        ["Model"] = v2:FindFirstChild("BuildermanGnome"),
        ["Actions"] = {}
    },
    ["Bacon Gnome"] = {
        ["Description"] = "Cant get enough of (GNO)ME!",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://120778286675384",
        ["Model"] = v2:FindFirstChild("BaconGnome"),
        ["Actions"] = {}
    },
    ["Zombie Gnome"] = {
        ["Description"] = "These are real zombie hours!",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://133857140992876",
        ["Model"] = v2:FindFirstChild("ZombieGnome"),
        ["Actions"] = {}
    },
    ["Noob Gnome"] = {
        ["Description"] = "You as a gnome!",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://98160377296946",
        ["Model"] = v2:FindFirstChild("NoobGnome"),
        ["Actions"] = {}
    },
    ["Gold Gnome"] = {
        ["Description"] = "You\'ve been golden gnomed!",
        ["Rarity"] = "Divine",
        ["Icon"] = "rbxassetid://107517587303429",
        ["Model"] = v2:FindFirstChild("GoldGnome"),
        ["Actions"] = {}
    },
    ["Female Scarecrow"] = {
        ["Description"] = "Scare the crows, charm the neighbors.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://104939198269666",
        ["Model"] = v2:FindFirstChild("FemaleScarecrow"),
        ["Actions"] = {}
    },
    ["Male Scarecrow"] = {
        ["Description"] = "Scare the crows, charm the neighbors.",
        ["Rarity"] = "Rare",
        ["Icon"] = "rbxassetid://135026002683202",
        ["Model"] = v2:FindFirstChild("MaleScarecrow"),
        ["Actions"] = {}
    },
    ["Stone Mango Statue"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://91117322281959",
        ["Model"] = v2:FindFirstChild("StoneMangoStatue"),
        ["Actions"] = {}
    },
    ["Mossy Stone Blossom Statue"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://125324768942930",
        ["Model"] = v2:FindFirstChild("MossyStoneBlossomStatue"),
        ["Actions"] = {}
    },
    ["Stone Candy Blossom Statue"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://107207612180537",
        ["Model"] = v2:FindFirstChild("StoneCandyBlossomStatue"),
        ["Actions"] = {}
    },
    ["Stone Bunny Statue"] = {
        ["Description"] = "",
        ["Rarity"] = "Legendary",
        ["Icon"] = "rbxassetid://83622392226670",
        ["Model"] = v2:FindFirstChild("StoneBunnyStatue"),
        ["Actions"] = {}
    },
    ["Gold Pillar"] = {
        ["Description"] = "",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://73954265276442",
        ["Model"] = v2:FindFirstChild("GoldPillar"),
        ["Actions"] = {}
    },
    ["Gold Fire Pit"] = {
        ["Description"] = "",
        ["Rarity"] = "Mythical",
        ["Icon"] = "rbxassetid://138669093930760",
        ["Model"] = v2:FindFirstChild("GoldFirePit"),
        ["Actions"] = {}
    },
    ["Gold Torii"] = {
        ["Description"] = "",
        ["Rarity"] = "Divine",
        ["Icon"] = "rbxassetid://133029271065028",
        ["Model"] = v2:FindFirstChild("GoldTorii"),
        ["Actions"] = {}
    },
    ["Gold Water Fountain"] = {
        ["Description"] = "",
        ["Rarity"] = "Divine",
        ["Icon"] = "rbxassetid://133358999373894",
        ["Model"] = v2:FindFirstChild("GoldWaterFountain"),
        ["Actions"] = {}
    },
    ["Gold Candy Blossom Statue"] = {
        ["Description"] = "",
        ["Rarity"] = "Divine",
        ["Icon"] = "rbxassetid://136237571582291",
        ["Model"] = v2:FindFirstChild("GoldCandyBlossomStatue"),
        ["Actions"] = {}
    },
    ["Platinum Candy Blossom Statue"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://97698023241956",
        ["Model"] = v2:FindFirstChild("PlatinumCandyBlossomStatue"),
        ["Actions"] = {}
    },
    ["Twilight Ring Walkway"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://108295843838649",
        ["Model"] = v2:FindFirstChild("Twilight Ring Walkway"),
        ["Actions"] = {}
    },
    ["Twilight Pillar"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://76251994949545",
        ["Model"] = v2:FindFirstChild("Twilight Pillar"),
        ["Actions"] = {}
    },
    ["Twilight Fence"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://111459308259276",
        ["Model"] = v2:FindFirstChild("Twilight Fence"),
        ["Actions"] = {}
    },
    ["Twilight Night Owl Statue"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://71069798187910",
        ["Model"] = v2:FindFirstChild("Twilight Night Owl Statue"),
        ["Actions"] = {}
    },
    ["Twilight Fire Pit"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://128525890363803",
        ["Model"] = v2:FindFirstChild("Twilight Fire Pit"),
        ["Actions"] = {}
    },
    ["Blood Bench"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://91426040633172",
        ["Model"] = v2:FindFirstChild("Blood Bench"),
        ["Actions"] = {}
    },
    ["Blood Lamp"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://130449439996161",
        ["Model"] = v2:FindFirstChild("Blood Lamp"),
        ["Actions"] = {}
    },
    ["Blood Chain"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://129878935477772",
        ["Model"] = v2:FindFirstChild("Blood Chain"),
        ["Actions"] = {}
    },
    ["Blood Fence"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://114306578289240",
        ["Model"] = v2:FindFirstChild("Blood Fence"),
        ["Actions"] = {}
    },
    ["Blood Fire Pit"] = {
        ["Description"] = "Rock solid style for your garden!",
        ["Rarity"] = "Prismatic",
        ["Icon"] = "rbxassetid://87320185293134",
        ["Model"] = v2:FindFirstChild("Blood Fire Pit"),
        ["Actions"] = {}
    }
}

return v4
