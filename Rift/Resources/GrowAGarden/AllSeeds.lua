local v1 = game:GetService("ReplicatedStorage")
local v2 = {
    ["Carrot"] = {
        ["SeedName"] = "Carrot Seed",
        ["SeedRarity"] = "Common",
        ["Asset"] = "rbxassetid://111869302762063",
        ["FruitIcon"] = "rbxassetid://111808451137805"
    },
    ["Strawberry"] = {
        ["SeedName"] = "Strawberry Seed",
        ["SeedRarity"] = "Common",
        ["Asset"] = "rbxassetid://137537302014962",
        ["FruitIcon"] = "rbxassetid://74378273547859"
    },
    ["Blueberry"] = {
        ["SeedName"] = "Blueberry Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://135855481877645",
        ["FruitIcon"] = "rbxassetid://71345798241707"
    },
    ["Orange Tulip"] = {
        ["SeedName"] = "Orange Tulip Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://137190290771460",
        ["FruitIcon"] = "rbxassetid://82303880837226"
    },
    ["Tomato"] = {
        ["SeedName"] = "Tomato Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://83094104056339",
        ["FruitIcon"] = "rbxassetid://137684825172236"
    },
    ["Corn"] = {
        ["SeedName"] = "Corn Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://77278803247285",
        ["FruitIcon"] = "rbxassetid://83672513462287"
    },
    ["Daffodil"] = {
        ["SeedName"] = "Daffodil Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://133785678549975",
        ["FruitIcon"] = "rbxassetid://99820436058162"
    },
    ["Cauliflower"] = {
        ["SeedName"] = "Cauliflower Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://122055036371728",
        ["FruitIcon"] = "rbxassetid://118035046106234"
    },
    ["Watermelon"] = {
        ["SeedName"] = "Watermelon Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://124693176356567",
        ["FruitIcon"] = "rbxassetid://114381314987347"
    },
    ["Rafflesia"] = {
        ["SeedName"] = "Rafflesia Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://83445943993020",
        ["FruitIcon"] = "rbxassetid://78497832370658"
    },
    ["Green Apple"] = {
        ["SeedName"] = "Green Apple Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://118279487175102",
        ["FruitIcon"] = "rbxassetid://73728352052049"
    },
    ["Avocado"] = {
        ["SeedName"] = "Avocado Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://72215213694595",
        ["FruitIcon"] = "rbxassetid://131202606174957"
    },
    ["Banana"] = {
        ["SeedName"] = "Banana Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://123863859945358",
        ["FruitIcon"] = "rbxassetid://106826853754812"
    },
    ["Pineapple"] = {
        ["SeedName"] = "Pineapple Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://97352767099265",
        ["FruitIcon"] = "rbxassetid://122298503353087"
    },
    ["Kiwi"] = {
        ["SeedName"] = "Kiwi Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://103565044794666",
        ["FruitIcon"] = "rbxassetid://103253422735887"
    },
    ["Bell Pepper"] = {
        ["SeedName"] = "Bell Pepper Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://97984808944410",
        ["FruitIcon"] = "rbxassetid://91228340617380"
    },
    ["Prickly Pear"] = {
        ["SeedName"] = "Prickly Pear Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://73716142237191",
        ["FruitIcon"] = "rbxassetid://137202079849807"
    },
    ["Loquat"] = {
        ["SeedName"] = "Loquat Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://85427807153078",
        ["FruitIcon"] = "rbxassetid://137266361336857"
    },
    ["Feijoa"] = {
        ["SeedName"] = "Feijoa Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://116268980981071",
        ["FruitIcon"] = "rbxassetid://97500335807527"
    },
    ["Pitcher Plant"] = {
        ["SeedName"] = "Pitcher Plant",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://73483249581245",
        ["FruitIcon"] = "rbxassetid://124700197819795"
    },
    ["Pumpkin"] = {
        ["SeedName"] = "Pumpkin Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://83019768390140",
        ["FruitIcon"] = "rbxassetid://88091808467980"
    },
    ["Apple"] = {
        ["SeedName"] = "Apple Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://82209441550638",
        ["FruitIcon"] = "rbxassetid://74877667823372"
    },
    ["Bamboo"] = {
        ["SeedName"] = "Bamboo Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://95294809175303",
        ["FruitIcon"] = "rbxassetid://91033803349257"
    },
    ["Coconut"] = {
        ["SeedName"] = "Coconut Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://103959110275847",
        ["FruitIcon"] = "rbxassetid://135321477950169"
    },
    ["Cactus"] = {
        ["SeedName"] = "Cactus Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://72660439274136",
        ["FruitIcon"] = "rbxassetid://135918568621376"
    },
    ["Dragon Fruit"] = {
        ["SeedName"] = "Dragon Fruit Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://100480428219453",
        ["FruitIcon"] = "rbxassetid://134494387120918"
    },
    ["Mango"] = {
        ["SeedName"] = "Mango Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://81302085731796",
        ["FruitIcon"] = "rbxassetid://80632913421879"
    },
    ["Grape"] = {
        ["SeedName"] = "Grape Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://117347115145686",
        ["FruitIcon"] = "rbxassetid://116026952946757"
    },
    ["Mushroom"] = {
        ["SeedName"] = "Mushroom Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://94262173627467",
        ["FruitIcon"] = "rbxassetid://120910099642804"
    },
    ["Pepper"] = {
        ["SeedName"] = "Pepper Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://136603359489022",
        ["FruitIcon"] = "rbxassetid://123388647334376"
    },
    ["Cacao"] = {
        ["SeedName"] = "Cacao Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://133824355805515",
        ["FruitIcon"] = "rbxassetid://92101177778874"
    },
    ["Beanstalk"] = {
        ["SeedName"] = "Beanstalk Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://129909329752826",
        ["FruitIcon"] = "rbxassetid://110487410542265"
    },
    ["Ember Lily"] = {
        ["SeedName"] = "Ember Lily Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://84122203900051",
        ["FruitIcon"] = "rbxassetid://92345442415663"
    },
    ["Sugar Apple"] = {
        ["SeedName"] = "Sugar Apple Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://131230175437481",
        ["FruitIcon"] = "rbxassetid://118200191025691"
    },
    ["Burning Bud"] = {
        ["SeedName"] = "Burning Bud Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://73285874238558",
        ["FruitIcon"] = "rbxassetid://129249941454691"
    },
    ["Giant Pinecone"] = {
        ["SeedName"] = "Giant Pinecone Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://87844183584476",
        ["FruitIcon"] = "rbxassetid://128115943445534"
    },
    ["Elder Strawberry"] = {
        ["SeedName"] = "Elder Strawberry Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://72269939217195",
        ["FruitIcon"] = "rbxassetid://95993865821011"
    },
    ["Romanesco"] = {
        ["SeedName"] = "Romanesco Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://87803647903309",
        ["FruitIcon"] = "rbxassetid://120370054338666"
    },
    ["Crimson Thorn"] = {
        ["SeedName"] = "Crimson Thorn",
        ["SeedRarity"] = "Transcendent",
        ["Asset"] = "rbxassetid://72363286727465",
        ["FruitIcon"] = "rbxassetid://137454977415667"
    },
    ["Broccoli"] = {
        ["SeedName"] = "Broccoli Seed",
        ["SeedRarity"] = "Legendary",
        ["SpecialCurrencyType"] = "GardenCoins",
        ["Asset"] = "rbxassetid://129088107827734",
        ["FruitIcon"] = "rbxassetid://132032392910460"
    },
    ["Potato"] = {
        ["SeedName"] = "Potato Seed",
        ["SeedRarity"] = "Mythical",
        ["SpecialCurrencyType"] = "GardenCoins",
        ["Asset"] = "rbxassetid://73496660991572",
        ["FruitIcon"] = "rbxassetid://70877518496409"
    },
    ["Brussels Sprout"] = {
        ["SeedName"] = "Brussels Sprout Seed",
        ["SeedRarity"] = "Divine",
        ["SpecialCurrencyType"] = "GardenCoins",
        ["Asset"] = "rbxassetid://139326008492091",
        ["FruitIcon"] = "rbxassetid://105524984595993"
    },
    ["Cocomango"] = {
        ["SeedName"] = "Cocomango Seed",
        ["SeedRarity"] = "Prismatic",
        ["SpecialCurrencyType"] = "GardenCoins",
        ["Asset"] = "rbxassetid://104928272195476",
        ["FruitIcon"] = "rbxassetid://115913806873861"
    },
    ["Wild Carrot"] = {
        ["SeedName"] = "Wild Carrot Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://126204752072699",
        ["FruitIcon"] = "rbxassetid://72854521502613"
    },
    ["Pear"] = {
        ["SeedName"] = "Pear Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://120722514774882",
        ["FruitIcon"] = "rbxassetid://91934825764433"
    },
    ["Cantaloupe"] = {
        ["SeedName"] = "Cantaloupe Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://107705698836783",
        ["FruitIcon"] = "rbxassetid://95818249215044"
    },
    ["Parasol Flower"] = {
        ["SeedName"] = "Parasol Flower",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://128187409259030",
        ["FruitIcon"] = "rbxassetid://119758485597210"
    },
    ["Rosy Delight"] = {
        ["SeedName"] = "Rosy Delight Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://139564697426286",
        ["FruitIcon"] = "rbxassetid://92579553790588"
    },
    ["Elephant Ears"] = {
        ["SeedName"] = "Elephant Ears",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://73430809350291",
        ["FruitIcon"] = "rbxassetid://119701335732381"
    },
    ["Delphinium"] = {
        ["SeedName"] = "Delphinium Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://111328001776683",
        ["FruitIcon"] = "rbxassetid://133880936305421"
    },
    ["Lily of the Valley"] = {
        ["SeedName"] = "Lily of the Valley Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://108051617568505",
        ["FruitIcon"] = "rbxassetid://119818724793701"
    },
    ["Traveler\'s Fruit"] = {
        ["SeedName"] = "Traveler\'s Fruit",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://104586947353350",
        ["FruitIcon"] = "rbxassetid://84278912103459"
    },
    ["Peace Lily"] = {
        ["SeedName"] = "Peace Lily Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://133756602812253",
        ["FruitIcon"] = "rbxassetid://111160733962340"
    },
    ["Aloe Vera"] = {
        ["SeedName"] = "Aloe Vera Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://95215072760589",
        ["FruitIcon"] = "rbxassetid://114480476983111"
    },
    ["Guanabana"] = {
        ["SeedName"] = "Guanabana Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://133682848414531",
        ["FruitIcon"] = "rbxassetid://71630132093184"
    },
    ["Crocus"] = {
        ["SeedName"] = "Crocus",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://83000588834842",
        ["FruitIcon"] = "rbxassetid://107922361372788"
    },
    ["Succulent"] = {
        ["SeedName"] = "Succulent Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://120540061097886",
        ["FruitIcon"] = "rbxassetid://92324210469117"
    },
    ["Violet Corn"] = {
        ["SeedName"] = "Violet Corn",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://85572989572628",
        ["FruitIcon"] = "rbxassetid://96798056059927"
    },
    ["Bendboo"] = {
        ["SeedName"] = "Bendboo",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://137326307732425",
        ["FruitIcon"] = "rbxassetid://127696002130952"
    },
    ["Cocovine"] = {
        ["SeedName"] = "Cocovine",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://96076196359531",
        ["FruitIcon"] = "rbxassetid://103933603917731"
    },
    ["Dragon Pepper"] = {
        ["SeedName"] = "Dragon Pepper",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://102959429519155",
        ["FruitIcon"] = "rbxassetid://78076429931317"
    },
    ["Raspberry"] = {
        ["SeedName"] = "Raspberry Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://81243397976353",
        ["FruitIcon"] = "rbxassetid://86654246455569"
    },
    ["Peach"] = {
        ["SeedName"] = "Peach Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://136126781779163",
        ["FruitIcon"] = "rbxassetid://91037873448124"
    },
    ["Papaya"] = {
        ["SeedName"] = "Papaya Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://84439112219671",
        ["FruitIcon"] = "rbxassetid://137358951402692"
    },
    ["Passionfruit"] = {
        ["SeedName"] = "Passionfruit Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://94926423936775",
        ["FruitIcon"] = "rbxassetid://139621938553116"
    },
    ["Soul Fruit"] = {
        ["SeedName"] = "Soul Fruit Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://78400970650924",
        ["FruitIcon"] = "rbxassetid://111245465505679"
    },
    ["Cursed Fruit"] = {
        ["SeedName"] = "Cursed Fruit Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://99252370538611",
        ["FruitIcon"] = "rbxassetid://89675695188581"
    },
    ["Cranberry"] = {
        ["SeedName"] = "Cranberry Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://94500818907151",
        ["FruitIcon"] = "rbxassetid://74558481836434"
    },
    ["Durian"] = {
        ["SeedName"] = "Durian Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://109127189445082",
        ["FruitIcon"] = "rbxassetid://80039191190165"
    },
    ["Eggplant"] = {
        ["SeedName"] = "Eggplant Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://87258752513979",
        ["FruitIcon"] = "rbxassetid://121511136640913"
    },
    ["Lotus"] = {
        ["SeedName"] = "Lotus Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://72809983873819",
        ["FruitIcon"] = "rbxassetid://104511535272743"
    },
    ["Venus Fly Trap"] = {
        ["SeedName"] = "Venus Fly Trap Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://91310215148426",
        ["FruitIcon"] = "rbxassetid://139210236985330"
    },
    ["Nightshade"] = {
        ["SeedName"] = "Nightshade Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://80927703847110",
        ["FruitIcon"] = "rbxassetid://88741110380160"
    },
    ["Glowshroom"] = {
        ["SeedName"] = "Glowshroom Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://75020857068295",
        ["FruitIcon"] = "rbxassetid://78078293383933"
    },
    ["Mint"] = {
        ["SeedName"] = "Mint Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://104143910415351",
        ["FruitIcon"] = "rbxassetid://111295568333221"
    },
    ["Moonflower"] = {
        ["SeedName"] = "Moonflower Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://103462302267487",
        ["FruitIcon"] = "rbxassetid://129052408900660"
    },
    ["Starfruit"] = {
        ["SeedName"] = "Starfruit Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://113550048066646",
        ["FruitIcon"] = "rbxassetid://72370106610690"
    },
    ["Moonglow"] = {
        ["SeedName"] = "Moonglow Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://76104073070657",
        ["FruitIcon"] = "rbxassetid://92952539625496"
    },
    ["Moon Blossom"] = {
        ["SeedName"] = "Moon Blossom Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://139472070797639",
        ["FruitIcon"] = "rbxassetid://85827614943436"
    },
    ["Chocolate Carrot"] = {
        ["SeedName"] = "Chocolate Carrot Seed",
        ["SeedRarity"] = "Common",
        ["Asset"] = "rbxassetid://130850570057216",
        ["FruitIcon"] = "rbxassetid://132052061791215"
    },
    ["Red Lollipop"] = {
        ["SeedName"] = "Red Lollipop Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://116573800593737",
        ["FruitIcon"] = "rbxassetid://74615373048794"
    },
    ["Candy Sunflower"] = {
        ["SeedName"] = "Candy Sunflower Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://136472609784142",
        ["FruitIcon"] = "rbxassetid://74629908369990"
    },
    ["Easter Egg"] = {
        ["SeedName"] = "Easter Egg Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://125839598961330",
        ["FruitIcon"] = "rbxassetid://137806686825951"
    },
    ["Candy Blossom"] = {
        ["SeedName"] = "Candy Blossom Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://115186921746919",
        ["FruitIcon"] = "rbxassetid://92481076509069"
    },
    ["Crimson Vine"] = {
        ["SeedName"] = "Crimson Vine Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://105557109173986",
        ["FruitIcon"] = "rbxassetid://114937895653603"
    },
    ["Moon Melon"] = {
        ["SeedName"] = "Moon Melon Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://72188413615475",
        ["FruitIcon"] = "rbxassetid://115416405049500"
    },
    ["Blood Banana"] = {
        ["SeedName"] = "Blood Banana Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://137306445130500",
        ["FruitIcon"] = "rbxassetid://75198384813847"
    },
    ["Celestiberry"] = {
        ["SeedName"] = "Celestiberry Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://108248552883389",
        ["FruitIcon"] = "rbxassetid://74298564310369"
    },
    ["Moon Mango"] = {
        ["SeedName"] = "Moon Mango Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://94844334284183",
        ["FruitIcon"] = "rbxassetid://129936557516178"
    },
    ["Rose"] = {
        ["SeedName"] = "Rose",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://98346997661821",
        ["FruitIcon"] = "rbxassetid://138537894617444"
    },
    ["Foxglove"] = {
        ["SeedName"] = "Foxglove",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://95187484637799",
        ["FruitIcon"] = "rbxassetid://119490861910071"
    },
    ["Lilac"] = {
        ["SeedName"] = "Lilac",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://72416036873353",
        ["FruitIcon"] = "rbxassetid://132982251955938"
    },
    ["Pink Lily"] = {
        ["SeedName"] = "Pink Lily Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://132764861597503",
        ["FruitIcon"] = "rbxassetid://96953921719864"
    },
    ["Purple Dahlia"] = {
        ["SeedName"] = "Purple Dahlia Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://104619039467029",
        ["FruitIcon"] = "rbxassetid://76967631138624"
    },
    ["Sunflower"] = {
        ["SeedName"] = "Sunflower",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://105378743376322",
        ["FruitIcon"] = "rbxassetid://73557086822633"
    },
    ["Lavender"] = {
        ["SeedName"] = "Lavender",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://109114523354440",
        ["FruitIcon"] = "rbxassetid://96762443899432"
    },
    ["Nectarshade"] = {
        ["SeedName"] = "Nectarshade",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://100231788254119",
        ["FruitIcon"] = "rbxassetid://86280814956157"
    },
    ["Nectarine"] = {
        ["SeedName"] = "Nectarine",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://99493661537378",
        ["FruitIcon"] = "rbxassetid://86625202446426"
    },
    ["Hive Fruit"] = {
        ["SeedName"] = "Hive Fruit",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://110610945467564",
        ["FruitIcon"] = "rbxassetid://126103475950010"
    },
    ["Manuka Flower"] = {
        ["SeedName"] = "Manuka Flower",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://94993860433551",
        ["FruitIcon"] = "rbxassetid://119178544362101"
    },
    ["Dandelion"] = {
        ["SeedName"] = "Dandelion",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://103689364771783",
        ["FruitIcon"] = "rbxassetid://88674639166013"
    },
    ["Lumira"] = {
        ["SeedName"] = "Lumira",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://127730188661324",
        ["FruitIcon"] = "rbxassetid://93737193426880"
    },
    ["Honeysuckle"] = {
        ["SeedName"] = "Honeysuckle",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://97160292829578",
        ["FruitIcon"] = "rbxassetid://93101591596562"
    },
    ["Bee Balm"] = {
        ["SeedName"] = "Bee Balm",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://99486761731104",
        ["FruitIcon"] = "rbxassetid://124044971306169"
    },
    ["Nectar Thorn"] = {
        ["SeedName"] = "Nectar Thorn",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://130289681299062",
        ["FruitIcon"] = "rbxassetid://74269517875343"
    },
    ["Suncoil"] = {
        ["SeedName"] = "Suncoil",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://77407978510642",
        ["FruitIcon"] = "rbxassetid://82457791725649"
    },
    ["Liberty Lily"] = {
        ["SeedName"] = "Liberty Lily Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://76942091984418",
        ["FruitIcon"] = "rbxassetid://88856491981720"
    },
    ["Firework Flower"] = {
        ["SeedName"] = "Firework Flower Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://71996425137509",
        ["FruitIcon"] = "rbxassetid://140258938590931"
    },
    ["Stonebite"] = {
        ["SeedName"] = "Stonebite Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://98993333890860",
        ["FruitIcon"] = "rbxassetid://96478309229716"
    },
    ["Paradise Petal"] = {
        ["SeedName"] = "Paradise Petal Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://107169210691307",
        ["FruitIcon"] = "rbxassetid://97660126179400"
    },
    ["Horned Dinoshroom"] = {
        ["SeedName"] = "Horned Dinoshroom Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://71410841747696",
        ["FruitIcon"] = "rbxassetid://80916565763886"
    },
    ["Boneboo"] = {
        ["SeedName"] = "Boneboo Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://113832082786342",
        ["FruitIcon"] = "rbxassetid://97752762950708"
    },
    ["Firefly Fern"] = {
        ["SeedName"] = "Firefly Fern Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://120214117322426",
        ["FruitIcon"] = "rbxassetid://114412028061482"
    },
    ["Fossilight"] = {
        ["SeedName"] = "Fossilight Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://87512152628285",
        ["FruitIcon"] = "rbxassetid://92120168652012"
    },
    ["Bone Blossom"] = {
        ["SeedName"] = "Bone Blossom Seed",
        ["SeedRarity"] = "Transcendent",
        ["Asset"] = "rbxassetid://140185195154098",
        ["FruitIcon"] = "rbxassetid://114027803449075"
    },
    ["Horsetail"] = {
        ["SeedName"] = "Horsetail Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://97381977498390",
        ["FruitIcon"] = "rbxassetid://95677339890063"
    },
    ["Lingonberry"] = {
        ["SeedName"] = "Lingonberry Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://114737392834427",
        ["FruitIcon"] = "rbxassetid://71896277409190"
    },
    ["Amber Spine"] = {
        ["SeedName"] = "Amber Spine Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://74179461271700",
        ["FruitIcon"] = "rbxassetid://99466941467681"
    },
    ["Grand Volcania"] = {
        ["SeedName"] = "Grand Volcania Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://116460038253335",
        ["FruitIcon"] = "rbxassetid://104730007432982"
    },
    ["Zenflare"] = {
        ["SeedName"] = "Zenflare Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://96843198772670",
        ["FruitIcon"] = "rbxassetid://109703563506064"
    },
    ["Sakura Bush"] = {
        ["SeedName"] = "Sakura Bush Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://74714891658191",
        ["FruitIcon"] = "rbxassetid://72563138703853"
    },
    ["Soft Sunshine"] = {
        ["SeedName"] = "Soft Sunshine Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://98223242202490",
        ["FruitIcon"] = "rbxassetid://114703422732470"
    },
    ["Spiked Mango"] = {
        ["SeedName"] = "Spiked Mango Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://139278751389211",
        ["FruitIcon"] = "rbxassetid://90447060560724"
    },
    ["Monoblooma"] = {
        ["SeedName"] = "Monoblooma",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://136308508535224",
        ["FruitIcon"] = "rbxassetid://78481037010842"
    },
    ["Serenity"] = {
        ["SeedName"] = "Serenity Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://126688779152032",
        ["FruitIcon"] = "rbxassetid://70835552837771"
    },
    ["Taro Flower"] = {
        ["SeedName"] = "Taro Flower Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://119800686751158",
        ["FruitIcon"] = "rbxassetid://119676830701447"
    },
    ["Zen Rocks"] = {
        ["SeedName"] = "Zen Rocks Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://98038147610548",
        ["FruitIcon"] = "rbxassetid://132703015908701"
    },
    ["Hinomai"] = {
        ["SeedName"] = "Hinomai Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://137221200289866",
        ["FruitIcon"] = "rbxassetid://117635360061533"
    },
    ["Maple Apple"] = {
        ["SeedName"] = "Maple Apple",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://123275891629065",
        ["FruitIcon"] = "rbxassetid://82760844079371"
    },
    ["Enkaku"] = {
        ["SeedName"] = "Enkaku Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://114947722422779",
        ["FruitIcon"] = "rbxassetid://133341195445835"
    },
    ["Dezen"] = {
        ["SeedName"] = "Dezen Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://132112761485866",
        ["FruitIcon"] = "rbxassetid://96557520969497"
    },
    ["Lucky Bamboo"] = {
        ["SeedName"] = "Lucky Bamboo Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://104915557702642",
        ["FruitIcon"] = "rbxassetid://98236402357579"
    },
    ["Tranquil Bloom"] = {
        ["SeedName"] = "Tranquil Bloom Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://107337687323657",
        ["FruitIcon"] = "rbxassetid://94891262768717"
    },
    ["Fruitball"] = {
        ["SeedName"] = "Fruitball Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://72008814585712",
        ["FruitIcon"] = "rbxassetid://116419982823753"
    },
    ["Onion"] = {
        ["SeedName"] = "Onion Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://87504725344811",
        ["FruitIcon"] = "rbxassetid://82985778552127"
    },
    ["Jalapeno"] = {
        ["SeedName"] = "Jalapeno Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://80591384321158",
        ["FruitIcon"] = "rbxassetid://121283391229549"
    },
    ["Crown Melon"] = {
        ["SeedName"] = "Crown Melon Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://115449109483305",
        ["FruitIcon"] = "rbxassetid://130949945924665"
    },
    ["Sugarglaze"] = {
        ["SeedName"] = "Sugarglaze Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://124357691825901",
        ["FruitIcon"] = "rbxassetid://108682983197883"
    },
    ["Tall Asparagus"] = {
        ["SeedName"] = "Tall Asparagus Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://93427282148708",
        ["FruitIcon"] = "rbxassetid://127927465333935"
    },
    ["Grand Tomato"] = {
        ["SeedName"] = "Grand Tomato Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://97583747170517",
        ["FruitIcon"] = "rbxassetid://123573497828816"
    },
    ["Artichoke"] = {
        ["SeedName"] = "Artichoke Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://101544109179757",
        ["FruitIcon"] = "rbxassetid://116693963885387"
    },
    ["Taco Fern"] = {
        ["SeedName"] = "Taco Fern Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://73158817787218",
        ["FruitIcon"] = "rbxassetid://127950356408694"
    },
    ["Twisted Tangle"] = {
        ["SeedName"] = "Twisted Tangle Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://81122509162615",
        ["FruitIcon"] = "rbxassetid://92233467982699"
    },
    ["Veinpetal"] = {
        ["SeedName"] = "Veinpetal Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://110435181199498",
        ["FruitIcon"] = "rbxassetid://114792825837264"
    },
    ["Rhubarb"] = {
        ["SeedName"] = "Rhubarb Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://107793209838948",
        ["FruitIcon"] = "rbxassetid://135595212983973"
    },
    ["Badlands Pepper"] = {
        ["SeedName"] = "Badlands Pepper Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://131417935070859",
        ["FruitIcon"] = "rbxassetid://98849260534792"
    },
    ["Pricklefruit"] = {
        ["SeedName"] = "Pricklefruit Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://107574017784245",
        ["FruitIcon"] = "rbxassetid://82067223369591"
    },
    ["King Cabbage"] = {
        ["SeedName"] = "King Cabbage Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://127900421125164",
        ["FruitIcon"] = "rbxassetid://121298608572366"
    },
    ["Spring Onion"] = {
        ["SeedName"] = "Spring Onion Seed",
        ["SeedRarity"] = "Common",
        ["Asset"] = "rbxassetid://91469791770117",
        ["FruitIcon"] = "rbxassetid://110232451590257"
    },
    ["Butternut Squash"] = {
        ["SeedName"] = "Butternut Squash Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://95008784221595",
        ["FruitIcon"] = "rbxassetid://114476966824452"
    },
    ["Bitter Melon"] = {
        ["SeedName"] = "Bitter Melon Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://134934708117054",
        ["FruitIcon"] = "rbxassetid://118811525900211"
    },
    ["Golden Egg"] = {
        ["SeedName"] = "Golden Egg Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://112238821204454",
        ["FruitIcon"] = "rbxassetid://93758219745327"
    },
    ["Flare Daisy"] = {
        ["SeedName"] = "Flare Daisy Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://119807723096209",
        ["FruitIcon"] = "rbxassetid://99510069285331"
    },
    ["Duskpuff"] = {
        ["SeedName"] = "Duskpuff Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://121044772888111",
        ["FruitIcon"] = "rbxassetid://91762257986115"
    },
    ["Mangosteen"] = {
        ["SeedName"] = "Mangosteen Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://76338413343396",
        ["FruitIcon"] = "rbxassetid://94169850809184"
    },
    ["Poseidon Plant"] = {
        ["SeedName"] = "Poseidon Plant Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://125688925736039",
        ["FruitIcon"] = "rbxassetid://108650002823271"
    },
    ["Gleamroot"] = {
        ["SeedName"] = "Gleamroot Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://132132575216263",
        ["FruitIcon"] = "rbxassetid://124692049318965"
    },
    ["Princess Thorn"] = {
        ["SeedName"] = "Princess Thorn Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://97677584448933",
        ["FruitIcon"] = "rbxassetid://100004602265452"
    },
    ["Mandrake"] = {
        ["SeedName"] = "Mandrake Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://133289891832781",
        ["FruitIcon"] = "rbxassetid://138386990952731"
    },
    ["Canary Melon"] = {
        ["SeedName"] = "Canary Melon Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://101474545683382",
        ["FruitIcon"] = "rbxassetid://120547487998570"
    },
    ["Amberheart"] = {
        ["SeedName"] = "Amberheart Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://136759286798723",
        ["FruitIcon"] = "rbxassetid://89016331076653"
    },
    ["Crown of Thorns"] = {
        ["SeedName"] = "Crown of Thorns Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://72656982339933",
        ["FruitIcon"] = "rbxassetid://132895823042897"
    },
    ["Calla Lily"] = {
        ["SeedName"] = "Calla Lily Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://109379226464032",
        ["FruitIcon"] = "rbxassetid://75427826015419"
    },
    ["Cyclamen"] = {
        ["SeedName"] = "Cyclamen Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://88264995979644",
        ["FruitIcon"] = "rbxassetid://89280445792453"
    },
    ["Glowpod"] = {
        ["SeedName"] = "Glowpod Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://126685290949551",
        ["FruitIcon"] = "rbxassetid://105359294796218"
    },
    ["Flare Melon"] = {
        ["SeedName"] = "Flare Melon Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://106341149186572",
        ["FruitIcon"] = "rbxassetid://84072174330096"
    },
    ["Willowberry"] = {
        ["SeedName"] = "Willowberry Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://105293690714134",
        ["FruitIcon"] = "rbxassetid://85952616054223"
    },
    ["Sunbulb"] = {
        ["SeedName"] = "Sunbulb Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://72568405170137",
        ["FruitIcon"] = "rbxassetid://78931380582096"
    },
    ["Lightshoot"] = {
        ["SeedName"] = "Lightshoot Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://140324487957539",
        ["FruitIcon"] = "rbxassetid://103159291823658"
    },
    ["Glowthorn"] = {
        ["SeedName"] = "Glowthorn Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://135267704167019",
        ["FruitIcon"] = "rbxassetid://79487850857288"
    },
    ["Briar Rose"] = {
        ["SeedName"] = "Briar Rose Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://136681818257821",
        ["FruitIcon"] = "rbxassetid://130805286041899"
    },
    ["Spirit Flower"] = {
        ["SeedName"] = "Spirit Flower Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://126294028212748",
        ["FruitIcon"] = "rbxassetid://105658301818939"
    },
    ["Wispwing"] = {
        ["SeedName"] = "Wispwing Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://76721797363104",
        ["FruitIcon"] = "rbxassetid://100225390235221"
    },
    ["Emerald Bud"] = {
        ["SeedName"] = "Emerald Bud Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://131779245564969",
        ["FruitIcon"] = "rbxassetid://108831087157541"
    },
    ["Pyracantha"] = {
        ["SeedName"] = "Pyracantha Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://121027180349386",
        ["FruitIcon"] = "rbxassetid://74667850422168"
    },
    ["Aetherfruit"] = {
        ["SeedName"] = "Aetherfruit Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://77180765393795",
        ["FruitIcon"] = "rbxassetid://86626169514302"
    },
    ["Radish"] = {
        ["SeedName"] = "Radish Seed",
        ["SeedRarity"] = "Uncommon",
        ["SpecialCurrencyType"] = "GardenCoins",
        ["Asset"] = "rbxassetid://130150094823619",
        ["FruitIcon"] = "rbxassetid://129692685337719"
    },
    ["Blue Raspberry"] = {
        ["SeedName"] = "Blue Raspberry Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://109899328335911",
        ["FruitIcon"] = "rbxassetid://124923066752105"
    },
    ["Horned Melon"] = {
        ["SeedName"] = "Horned Melon Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://84103066272183",
        ["FruitIcon"] = "rbxassetid://112024008187588"
    },
    ["Ackee"] = {
        ["SeedName"] = "Ackee Seed",
        ["SeedRarity"] = "Mythical",
        ["SpecialCurrencyType"] = "GardenCoins",
        ["Asset"] = "rbxassetid://112694005551081",
        ["FruitIcon"] = "rbxassetid://89375357747933"
    },
    ["Urchin Plant"] = {
        ["SeedName"] = "Urchin Plant Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://130498187847858",
        ["FruitIcon"] = "rbxassetid://115964601028605"
    },
    ["Pixie Faern"] = {
        ["SeedName"] = "Pixie Faern Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://90131275661108",
        ["FruitIcon"] = "rbxassetid://106635593571981"
    },
    ["Untold Bell"] = {
        ["SeedName"] = "Untold Bell Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://130074457669512",
        ["FruitIcon"] = "rbxassetid://132651073273983"
    },
    ["Turnip"] = {
        ["SeedName"] = "Turnip Seed",
        ["SeedRarity"] = "Common",
        ["Asset"] = "rbxassetid://138076844548766",
        ["FruitIcon"] = "rbxassetid://124541192361082"
    },
    ["Parsley"] = {
        ["SeedName"] = "Parsley Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://116639543913313",
        ["FruitIcon"] = "rbxassetid://98159443890960"
    },
    ["Meyer Lemon"] = {
        ["SeedName"] = "Meyer Lemon Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://98632157909818",
        ["FruitIcon"] = "rbxassetid://91562774253154"
    },
    ["Carnival Pumpkin"] = {
        ["SeedName"] = "Carnival Pumpkin Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://75794936744762",
        ["FruitIcon"] = "rbxassetid://82775489654826"
    },
    ["Kniphofia"] = {
        ["SeedName"] = "Kniphofia Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://124603640723653",
        ["FruitIcon"] = "rbxassetid://100735079511562"
    },
    ["Golden Peach"] = {
        ["SeedName"] = "Golden Peach Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://107111985717030",
        ["FruitIcon"] = "rbxassetid://132881668493546"
    },
    ["Maple Resin"] = {
        ["SeedName"] = "Maple Resin Seed",
        ["SeedRarity"] = "Transcendent",
        ["Asset"] = "rbxassetid://92213629018828",
        ["FruitIcon"] = "rbxassetid://110820602588417"
    },
    ["Mangrove"] = {
        ["SeedName"] = "Mangrove Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://98103524862912",
        ["FruitIcon"] = "rbxassetid://87110266330418"
    },
    ["Autumn Shroom"] = {
        ["SeedName"] = "Autumn Shroom Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://114949358270034",
        ["FruitIcon"] = "rbxassetid://72971521117074"
    },
    ["Fall Berry"] = {
        ["SeedName"] = "Fall Berry Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://75987039926224",
        ["FruitIcon"] = "rbxassetid://97357348598326"
    },
    ["Speargrass"] = {
        ["SeedName"] = "Speargrass Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://96878280951277",
        ["FruitIcon"] = "rbxassetid://137593613973234"
    },
    ["Torchflare"] = {
        ["SeedName"] = "Torchflare Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://130246266301372",
        ["FruitIcon"] = "rbxassetid://113131255884691"
    },
    ["Auburn Pine"] = {
        ["SeedName"] = "Auburn Pine Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://120946155815259",
        ["FruitIcon"] = "rbxassetid://103034549603863"
    },
    ["Firewell"] = {
        ["SeedName"] = "Firewell Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://128716744033232",
        ["FruitIcon"] = "rbxassetid://74847717439245"
    },
    ["Sundew"] = {
        ["SeedName"] = "Sundew Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://120352667991967",
        ["FruitIcon"] = "rbxassetid://78918999003263"
    },
    ["Black Bat Flower"] = {
        ["SeedName"] = "Black Bat Flower Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://140643333563480",
        ["FruitIcon"] = "rbxassetid://117844838019483"
    },
    ["Mandrone Berry"] = {
        ["SeedName"] = "Mandrone Berry Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://114236945017383",
        ["FruitIcon"] = "rbxassetid://117361529415177"
    },
    ["Corpse Flower"] = {
        ["SeedName"] = "Corpse Flower Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://75604341096850",
        ["FruitIcon"] = "rbxassetid://129291420515798"
    },
    ["Inferno Quince"] = {
        ["SeedName"] = "Inferno Quince Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://126539653401021",
        ["FruitIcon"] = "rbxassetid://105445753218480"
    },
    ["Multitrap"] = {
        ["SeedName"] = "Multitrap Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://107168752928320",
        ["FruitIcon"] = "rbxassetid://83087517703282"
    },
    ["Naval Wort"] = {
        ["SeedName"] = "Naval Wort Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://92147754843688",
        ["FruitIcon"] = "rbxassetid://105462958476625"
    },
    ["Evo Beetroot I"] = {
        ["SeedName"] = "Evo Beetroot I Seed",
        ["SeedRarity"] = "Common",
        ["Asset"] = "rbxassetid://80609091388544",
        ["FruitIcon"] = "rbxassetid://70983193980449"
    },
    ["Evo Beetroot II"] = {
        ["SeedName"] = "Evo Beetroot II Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://98821391959662",
        ["FruitIcon"] = "rbxassetid://114754777342240"
    },
    ["Evo Beetroot III"] = {
        ["SeedName"] = "Evo Beetroot III Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://79387084710962",
        ["FruitIcon"] = "rbxassetid://77909032511018"
    },
    ["Evo Beetroot IV"] = {
        ["SeedName"] = "Evo Beetroot IV Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://121681856090691",
        ["FruitIcon"] = "rbxassetid://117251651386428"
    },
    ["Evo Blueberry I"] = {
        ["SeedName"] = "Evo Blueberry I Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://94182856751629",
        ["FruitIcon"] = "rbxassetid://129494137161880"
    },
    ["Evo Blueberry II"] = {
        ["SeedName"] = "Evo Blueberry II Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://105973203449938",
        ["FruitIcon"] = "rbxassetid://135874711851487"
    },
    ["Evo Blueberry III"] = {
        ["SeedName"] = "Evo Blueberry III Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://80791985098517",
        ["FruitIcon"] = "rbxassetid://102484072430210"
    },
    ["Evo Blueberry IV"] = {
        ["SeedName"] = "Evo Blueberry IV Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://130356697003986",
        ["FruitIcon"] = "rbxassetid://95153640600417"
    },
    ["Evo Pumpkin I"] = {
        ["SeedName"] = "Evo Pumpkin I Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://81300518378445",
        ["FruitIcon"] = "rbxassetid://82332568772814"
    },
    ["Evo Pumpkin II"] = {
        ["SeedName"] = "Evo Pumpkin II Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://127223560326517",
        ["FruitIcon"] = "rbxassetid://131384285385262"
    },
    ["Evo Pumpkin III"] = {
        ["SeedName"] = "Evo Pumpkin III Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://104051020223749",
        ["FruitIcon"] = "rbxassetid://107448999732638"
    },
    ["Evo Pumpkin IV"] = {
        ["SeedName"] = "Evo Pumpkin IV Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://96559082738081",
        ["FruitIcon"] = "rbxassetid://78970170678352"
    },
    ["Evo Mushroom I"] = {
        ["SeedName"] = "Evo Mushroom I Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://101941577434606",
        ["FruitIcon"] = "rbxassetid://135486262398898"
    },
    ["Evo Mushroom II"] = {
        ["SeedName"] = "Evo Mushroom II Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://139569251812165",
        ["FruitIcon"] = "rbxassetid://122183360553244"
    },
    ["Evo Mushroom III"] = {
        ["SeedName"] = "Evo Mushroom III Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://74737875339405",
        ["FruitIcon"] = "rbxassetid://121519478067813"
    },
    ["Evo Mushroom IV"] = {
        ["SeedName"] = "Evo Mushroom IV Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://104199761345397",
        ["FruitIcon"] = "rbxassetid://100663011583556"
    },
    ["Evo Apple I"] = {
        ["SeedName"] = "Evo Apple I Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://101999063674605",
        ["FruitIcon"] = "rbxassetid://111307915963943"
    },
    ["Evo Apple II"] = {
        ["SeedName"] = "Evo Apple II Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://72841070867698",
        ["FruitIcon"] = "rbxassetid://138116932868096"
    },
    ["Evo Apple III"] = {
        ["SeedName"] = "Evo Apple III Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://108130290150568",
        ["FruitIcon"] = "rbxassetid://76986553453337"
    },
    ["Evo Apple IV"] = {
        ["SeedName"] = "Evo Apple IV Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://76879395485177",
        ["FruitIcon"] = "rbxassetid://94943277406270"
    },
    ["Noble Flower"] = {
        ["SeedName"] = "Noble Flower",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://90584956120224",
        ["FruitIcon"] = "rbxassetid://78380930137313"
    },
    ["Lemon"] = {
        ["SeedName"] = "Lemon Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://106787471217679",
        ["FruitIcon"] = "rbxassetid://88066682286154"
    },
    ["Cherry Blossom"] = {
        ["SeedName"] = "Cherry Blossom Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://91401079337497",
        ["FruitIcon"] = "rbxassetid://104418315072378"
    },
    ["Ice Cream Bean"] = {
        ["SeedName"] = "Ice Cream Bean Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://113915506963991",
        ["FruitIcon"] = "rbxassetid://101870787671173"
    },
    ["Lime"] = {
        ["SeedName"] = "Lime Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://121254906312694",
        ["FruitIcon"] = "rbxassetid://75773716888904"
    },
    ["White Mulberry"] = {
        ["SeedName"] = "White Mulberry Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://105199458917568",
        ["FruitIcon"] = "rbxassetid://137305917193375"
    },
    ["Merica Mushroom"] = {
        ["SeedName"] = "Merica Mushroom Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://120007579762077",
        ["FruitIcon"] = "rbxassetid://96914946635972"
    },
    ["Dragon Sapling"] = {
        ["SeedName"] = "Dragon Sapling Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://110732540396384",
        ["FruitIcon"] = "rbxassetid://120960450278301"
    },
    ["Sinisterdrip"] = {
        ["SeedName"] = "Sinisterdrip Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://78529281930597",
        ["FruitIcon"] = "rbxassetid://89972380205790"
    },
    ["Purple Cabbage"] = {
        ["SeedName"] = "Purple Cabbage",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://71410841747696",
        ["FruitIcon"] = "rbxassetid://80916565763886"
    },
    ["Log Pumpkin"] = {
        ["SeedName"] = "Log Pumpkin Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://121410646264138",
        ["FruitIcon"] = "rbxassetid://115059811418407"
    },
    ["Aura Flora"] = {
        ["SeedName"] = "Aura Flora Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://95008784221595",
        ["FruitIcon"] = "rbxassetid://114476966824452"
    },
    ["Mutant Carrot"] = {
        ["SeedName"] = "Mutant Carrot Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://115225978212659",
        ["FruitIcon"] = "rbxassetid://92291142468047"
    },
    ["King Palm"] = {
        ["SeedName"] = "King Palm Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://71410841747696",
        ["FruitIcon"] = "rbxassetid://80916565763886"
    },
    ["Spectralis"] = {
        ["SeedName"] = "Spectralis Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://71410841747696",
        ["FruitIcon"] = "rbxassetid://80916565763886"
    },
    ["Spirit Lantern"] = {
        ["SeedName"] = "Spirit Lantern Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://88545267515738",
        ["FruitIcon"] = "rbxassetid://99227617469451"
    },
    ["Aurora Vine"] = {
        ["SeedName"] = "Aurora Vine Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://140382621331189",
        ["FruitIcon"] = "rbxassetid://82614204886198"
    },
    ["Coolcool Beanbeanstalk"] = {
        ["SeedName"] = "Coolcool Beanbeanstalk Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://129909329752826",
        ["FruitIcon"] = "rbxassetid://110487410542265"
    },
    ["Snaparino Beanarini"] = {
        ["SeedName"] = "Snaparino Beanarini Seed",
        ["SeedRarity"] = "Divine",
        ["Asset"] = "rbxassetid://104551993812076",
        ["FruitIcon"] = "rbxassetid://108305452239800"
    },
    ["Shimmersprout"] = {
        ["SeedName"] = "Shimmersprout Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://106787471217679",
        ["FruitIcon"] = "rbxassetid://88066682286154"
    },
    ["Pomegranate"] = {
        ["SeedName"] = "Pomegranate Seed",
        ["SeedRarity"] = "Mythical",
        ["Asset"] = "rbxassetid://93206974932089",
        ["FruitIcon"] = "rbxassetid://73500410116532"
    },
    ["Fennel"] = {
        ["SeedName"] = "Fennel Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://133289891832781",
        ["FruitIcon"] = "rbxassetid://138386990952731"
    },
    ["Melon Flower"] = {
        ["SeedName"] = "Melon Flower Seed",
        ["SeedRarity"] = "Rare",
        ["Asset"] = "rbxassetid://93756373254918",
        ["FruitIcon"] = "rbxassetid://87548749550526"
    },
    ["Frostspike"] = {
        ["SeedName"] = "Frostspike Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://95635815848539",
        ["FruitIcon"] = "rbxassetid://99091153499498"
    },
    ["Gooseberry"] = {
        ["SeedName"] = "Gooseberry Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Banana Orchid"] = {
        ["SeedName"] = "Banana Orchid Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://118855607295938",
        ["FruitIcon"] = "rbxassetid://73894142525710"
    },
    ["Plumwillow"] = {
        ["SeedName"] = "Plumwillow Seed",
        ["SeedRarity"] = "Legendary",
        ["Asset"] = "rbxassetid://128461817710513",
        ["FruitIcon"] = "rbxassetid://112607990628647"
    },
    ["Black Magic Ears"] = {
        ["SeedName"] = "Black Magic Ears Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://84753635627001",
        ["FruitIcon"] = "rbxassetid://94505563149692"
    },
    ["Helenium"] = {
        ["SeedName"] = "Helenium Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Blooming Cactus"] = {
        ["SeedName"] = "Blooming Cactus Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://128512613840324",
        ["FruitIcon"] = "rbxassetid://80063967164037"
    },
    ["Acorn Squash"] = {
        ["SeedName"] = "Acorn Squash Seed",
        ["SeedRarity"] = "Prismatic",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Hazelnut"] = {
        ["SeedName"] = "Hazelnut Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Peanut"] = {
        ["SeedName"] = "Peanut Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Jelpod"] = {
        ["SeedName"] = "Jelpod Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Wild Berry"] = {
        ["SeedName"] = "Wild Berry Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    },
    ["Filbert Nut"] = {
        ["SeedName"] = "Filbert Nut Seed",
        ["SeedRarity"] = "Uncommon",
        ["Asset"] = "rbxassetid://",
        ["FruitIcon"] = "rbxassetid://"
    }
}
return v2
