local v1 = {
	["Junk"] = {
		["DiscoveryReward"] = 5,
		["Color"] = Color3.fromRGB(208, 207, 206),
		["Tier"] = 0,
		["Difficulty"] = 0.9,
		["Occupies"] = 20,
		["IsGlobal"] = false
	},
	["Common"] = {
		["DiscoveryReward"] = 10,
		["Color"] = Color3.fromRGB(172, 212, 243),
		["Tier"] = 1,
		["Difficulty"] = 1,
		["Occupies"] = 25,
		["IsGlobal"] = false
	},
	["Unusual"] = {
		["DiscoveryReward"] = 15,
		["Color"] = Color3.fromRGB(117, 199, 111),
		["Tier"] = 2,
		["Difficulty"] = 1.1,
		["Occupies"] = 45,
		["IsGlobal"] = false
	},
	["Scarce"] = {
		["DiscoveryReward"] = 30,
		["Color"] = Color3.fromRGB(132, 106, 218),
		["Tier"] = 3,
		["Difficulty"] = 1.6,
		["Occupies"] = 65,
		["IsGlobal"] = false
	},
	["Legendary"] = {
		["DiscoveryReward"] = 125,
		["Color"] = Color3.fromRGB(255, 162, 56),
		["Tier"] = 4,
		["Difficulty"] = 2.1,
		["Occupies"] = 1000,
		["IsGlobal"] = false
	}
}
local v2 = {
	["DiscoveryReward"] = 215,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 111, 185)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 58, 176)) }),
	["Tier"] = 5,
	["Difficulty"] = 2.5,
	["Occupies"] = 2500,
	["IsGlobal"] = false
}
v1.Mythical = v2
local v3 = {
	["DiscoveryReward"] = 500,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1, Color3.fromRGB(190, 0, 0)) }),
	["Tier"] = 6,
	["Difficulty"] = 3,
	["Occupies"] = 4000,
	["IsGlobal"] = false
}
v1.Divine = v3
local v4 = {
	["DiscoveryReward"] = 175,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 55, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(106, 0, 255)) }),
	["Tier"] = 7,
	["Difficulty"] = 0,
	["Occupies"] = 0,
	["IsGlobal"] = false
}
v1.Boss = v4
local v5 = {
	["DiscoveryReward"] = 10000,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 120)), ColorSequenceKeypoint.new(1, Color3.fromRGB(130, 255, 251)) }),
	["Tier"] = 8,
	["Difficulty"] = 0.5,
	["Occupies"] = 0,
	["IsGlobal"] = true
}
v1.Secret = v5
local v6 = {
	["DiscoveryReward"] = 0,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(129, 176, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(91, 141, 207)) }),
	["Tier"] = 9,
	["Difficulty"] = 1,
	["Occupies"] = 0,
	["IsGlobal"] = false
}
v1.Quest = v6
local v7 = {
	["DiscoveryReward"] = 0,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(169, 246, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(213, 164, 255)) }),
	["Tier"] = 10,
	["Difficulty"] = 0,
	["Occupies"] = 0,
	["IsGlobal"] = false
}
v1.Exclusive = v7
local v8 = {
	["DiscoveryReward"] = 0,
	["Color"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(66, 54, 79)), ColorSequenceKeypoint.new(1, Color3.fromRGB(39, 32, 47)) }),
	["Tier"] = 11,
	["Difficulty"] = 0,
	["Occupies"] = 0,
	["IsGlobal"] = false
}
v1.Unobtainable = v8
return v1
