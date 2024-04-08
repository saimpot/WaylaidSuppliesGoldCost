WaylaidSuppliesGoldCost = {}

local MAX_LEVEL = 40

local COLOR_RED = "|cffff0000"
local COLOR_GREEN = "|cff45f248"
local COLOR_WHITE = "|cffffffff"
local COLOR_BLUE = "|cff68bbe3"
local COLOR_GOLD = "|cffffd70a"
local GOLD_TEXT = "|cffffd70ag|r"
local SILVER_TEXT = "|cffc7c7cfs|r"
local COPPER_TEXT = "|cffeda55fc|r"

local HUMAN_RACE_ID = 1
local HUMAN_RACE_MULTIPLIER = 1.1

local standingNames = {
    ["Unknown"] = 0,
    ["Hated"] = 1,
    ["Hostile"] = 2,
    ["Unfriendly"] = 3,
    ["Neutral"] = 4,
    ["Friendly"] = 5,
    ["Honored"] = 6,
    ["Revered"] = 7,
    ["Exalted"] = 8,
}

local WaylaidFactionIDs = {
    ["Alliance"] = 2586,
    ["Horde"] = 2587,
}

local WaylaidRewardsInfo = {
    ["UNKNOWN"] = {
        ["reputationAwarded"] = 0,
        ["currencyAwarded"] = 0,
        ["experienceAwarded"] = 0,
        ["givesRepUntil"] = "Unknown",
    },

    -- https://www.wowhead.com/classic/quest=78612
    [9] = {
        ["reputationAwarded"] = 300,
        ["currencyAwarded"] = 600,
        ["experienceAwarded"] = 80,
        ["givesRepUntil"] = "Friendly",
    },

    -- https://www.wowhead.com/classic/quest=78872
    [12] = {
        ["reputationAwarded"] = 450,
        ["currencyAwarded"] = 1500,
        ["experienceAwarded"] = 90,
        ["givesRepUntil"] = "Friendly",
    },

    -- https://www.wowhead.com/classic/quest=79101
    [18] = {
        ["reputationAwarded"] = 500,
        ["currencyAwarded"] = 1500,
        ["experienceAwarded"] = 140,
        ["givesRepUntil"] = "Honored",
    },

    -- https://www.wowhead.com/classic/quest=79102
    [22] = {
        ["reputationAwarded"] = 650,
        ["currencyAwarded"] = 2000,
        ["experienceAwarded"] = 180,
        ["givesRepUntil"] = "Honored",
    },

    -- https://www.wowhead.com/classic/quest=79103
    [25] = {
        ["reputationAwarded"] = 800,
        ["currencyAwarded"] = 3000,
        ["experienceAwarded"] = 200,
        ["givesRepUntil"] = "Honored",
    },

    -- https://www.wowhead.com/classic/quest=80307
    [28] = {
        ["reputationAwarded"] = 700,
        ["currencyAwarded"] = 20000,
        ["experienceAwarded"] = 800,
        ["givesRepUntil"] = "Revered",
    },

    -- https://www.wowhead.com/classic/quest=80308
    [35] = {
        ["reputationAwarded"] = 850,
        ["currencyAwarded"] = 55000,
        ["experienceAwarded"] = 1500,
        ["givesRepUntil"] = "Revered",
    },

    -- https://www.wowhead.com/classic/quest=80309
    [40] = {
        ["reputationAwarded"] = 1000,
        ["currencyAwarded"] = 120000,
        ["experienceAwarded"] = 3450,
        ["givesRepUntil"] = "Revered",
    },

    -- https://www.wowhead.com/classic/quest=82307
    [42] = {
        ["reputationAwarded"] = 950,
        ["currencyAwarded"] = 38500,
        ["experienceAwarded"] = 1700,
        ["givesRepUntil"] = "Exalted",
    },

    -- https://www.wowhead.com/classic/quest=82308
    [45] = {
        ["reputationAwarded"] = 1300,
        ["currencyAwarded"] = 84500,
        ["experienceAwarded"] = 2850,
        ["givesRepUntil"] = "Exalted",
    },

    -- https://www.wowhead.com/classic/quest=82309
    [50] = {
        ["reputationAwarded"] = 1850,
        ["currencyAwarded"] = 154000,
        ["experienceAwarded"] = 4650,
        ["givesRepUntil"] = "Exalted",
    },
}

local WaylaidSuppliesInfo = {
    -- [Waylaid Supplies name] = {waylaid supplies item ID, required item ID, quantity required, reputation awarded, currency awarded}

    -- Level Unknown (probably invalid items, datamined from wowhead)

    -- Waylaid Supplies: Lesser Stoneshield Potions
    -- @url https://www.wowhead.com/classic/item=215394/
    [215394] = {
        4623,
        20,
        WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["experienceAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"]
    },
    -- Waylaid Supplies: Gnomish Rocket Boots
    -- @url https://www.wowhead.com/classic/item=215405/
    [215405] = {
        10724,
        20,
        WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["experienceAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"]
    },
    -- Waylaid Supplies: Goblin Mortars
    -- @url https://www.wowhead.com/classic/item=215406/
    [215406] = {
        10577,
        20,
        WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["experienceAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"]
    },
    -- Waylaid Supplies: Dusky Belts
    -- @url https://www.wowhead.com/classic/item=215410/
    [215410] = {
        7387,
        4,
        WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["experienceAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"]
    },
    -- Waylaid Supplies: Shadowskin Gloves
    -- @url https://www.wowhead.com/classic/item=215412/
    [215412] = {
        18238,
        20,
        WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["experienceAwarded"],
        WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"]
    },

    -- Level 9
    -- Waylaid Supplies: Peacebloom
    -- @url https://www.wowhead.com/classic/item=211316/
    [211316] = {
        2447,
        20,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Copper Bars
    -- @url https://www.wowhead.com/classic/item=210771/
    [210771] = {
        2840,
        20,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rough Stone
    -- @url https://www.wowhead.com/classic/item=211933/
    [211933] = {
        2835,
        10,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Brilliant Smallfish
    -- @url https://www.wowhead.com/classic/item=211331/
    [211331] = {
        6290,
        20,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Silverleaf
    -- @url https://www.wowhead.com/classic/item=211317/
    [211317] = {
        765,
        20,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Heavy Linen Bandages
    -- @url https://www.wowhead.com/classic/item=211332/
    [211332] = {
        2581,
        10,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Light Leather
    -- @url https://www.wowhead.com/classic/item=211315/
    [211315] = {
        2318,
        14,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Herb Baked Eggs
    -- @url https://www.wowhead.com/classic/item=211329/
    [211329] = {
        6888,
        20,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },
    -- Waylaid Supplies: Spiced Wolf Meat
    -- @url https://www.wowhead.com/classic/item=211330/
    [211330] = {
        2680,
        20,
        WaylaidRewardsInfo[9]["reputationAwarded"],
        WaylaidRewardsInfo[9]["currencyAwarded"],
        WaylaidRewardsInfo[9]["experienceAwarded"],
        WaylaidRewardsInfo[9]["givesRepUntil"]
    },

    -- Level 12
    -- Waylaid Supplies: Brown Linen Pants
    -- @url https://www.wowhead.com/classic/item=211327/
    [211327] = {
        4343,
        6,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Brown Linen Robes
    -- @url https://www.wowhead.com/classic/item=211328/
    [211328] = {
        6238,
        4,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Copper Shortswords
    -- @url https://www.wowhead.com/classic/item=211319/
    [211319] = {
        2847,
        6,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Embossed Leather Vests
    -- @url https://www.wowhead.com/classic/item=211326/
    [211326] = {
        2300,
        3,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Handstitched Leather Belts
    -- @url https://www.wowhead.com/classic/item=211325/
    [211325] = {
        4237,
        5,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Healing Potions
    -- @url https://www.wowhead.com/classic/item=211934/
    [211934] = {
        929,
        10,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Lesser Magic Wands
    -- @url https://www.wowhead.com/classic/item=211321/
    [211321] = {
        11287,
        2,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Minor Healing Potions
    -- @url https://www.wowhead.com/classic/item=211318/
    [211318] = {
        118,
        20,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Minor Wizard Oil
    -- @url https://www.wowhead.com/classic/item=211322/
    [211322] = {
        20744,
        2,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rough Boomsticks
    -- @url https://www.wowhead.com/classic/item=211324/
    [211324] = {
        4362,
        3,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rough Copper Bombs
    -- @url https://www.wowhead.com/classic/item=211323/
    [211323] = {
        4360,
        12,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },
    -- Waylaid Supplies: Runed Copper Pants
    -- @url https://www.wowhead.com/classic/item=211320/
    [211320] = {
        3473,
        3,
        WaylaidRewardsInfo[12]["reputationAwarded"],
        WaylaidRewardsInfo[12]["currencyAwarded"],
        WaylaidRewardsInfo[12]["experienceAwarded"],
        WaylaidRewardsInfo[12]["givesRepUntil"]
    },

    -- Level 18
    -- Waylaid Supplies: Bronze Bars
    -- @url https://www.wowhead.com/classic/item=211819/
    [211819] = {
        2841,
        12,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Silver Bars
    -- @url https://www.wowhead.com/classic/item=211820/
    [211820] = {
        2842,
        6,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Medium Leather
    -- @url https://www.wowhead.com/classic/item=211821/
    [211821] = {
        2319,
        12,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Bruiseweed
    -- @url https://www.wowhead.com/classic/item=211822/
    [211822] = {
        2453,
        20,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Swiftthistle
    -- @url https://www.wowhead.com/classic/item=211823/
    [211823] = {
        2452,
        20,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Smoked Bear Meat
    -- @url https://www.wowhead.com/classic/item=211836/
    [211836] = {
        8607,
        20,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Goblin Deviled Clams
    -- @url https://www.wowhead.com/classic/item=211837/
    [211837] = {
        5527,
        8,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Heavy Wool Bandages
    -- @url https://www.wowhead.com/classic/item=211838/
    [211838] = {
        3531,
        15,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },
    -- Waylaid Supplies: Smoked Sagefish
    -- @url https://www.wowhead.com/classic/item=211835/
    [211835] = {
        21072,
        15,
        WaylaidRewardsInfo[18]["reputationAwarded"],
        WaylaidRewardsInfo[18]["currencyAwarded"],
        WaylaidRewardsInfo[18]["experienceAwarded"],
        WaylaidRewardsInfo[18]["givesRepUntil"]
    },

    -- Level 22
    -- Waylaid Supplies: Dark Leather Cloaks
    -- @url https://www.wowhead.com/classic/item=211831/
    [211831] = {
        2316,
        2,
        WaylaidRewardsInfo[22]["reputationAwarded"],
        WaylaidRewardsInfo[22]["currencyAwarded"],
        WaylaidRewardsInfo[22]["experienceAwarded"],
        WaylaidRewardsInfo[22]["givesRepUntil"]
    },
    -- Waylaid Supplies: Gray Woolen Shirts
    -- @url https://www.wowhead.com/classic/item=211833/
    [211833] = {
        2587,
        4,
        WaylaidRewardsInfo[22]["reputationAwarded"],
        WaylaidRewardsInfo[22]["currencyAwarded"],
        WaylaidRewardsInfo[22]["experienceAwarded"],
        WaylaidRewardsInfo[22]["givesRepUntil"]
    },
    -- Waylaid Supplies: Lesser Mana Potions
    -- @url https://www.wowhead.com/classic/item=211824/
    [211824] = {
        3385,
        20,
        WaylaidRewardsInfo[22]["reputationAwarded"],
        WaylaidRewardsInfo[22]["currencyAwarded"],
        WaylaidRewardsInfo[22]["experienceAwarded"],
        WaylaidRewardsInfo[22]["givesRepUntil"]
    },
    -- Waylaid Supplies: Minor Mana Oil
    -- @url https://www.wowhead.com/classic/item=211828/
    [211828] = {
        20745,
        2,
        WaylaidRewardsInfo[22]["reputationAwarded"],
        WaylaidRewardsInfo[22]["currencyAwarded"],
        WaylaidRewardsInfo[22]["experienceAwarded"],
        WaylaidRewardsInfo[22]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rough Bronze Boots
    -- @url https://www.wowhead.com/classic/item=211825/
    [211825] = {
        6350,
        3,
        WaylaidRewardsInfo[22]["reputationAwarded"],
        WaylaidRewardsInfo[22]["currencyAwarded"],
        WaylaidRewardsInfo[22]["experienceAwarded"],
        WaylaidRewardsInfo[22]["givesRepUntil"]
    },
    -- Waylaid Supplies: Small Bronze Bombs
    -- @url https://www.wowhead.com/classic/item=211829/
    [211829] = {
        4374,
        12,
        WaylaidRewardsInfo[22]["reputationAwarded"],
        WaylaidRewardsInfo[22]["currencyAwarded"],
        WaylaidRewardsInfo[22]["experienceAwarded"],
        WaylaidRewardsInfo[22]["givesRepUntil"]
    },

    -- Level 25
    -- Waylaid Supplies: Hillman's Shoulders
    -- @url https://www.wowhead.com/classic/item=211832/
    [211832] = {
        4251,
        2,
        WaylaidRewardsInfo[25]["reputationAwarded"],
        WaylaidRewardsInfo[25]["currencyAwarded"],
        WaylaidRewardsInfo[25]["experienceAwarded"],
        WaylaidRewardsInfo[25]["givesRepUntil"]
    },
    -- Waylaid Supplies: Elixir of Firepower
    -- @url https://www.wowhead.com/classic/item=211935/
    [211935] = {
        6373,
        15,
        WaylaidRewardsInfo[25]["reputationAwarded"],
        WaylaidRewardsInfo[25]["currencyAwarded"],
        WaylaidRewardsInfo[25]["experienceAwarded"],
        WaylaidRewardsInfo[25]["givesRepUntil"]
    },
    -- Waylaid Supplies: Ornate Spyglasses
    -- @url https://www.wowhead.com/classic/item=211830/
    [211830] = {
        5507,
        2,
        WaylaidRewardsInfo[25]["reputationAwarded"],
        WaylaidRewardsInfo[25]["currencyAwarded"],
        WaylaidRewardsInfo[25]["experienceAwarded"],
        WaylaidRewardsInfo[25]["givesRepUntil"]
    },

    -- Waylaid Supplies: Pearl-clasped Cloaks
    -- @url https://www.wowhead.com/classic/item=211834/
    [211834] = {
        5542,
        3,
        WaylaidRewardsInfo[25]["reputationAwarded"],
        WaylaidRewardsInfo[25]["currencyAwarded"],
        WaylaidRewardsInfo[25]["experienceAwarded"],
        WaylaidRewardsInfo[25]["givesRepUntil"]
    },
    -- Waylaid Supplies: Runed Silver Rods
    -- @url https://www.wowhead.com/classic/item=211827/
    [211827] = {
        6339,
        1,
        WaylaidRewardsInfo[25]["reputationAwarded"],
        WaylaidRewardsInfo[25]["currencyAwarded"],
        WaylaidRewardsInfo[25]["experienceAwarded"],
        WaylaidRewardsInfo[25]["givesRepUntil"]
    },
    -- Waylaid Supplies: Silver Skeleton Keys
    -- @url https://www.wowhead.com/classic/item=211826/
    [211826] = {
        15869,
        14,
        WaylaidRewardsInfo[25]["reputationAwarded"],
        WaylaidRewardsInfo[25]["currencyAwarded"],
        WaylaidRewardsInfo[25]["experienceAwarded"],
        WaylaidRewardsInfo[25]["givesRepUntil"]
    },

    -- Level 28
    -- Waylaid Supplies: Fadeleaf
    -- @url https://www.wowhead.com/classic/item=215389/
    [215389] = {
        3818,
        16,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Fire Oil
    -- @url https://www.wowhead.com/classic/item=215421/
    [215421] = {
        6371,
        7,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Formal White Shirts
    -- @url https://www.wowhead.com/classic/item=215413/
    [215413] = {
        4334,
        3,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Heavy Hide
    -- @url https://www.wowhead.com/classic/item=215387/
    [215387] = {
        4235,
        5,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Heavy Silk Bandages
    -- @url https://www.wowhead.com/classic/item=215419/
    [215419] = {
        6451,
        10,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },

    -- Waylaid Supplies: Khadgar's Whisker
    -- @url https://www.wowhead.com/classic/item=215390/
    [215390] = {
        3358,
        10,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Mithril Bars
    -- @url https://www.wowhead.com/classic/item=215386/
    [215386] = {
        3860,
        6,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Wintersbite
    -- @url https://www.wowhead.com/classic/item=215391/
    [215391] = {
        3819,
        8,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Purple Lotus
    -- @url https://www.wowhead.com/classic/item=215392/
    [215392] = {
        8831,
        8,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Solid Grinding Stones
    -- @url https://www.wowhead.com/classic/item=215400/
    [215400] = {
        7966,
        5,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Soothing Turtle Bisque
    -- @url https://www.wowhead.com/classic/item=215417/
    [215417] = {
        3729,
        10,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Spider Sausages
    -- @url https://www.wowhead.com/classic/item=215418/
    [215418] = {
        17222,
        5,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Thick Leather
    -- @url https://www.wowhead.com/classic/item=215388/
    [215388] = {
        4304,
        10,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rockscale Cod
    -- @url https://www.wowhead.com/classic/item=215420/
    [215420] = {
        6362,
        40,
        WaylaidRewardsInfo[28]["reputationAwarded"],
        WaylaidRewardsInfo[28]["currencyAwarded"],
        WaylaidRewardsInfo[28]["experienceAwarded"],
        WaylaidRewardsInfo[28]["givesRepUntil"]
    },

    -- Level 35
    -- Waylaid Supplies: Barbaric Shoulders
    -- @url https://www.wowhead.com/classic/item=215407/
    [215407] = {
        5964,
        4,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Big Iron Bombs
    -- @url https://www.wowhead.com/classic/item=215402/
    [215402] = {
        4394,
        8,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Compact Harvest Reaper Kits
    -- @url https://www.wowhead.com/classic/item=215401/
    [215401] = {
        4391,
        2,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Crimson Silk Pantaloons
    -- @url https://www.wowhead.com/classic/item=215414/
    [215414] = {
        7062,
        4,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Elixirs of Agility
    -- @url https://www.wowhead.com/classic/item=215395/
    [215395] = {
        8949,
        6,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Frost Leather Cloaks
    -- @url https://www.wowhead.com/classic/item=215411/
    [215411] = {
        7377,
        2,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Gold Bars
    -- @url https://www.wowhead.com/classic/item=215385/
    [215385] = {
        3577,
        4,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Greater Healing Potions
    -- @url https://www.wowhead.com/classic/item=215393/
    [215393] = {
        1710,
        16,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rich Purple Silk Shirts
    -- @url https://www.wowhead.com/classic/item=215415/
    [215415] = {
        4335,
        5,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Guardian Gloves
    -- @url https://www.wowhead.com/classic/item=215408/
    [215408] = {
        5966,
        5,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Green Iron Bracers
    -- @url https://www.wowhead.com/classic/item=215398/
    [215398] = {
        3835,
        5,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },
    -- Waylaid Supplies: Heavy Mithril Gauntlets
    -- @url https://www.wowhead.com/classic/item=215399/
    [215399] = {
        7919,
        3,
        WaylaidRewardsInfo[35]["reputationAwarded"],
        WaylaidRewardsInfo[35]["currencyAwarded"],
        WaylaidRewardsInfo[35]["experienceAwarded"],
        WaylaidRewardsInfo[35]["givesRepUntil"]
    },

    -- Level 40

    -- Waylaid Supplies: Deadly Scopes
    -- @url https://www.wowhead.com/classic/item=215403/
    [215403] = {
        10546,
        2,
        WaylaidRewardsInfo[40]["reputationAwarded"],
        WaylaidRewardsInfo[40]["currencyAwarded"],
        WaylaidRewardsInfo[40]["experienceAwarded"],
        WaylaidRewardsInfo[40]["givesRepUntil"]
    },
    -- Waylaid Supplies: Elixirs of Greater Defense
    -- @url https://www.wowhead.com/classic/item=215396/
    [215396] = {
        8951,
        14,
        WaylaidRewardsInfo[40]["reputationAwarded"],
        WaylaidRewardsInfo[40]["currencyAwarded"],
        WaylaidRewardsInfo[40]["experienceAwarded"],
        WaylaidRewardsInfo[40]["givesRepUntil"]
    },
    -- Waylaid Supplies: Massive Iron Axes
    -- @url https://www.wowhead.com/classic/item=215397/
    [215397] = {
        3855,
        2,
        WaylaidRewardsInfo[40]["reputationAwarded"],
        WaylaidRewardsInfo[40]["currencyAwarded"],
        WaylaidRewardsInfo[40]["experienceAwarded"],
        WaylaidRewardsInfo[40]["givesRepUntil"]
    },
    -- Waylaid Supplies: Mithril Blunderbuss
    -- @url https://www.wowhead.com/classic/item=215404/
    [215404] = {
        10508,
        2,
        WaylaidRewardsInfo[40]["reputationAwarded"],
        WaylaidRewardsInfo[40]["currencyAwarded"],
        WaylaidRewardsInfo[40]["experienceAwarded"],
        WaylaidRewardsInfo[40]["givesRepUntil"]
    },
    -- Waylaid Supplies: White Bandit Masks
    -- @url https://www.wowhead.com/classic/item=215416/
    [215416] = {
        10008,
        3,
        WaylaidRewardsInfo[40]["reputationAwarded"],
        WaylaidRewardsInfo[40]["currencyAwarded"],
        WaylaidRewardsInfo[40]["experienceAwarded"],
        WaylaidRewardsInfo[40]["givesRepUntil"]
    },
    -- Waylaid Supplies: Turtle Scale Bracers
    -- @url https://www.wowhead.com/classic/item=215409/
    [215409] = {
        8198,
        2,
        WaylaidRewardsInfo[40]["reputationAwarded"],
        WaylaidRewardsInfo[40]["currencyAwarded"],
        WaylaidRewardsInfo[40]["experienceAwarded"],
        WaylaidRewardsInfo[40]["givesRepUntil"]
    },

    -- Level 42

    -- Waylaid Supplies: Thick Hide
    -- @url https://www.wowhead.com/classic/item=220927/waylaid-supplies-thick-hide
    [220927] = {
        8169,
        8,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Rugged Leather
    -- @url https://www.wowhead.com/classic/item=220926/waylaid-supplies-rugged-leather
    [220926] = {
        8170,
        14,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Thorium Bars
    -- @url https://www.wowhead.com/classic/item=220925/waylaid-supplies-thorium-bars
    [220925] = {
        12359,
        16,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Truesilver Bars
    -- @url https://www.wowhead.com/classic/item=220924/waylaid-supplies-truesilver-bars
    [220924] = {
        6037,
        12,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Dreamfoil
    -- @url https://www.wowhead.com/classic/item=220923/waylaid-supplies-dreamfoil
    [220923] = {
        13463,
        6,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Sungrass
    -- @url https://www.wowhead.com/classic/item=220922/waylaid-supplies-dreamfoil
    [220922] = {
        8838,
        15,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Nightfin Soup
    -- @url https://www.wowhead.com/classic/item=220919/waylaid-supplies-nightfin-soup
    [220919] = {
        13931,
        8,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Heavy Mageweave Bandages
    -- @url https://www.wowhead.com/classic/item=220921/waylaid-supplies-heavy-mageweave-bandages
    [220921] = {
        8545,
        14,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Tender Wolf Steaks
    -- @url https://www.wowhead.com/classic/item=220920/waylaid-supplies-tender-wolf-steaks
    [220920] = {
        18045,
        12,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },
    -- Waylaid Supplies: Undermine Clam Chowder
    -- @url https://www.wowhead.com/classic/item=220918/waylaid-supplies-undermine-clam-chowder
    [220918] = {
        16766,
        16,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },

    -- Level 45

    -- Waylaid Supplies: Undermine Clam Chowder
    -- @url https://www.wowhead.com/classic/item=220918/waylaid-supplies-undermine-clam-chowder
    [220918] = {
        16766,
        16,
        WaylaidRewardsInfo[42]["reputationAwarded"],
        WaylaidRewardsInfo[42]["currencyAwarded"],
        WaylaidRewardsInfo[42]["experienceAwarded"],
        WaylaidRewardsInfo[42]["givesRepUntil"]
    },

    -- Level 50

    -- Waylaid Supplies: Runecloth Belt
    -- @url https://www.wowhead.com/classic/item=220941/waylaid-supplies-runecloth-belts
    [220941] = {
        13856,
        6,
        WaylaidRewardsInfo[50]["reputationAwarded"],
        WaylaidRewardsInfo[50]["currencyAwarded"],
        WaylaidRewardsInfo[50]["experienceAwarded"],
        WaylaidRewardsInfo[50]["givesRepUntil"]
    },
    -- Waylaid Supplies: Truesilver Gauntlets
    -- @url https://www.wowhead.com/classic/item=220936/waylaid-supplies-truesilver-gauntlets
    [220936] = {
        7938,
        2,
        WaylaidRewardsInfo[50]["reputationAwarded"],
        WaylaidRewardsInfo[50]["currencyAwarded"],
        WaylaidRewardsInfo[50]["experienceAwarded"],
        WaylaidRewardsInfo[50]["givesRepUntil"]
    },
    -- Waylaid Supplies: Runic Leather Bracers
    -- @url https://www.wowhead.com/classic/item=220939/waylaid-supplies-runic-leather-bracers
    [220939] = {
        15092,
        5,
        WaylaidRewardsInfo[50]["reputationAwarded"],
        WaylaidRewardsInfo[50]["currencyAwarded"],
        WaylaidRewardsInfo[50]["experienceAwarded"],
        WaylaidRewardsInfo[50]["givesRepUntil"]
    },
    -- Waylaid Supplies: Thorium Rifles
    -- @url https://www.wowhead.com/classic/item=220933/waylaid-supplies-thorium-rifles
    [220933] = {
        15995,
        2,
        WaylaidRewardsInfo[50]["reputationAwarded"],
        WaylaidRewardsInfo[50]["currencyAwarded"],
        WaylaidRewardsInfo[50]["experienceAwarded"],
        WaylaidRewardsInfo[50]["givesRepUntil"]
    },

    -- Add more entries here as needed
}

local function IsPlayerRaceHuman()
    local _, _, playerRaceID = UnitRace("player")

    if playerRaceID == HUMAN_RACE_ID then
        return true
    end

    return false
end

local function GetWaylaidSuppliesInfo(itemID)
    return WaylaidSuppliesInfo[itemID]
end

local function GetAuctionatorPricingInformation(itemID)
    return Auctionator.API.v1.GetAuctionPriceByItemID("WaylaidSuppliesGoldCost", itemID)
end

local function GetTsmPricingInformation(itemID)
    local itemInfo = { GetItemInfo(itemID) }
    local bindType = select(14, itemInfo)

    if bindType == 1 then
        return
    end

    local dbmarket = TSM_API.GetCustomPriceValue("dbmarket", "i:" .. itemID)
    local dbminbuyout = TSM_API.GetCustomPriceValue("dbminbuyout", "i:" .. itemID)
    local dbregion = TSM_API.GetCustomPriceValue("dbregionmarketavg", "i:" .. itemID)
    if not dbmarket and not dbminbuyout and not dbregion then
        return
    end

    local string = nil

    if dbmarket and dbminbuyout then
        string = dbminbuyout
    elseif dbmarket and not dbminbuyout then
        string = dbmarket
    else
        string = dbregion
    end

    return string
end

local function AddColoredLine(tooltip, leftText, rightText, leftColor, rightColor)
    local line = leftColor .. leftText .. " " .. rightColor .. rightText
    tooltip:AddLine(line)
end

local function ConvertCurrencyToPrintableString(currency)
    local returnString = ""

    _, isTsmLoaded = C_AddOns.IsAddOnLoaded("TradeSkillMaster")
    if isTsmLoaded then
        returnString = TSM_API.FormatMoneyString(currency)

        if currency < 0 then
            returnString = returnString:sub(2)
        end

        return returnString
    end

    currency = tonumber(currency)
    currency = abs(currency)
    local gold = floor(currency / 10000)
    local silver = floor((currency % 10000) / 100)
    local copper = floor(currency % 100)

    if gold and gold > 0 then
        returnString = gold .. GOLD_TEXT .. " "
    end

    if silver and silver > 0 then
        returnString = returnString .. silver .. SILVER_TEXT .. " "
    end

    if copper and copper > 0 then
        returnString = returnString .. copper .. COPPER_TEXT
    end

    return returnString
end

local function GetHumanReadableTimeDifference(updatedAt)
    local currentTime = time()  -- Get the current time in seconds since the epoch
    local diff = currentTime - updatedAt  -- Calculate the difference in seconds

    local days = math.floor(diff / 86400)
    diff = diff % 86400
    local hours = math.floor(diff / 3600)
    diff = diff % 3600
    local minutes = math.floor(diff / 60)
    local seconds = diff % 60

    if days > 0 then
        return string.format("%d days ago", days)
    elseif hours > 0 then
        return string.format("%d hours ago", hours)
    elseif minutes > 0 then
        return string.format("%d minutes ago", minutes)
    else
        return string.format("%d seconds ago", seconds)
    end
end

local function DeterminePlayerFaction()
    local faction = UnitFactionGroup("player")

    return faction
end

local function GetPlayerRegion()
    local realmList = GetCVar("portal")
    if realmList then
        realmList = string.lower(realmList)
        if realmList == "us" then
            return "US"
        elseif realmList == "eu" then
            return "EU"
        elseif realmList == "kr" then
            return "KR"
        elseif realmList == "tw" then
            return "TW"
        else
            return "Unknown"
        end
    end
    return "Unknown"
end

local function DetermineRealmName()
    return string.format('%s-%s', GetRealmName(), GetPlayerRegion())
end

local function GetLocalDatabasePricingInformation(itemID, methodName)
    return WaylaidSuppliesGoldCost_ItemDB[DetermineRealmName()][itemID][DeterminePlayerFaction()][methodName]
end

local function GetLastUpdatedAt()
    return WaylaidSuppliesGoldCost_ItemDB[DetermineRealmName()]["UpdatedAt"]
end

local function GetWaylaidReputationGroupID(playerFaction)
    return WaylaidFactionIDs[playerFaction]
end

local function GetWaylaidReputationPlayerStanding()
    local _, _, standingID, _, _, _, _, _, _, _, _, _, _, _, _, _ = GetFactionInfoByID(GetWaylaidReputationGroupID(DeterminePlayerFaction()))

    return standingID
end

local function AddEmptyLine(tooltip)
    tooltip:AddLine("   ")
end

local function DisplayDetailedPricingInformation(tooltip, source, totalPrice, currencyAwarded, priceInfo, priceInfoColor)
    AddColoredLine(tooltip, string.format("  Est. Cost (%s): ", source), ConvertCurrencyToPrintableString(totalPrice), COLOR_BLUE, COLOR_RED)
    AddColoredLine(tooltip, "  Gold Reward:   ", ConvertCurrencyToPrintableString(currencyAwarded), COLOR_BLUE, COLOR_GREEN)
    AddColoredLine(tooltip, string.format("  Fill Price (%s): ", source), priceInfo, COLOR_BLUE, priceInfoColor)
    AddEmptyLine(tooltip)
end

local function addPriceLine(price, source, quantityRequired, currencyAwarded, tooltip)
    local totalPrice = quantityRequired * (price or 0)
    local totalCost = totalPrice - (currencyAwarded or 0)
    local priceInfo = ConvertCurrencyToPrintableString(totalPrice)
    local priceInfoColor = COLOR_RED

    if currencyAwarded and currencyAwarded > 0 then
        priceInfo = ConvertCurrencyToPrintableString(totalCost)

        if totalCost > 0 then
            priceInfoColor = COLOR_RED -- You lose money by filling this
        elseif totalCost < 0 then
            priceInfoColor = COLOR_GREEN -- You gain money by filling this
        else
            priceInfoColor = COLOR_WHITE -- Different color for zero, if desired
        end
    end

    if not WaylaidSuppliesGoldCostDB.detailed_tooltip then
        if IsShiftKeyDown() then
            DisplayDetailedPricingInformation(tooltip, source, totalPrice, currencyAwarded, priceInfo, priceInfoColor)
            return
        end
        AddColoredLine(tooltip, string.format("  Fill Price (%s): ", source), priceInfo, COLOR_BLUE, priceInfoColor)
        return
    end

    DisplayDetailedPricingInformation(tooltip, source, totalPrice, currencyAwarded, priceInfo, priceInfoColor)
end

local function HandleReputationNumberOnTooltip(reputationAwarded, givesRepUntil, tooltip)
    if reputationAwarded and reputationAwarded > 0 and WaylaidSuppliesGoldCostDB.show_rep_gain then
        local repValue = 0

        if GetWaylaidReputationPlayerStanding() <= standingNames[givesRepUntil] then
            repValue = reputationAwarded

            if IsPlayerRaceHuman() then
                repValue = repValue * HUMAN_RACE_MULTIPLIER
            end
        end

        AddColoredLine(tooltip, "  Reputation: ", string.format("+%d", repValue), COLOR_BLUE, COLOR_WHITE)
    end
end

local function HandleReputationUntilOnTooltip(givesRepUntil, tooltip)
    if givesRepUntil and WaylaidSuppliesGoldCostDB.show_rep_until then
        local playerStanding = GetWaylaidReputationPlayerStanding()
        local color = COLOR_RED
        local givesRepUntilText = "No longer gives reputation."

        if playerStanding < standingNames[givesRepUntil] then
            color = COLOR_GREEN
            givesRepUntilText = givesRepUntil
        end

        AddColoredLine(tooltip, "  Gives rep until: ", givesRepUntilText, COLOR_BLUE, color)
    end
end

local function HandleExperienceNumberOnTooltip(experienceAwarded, tooltip)
    if experienceAwarded and WaylaidSuppliesGoldCostDB.show_experience_gain then
        local color = COLOR_GREEN
        experienceAwarded = "+" .. experienceAwarded

        if UnitLevel("player") == MAX_LEVEL then
            color = COLOR_RED
            experienceAwarded = "No longer gives experience."
        end
        AddColoredLine(tooltip, "  Experience gain: ", experienceAwarded, COLOR_BLUE, color)
    end
end

local function HandlePricingOnTooltip(requiredItemID, quantityRequired, currencyAwarded, tooltip)
    AddEmptyLine(tooltip)
    tooltip:AddLine("|cffc06205WaylaidSupplies|r|cffffbf00Gold|r|cffc06205Cost|r")

    if WaylaidSuppliesGoldCostDB.use_local then
        addPriceLine(GetLocalDatabasePricingInformation(requiredItemID, 'minBuyout'), "Local", quantityRequired, currencyAwarded, tooltip)

        local updatedAt = GetLastUpdatedAt()
        if updatedAt then
            AddColoredLine(tooltip, "  Last update:", GetHumanReadableTimeDifference(updatedAt), COLOR_BLUE, COLOR_GOLD)
        end
    end

    if WaylaidSuppliesGoldCostDB.use_tsm then
        if WaylaidSuppliesGoldCostDB.use_local then
            AddEmptyLine(tooltip)
        end

        _, isTsmLoaded = C_AddOns.IsAddOnLoaded("TradeSkillMaster")

        if isTsmLoaded then
            addPriceLine(GetTsmPricingInformation(requiredItemID), "Tsm", quantityRequired, currencyAwarded, tooltip)
        else
            AddColoredLine(tooltip, "  Fill Price:", "TradeSkillMaster is not loaded.", COLOR_BLUE, COLOR_RED)
        end
    end

    if WaylaidSuppliesGoldCostDB.use_auc then
        if WaylaidSuppliesGoldCostDB.use_local then
            AddEmptyLine(tooltip)
        end

        _, isAuctionatorLoaded = C_AddOns.IsAddOnLoaded("Auctionator")

        if isAuctionatorLoaded then
            addPriceLine(GetAuctionatorPricingInformation(requiredItemID), "Auc", quantityRequired, currencyAwarded, tooltip)
        else
            AddColoredLine(tooltip, "  Fill Price:", "Auctionator is not loaded.", COLOR_BLUE, COLOR_RED)
        end
    end

    if not WaylaidSuppliesGoldCostDB.use_tsm and not WaylaidSuppliesGoldCostDB.use_auc and not WaylaidSuppliesGoldCostDB.use_local then
        AddColoredLine(tooltip, "  Fill Price:", "No pricing module is enabled.", COLOR_BLUE, COLOR_RED)
        return
    end
end

local function UpdateTooltipWithWaylaidInformation(tooltip, itemID)
    local requiredItemInfo = GetWaylaidSuppliesInfo(itemID)

    if requiredItemInfo then
        local requiredItemID, quantityRequired, reputationAwarded, currencyAwarded, experienceAwarded, givesRepUntil = unpack(requiredItemInfo)

        HandlePricingOnTooltip(requiredItemID, quantityRequired, currencyAwarded, tooltip)
        HandleReputationNumberOnTooltip(reputationAwarded, givesRepUntil, tooltip)
        HandleReputationUntilOnTooltip(givesRepUntil, tooltip)
        HandleExperienceNumberOnTooltip(experienceAwarded, tooltip)

        AddEmptyLine(tooltip)
    end
end

local function OnTooltipSetItem(tooltip, ...)
    local _, itemLink = tooltip:GetItem()
    if not itemLink == "" or itemLink == nil then
        return
    end
    local itemID = GetItemInfoFromHyperlink(itemLink)
    if itemID == nil then
        return
    end
    if WaylaidSuppliesInfo[itemID] == nil then
        return
    end
    UpdateTooltipWithWaylaidInformation(tooltip, itemID)
end

GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
