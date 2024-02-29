WaylaidSuppliesGoldCost = {}

local WaylaidFactionIDs = {
    ["Alliance"] = { 2586 },
    ["Horde"] = { 2587 },
}

local WaylaidRewardsInfo = {
    ["UNKNOWN"] = {
        ["reputationAwarded"] = { 0 },
        ["currencyAwarded"] = { 0 },
        ["givesRepUntil"] = { "Unknown" }
    },
    [9] = {
        ["reputationAwarded"] = { 300 },
        ["currencyAwarded"] = { 3000 },
        ["givesRepUntil"] = { "Friendly" }
    },
    [12] = {
        ["reputationAwarded"] = { 450 },
        ["currencyAwarded"] = { 3000 },
        ["givesRepUntil"] = { "Friendly" }
    },
    [18] = {
        ["reputationAwarded"] = { 500 },
        ["currencyAwarded"] = { 3000 },
        ["givesRepUntil"] = { "Honored" }
    },
    [22] = {
        ["reputationAwarded"] = { 650 },
        ["currencyAwarded"] = { 3000 },
        ["givesRepUntil"] = { "Honored" }
    },
    [25] = {
        ["reputationAwarded"] = { 800 },
        ["currencyAwarded"] = { 3000 },
        ["givesRepUntil"] = { "Honored" }
    },
    [28] = {
        ["reputationAwarded"] = { 700 },
        ["currencyAwarded"] = { 20000 },
        ["givesRepUntil"] = { "Revered" }
    },
    [35] = {
        ["reputationAwarded"] = { 850 },
        ["currencyAwarded"] = { 55000 },
        ["givesRepUntil"] = { "Revered" }
    },
    [40] = {
        ["reputationAwarded"] = { 1000 },
        ["currencyAwarded"] = { 120000 },
        ["givesRepUntil"] = { "Revered" }
    }
}
local WaylaidSuppliesInfo = {
    -- [Waylaid Supplies name] = {waylaid supplies item ID, required item ID, quantity required, reputation awarded, currency awarded}
    -- Level Unknown (probably invalid items, datamined from wowhead)
    ["Waylaid Supplies: Lesser Stoneshield Potions"] = { 215394, 4623, 20, WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"][1] },
    ["Waylaid Supplies: Gnomish Rocket Boots"] = { 215405, 10724, 20, WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"][1] },
    ["Waylaid Supplies: Goblin Mortars"] = { 215406, 10577, 20, WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"][1] },
    ["Waylaid Supplies: Dusky Belts"] = { 215410, 7387, 4, WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"][1] },
    ["Waylaid Supplies: Shadowskin Gloves"] = { 215412, 18238, 20, WaylaidRewardsInfo["UNKNOWN"]["reputationAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["currencyAwarded"][1], WaylaidRewardsInfo["UNKNOWN"]["givesRepUntil"][1] },

    -- Level 9
    ["Waylaid Supplies: Peacebloom"] = { 211316, 2447, 20, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Copper Bars"] = { 210771, 2840, 20, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Rough Stone"] = { 211933, 0, 0, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Brilliant Smallfish"] = { 211331, 0, 0, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Silverleaf"] = { 211317, 0, 0, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Heavy Linen Bandages"] = { 211332, 0, 0, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Light Leather"] = { 211315, 2318, 14, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Herb Baked Eggs"] = { 211329, 6888, 20, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Spiced Wolf Meat"] = { 211330, 2680, 20, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },

    -- Level 12
    ["Waylaid Supplies: Brown Linen Pants"] = { 211327, 4343, 6, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Brown Linen Robes"] = { 211328, 6238, 4, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Copper Shortswords"] = { 211319, 2847, 6, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Embossed Leather Vests"] = { 211326, 2300, 3, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Handstitched Leather Belts"] = { 211325, 4237, 5, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Healing Potions"] = { 211934, 0, 0, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Lesser Magic Wands"] = { 211321, 11287, 2, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Minor Healing Potions"] = { 211318, 118, 20, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Minor Wizard Oil"] = { 211322, 20744, 2, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Rough Boomsticks"] = { 211324, 4362, 3, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Rough Copper Bombs"] = { 211323, 4360, 12, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },
    ["Waylaid Supplies: Runed Copper Pants"] = { 211320, 3473, 3, WaylaidRewardsInfo[12]["reputationAwarded"][1], WaylaidRewardsInfo[12]["currencyAwarded"][1], WaylaidRewardsInfo[12]["givesRepUntil"][1] },

    -- Level 18
    ["Waylaid Supplies: Bronze Bars"] = { 211819, 2841, 12, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Silver Bars"] = { 211820, 2842, 6, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Medium Leather"] = { 211821, 2319, 12, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Bruiseweed"] = { 211822, 2453, 20, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Swiftthistle"] = { 211823, 2452, 20, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Smoked Bear Meat"] = { 211836, 8607, 20, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Goblin Deviled Clams"] = { 211837, 5527, 8, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Heavy Wool Bandages"] = { 211838, 3531, 15, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },
    ["Waylaid Supplies: Smoked Sagefish"] = { 211835, 25704, 15, WaylaidRewardsInfo[18]["reputationAwarded"][1], WaylaidRewardsInfo[18]["currencyAwarded"][1], WaylaidRewardsInfo[18]["givesRepUntil"][1] },

    -- Level 22
    ["Waylaid Supplies: Dark Leather Cloaks"] = { 211831, 2316, 2, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Gray Woolen Shirts"] = { 211833, 2587, 4, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Lesser Mana Potions"] = { 211824, 3385, 20, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Minor Mana Oil"] = { 211828, 20745, 2, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Rough Bronze Boots"] = { 211825, 6350, 3, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },
    ["Waylaid Supplies: Small Bronze Bombs"] = { 211829, 4374, 12, WaylaidRewardsInfo[9]["reputationAwarded"][1], WaylaidRewardsInfo[9]["currencyAwarded"][1], WaylaidRewardsInfo[9]["givesRepUntil"][1] },

    -- Level 25
    ["Waylaid Supplies: Hillman's Shoulders"] = { 211832, 4251, 2, WaylaidRewardsInfo[25]["reputationAwarded"][1], WaylaidRewardsInfo[25]["currencyAwarded"][1], WaylaidRewardsInfo[25]["givesRepUntil"][1] },
    ["Waylaid Supplies: Elixir of Firepower"] = { 211935, 6373, 15, WaylaidRewardsInfo[25]["reputationAwarded"][1], WaylaidRewardsInfo[25]["currencyAwarded"][1], WaylaidRewardsInfo[25]["givesRepUntil"][1] },
    ["Waylaid Supplies: Ornate Spyglasses"] = { 211830, 5507, 2, WaylaidRewardsInfo[25]["reputationAwarded"][1], WaylaidRewardsInfo[25]["currencyAwarded"][1], WaylaidRewardsInfo[25]["givesRepUntil"][1] },
    ["Waylaid Supplies: Pearl-clasped Cloaks"] = { 211834, 5542, 3, WaylaidRewardsInfo[25]["reputationAwarded"][1], WaylaidRewardsInfo[25]["currencyAwarded"][1], WaylaidRewardsInfo[25]["givesRepUntil"][1] },
    ["Waylaid Supplies: Runed Silver Rods"] = { 211827, 6339, 1, WaylaidRewardsInfo[25]["reputationAwarded"][1], WaylaidRewardsInfo[25]["currencyAwarded"][1], WaylaidRewardsInfo[25]["givesRepUntil"][1] },
    ["Waylaid Supplies: Silver Skeleton Keys"] = { 211826, 15869, 14, WaylaidRewardsInfo[25]["reputationAwarded"][1], WaylaidRewardsInfo[25]["currencyAwarded"][1], WaylaidRewardsInfo[25]["givesRepUntil"][1] },

    -- Level 28
    ["Waylaid Supplies: Fadeleaf"] = { 215389, 3818, 16, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Fire Oil"] = { 215421, 6371, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Formal White Shirts"] = { 215413, 4334, 3, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Heavy Hide"] = { 215387, 4235, 5, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Heavy Silk Bandages"] = { 215419, 6451, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Khadgar's Whisker"] = { 215390, 3358, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Mithril Bars"] = { 215386, 3860, 6, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Wintersbite"] = { 215391, 3819, 20, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Purple Lotus"] = { 215392, 8831, 8, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Solid Grinding Stones"] = { 215400, 7966, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Soothing Turtle Bisque"] = { 215417, 3729, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Spider Sausages"] = { 215418, 17222, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Thick Leather"] = { 215388, 4304, 10, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },
    ["Waylaid Supplies: Rockscale Cod"] = { 215420, 6362, 40, WaylaidRewardsInfo[28]["reputationAwarded"][1], WaylaidRewardsInfo[28]["currencyAwarded"][1], WaylaidRewardsInfo[28]["givesRepUntil"][1] },

    -- Level 35
    ["Waylaid Supplies: Barbaric Shoulders"] = { 215407, 5964, 4, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Big Iron Bombs"] = { 215402, 4394, 8, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Compact Harvest Reaper Kits"] = { 215401, 4391, 2, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Crimson Silk Pantaloons"] = { 215414, 7062, 4, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Deadly Scopes"] = { 215403, 10546, 4, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Elixirs of Agility"] = { 215395, 8949, 12, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Frost Leather Cloaks"] = { 215411, 7377, 3, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Gold Bars"] = { 215385, 3577, 4, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Greater Healing Potions"] = { 215393, 1710, 16, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Rich Purple Silk Shirts"] = { 215415, 4335, 5, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Guardian Gloves"] = { 215408, 5966, 6, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Green Iron Bracers"] = { 215398, 3835, 5, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },
    ["Waylaid Supplies: Heavy Mithril Gauntlets"] = { 215399, 7919, 4, WaylaidRewardsInfo[35]["reputationAwarded"][1], WaylaidRewardsInfo[35]["currencyAwarded"][1], WaylaidRewardsInfo[35]["givesRepUntil"][1] },

    -- Level 40
    ["Waylaid Supplies: Elixirs of Greater Defense"] = { 215396, 8951, 14, WaylaidRewardsInfo[40]["reputationAwarded"][1], WaylaidRewardsInfo[40]["currencyAwarded"][1], WaylaidRewardsInfo[40]["givesRepUntil"][1] },
    ["Waylaid Supplies: Massive Iron Axes"] = { 215397, 3855, 2, WaylaidRewardsInfo[40]["reputationAwarded"][1], WaylaidRewardsInfo[40]["currencyAwarded"][1], WaylaidRewardsInfo[40]["givesRepUntil"][1] },
    ["Waylaid Supplies: Mithril Blunderbuss"] = { 215404, 10508, 2, WaylaidRewardsInfo[40]["reputationAwarded"][1], WaylaidRewardsInfo[40]["currencyAwarded"][1], WaylaidRewardsInfo[40]["givesRepUntil"][1] },
    ["Waylaid Supplies: White Bandit Masks"] = { 215416, 10008, 4, WaylaidRewardsInfo[40]["reputationAwarded"][1], WaylaidRewardsInfo[40]["currencyAwarded"][1], WaylaidRewardsInfo[40]["givesRepUntil"][1] },
    ["Waylaid Supplies: Turtle Scale Bracers"] = { 215409, 8198, 3, WaylaidRewardsInfo[40]["reputationAwarded"][1], WaylaidRewardsInfo[40]["currencyAwarded"][1], WaylaidRewardsInfo[40]["givesRepUntil"][1] },

    -- Add more entries here as needed
}

local function GetWaylaidSuppliesInfo(waylaidItemName)
    return WaylaidSuppliesInfo[waylaidItemName]
end

local function GetAuctionatorPricingInformation(itemID)
    return Auctionator.API.v1.GetAuctionPriceByItemID("WaylaidSuppliesGoldCost", itemID)
end

local function GetTsmPricingInformation(itemID)
    local itemInfo = { GetItemInfo(itemID) }
    local bindType = select(14, itemInfo)

    if bindType == 1 then return end

    local dbmarket = TSM_API.GetCustomPriceValue("dbmarket", "i:" .. itemID)
    local dbminbuyout = TSM_API.GetCustomPriceValue("dbminbuyout", "i:" .. itemID)
    local dbregion = TSM_API.GetCustomPriceValue("dbregionmarketavg", "i:" .. itemID)
    if not dbmarket and not dbminbuyout and not dbregion then return end

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

local function GetItemPricingInformation(itemID)
    local aucPrice, tsmPrice = nil, nil

    if IsAddOnLoaded("Auctionator") then
        aucPrice = GetAuctionatorPricingInformation(itemID)
    end

    if IsAddOnLoaded("TradeSkillMaster") then
        tsmPrice = GetTsmPricingInformation(itemID)
    end

    return aucPrice, tsmPrice
end

local function AddColoredLine(tooltip, leftText, rightText, leftColor, rightColor)
    local line = leftColor .. leftText .. " " .. rightColor .. rightText
    tooltip:AddLine(line)
end

local function ConvertCurrencyToPrintableString(currency)
    if IsAddOnLoaded("TradeSkillMaster") then
        return TSM_API.FormatMoneyString(currency)
    end

    local returnString = ""

    local gold = floor(currency / 10000)
    local silver = floor((currency % 10000) / 100)
    local copper = floor(((currency % 10000) / 100) / 100)

    if gold and gold > 0 then
        returnString = gold .. "|cffffbf00g|r "
    end

    if silver and silver > 0 then
        returnString = returnString .. silver .. "|cffc0c0c0s|r "
    end

    if copper and copper > 0 then
        returnString = returnString .. copper .. "|cffc06205c|r"
    end

    return returnString
end

local function DeterminePlayerFaction()
    return UnitFactionGroup("player")
end

local function GetWaylaidReputationGroupID(playerFaction)
    return WaylaidFactionIDs[playerFaction]
end

local function GetWaylaidReputationPlayerStanding(waylaidReputationID)
    local name, description, standingID, bottomValue, topValue, earnedValue, _, _, _, _, _, _, _, _, _, _ =
    GetFactionInfoByID(waylaidReputationID)
end

local function UpdateTooltipWithPricing(tooltip, name)
    local requiredItemInfo = GetWaylaidSuppliesInfo(name)

    if requiredItemInfo then
        local _, requiredItemID, quantityRequired, reputationAwarded, currencyAwarded, givesRepUntil = unpack(
        requiredItemInfo)
        local aucPrice, tsmPrice = GetItemPricingInformation(requiredItemID)
        local aucSource = "Auc"
        local tsmSource = "TSM"

        tooltip:AddLine("   ")
        tooltip:AddLine("|cffffbf00WaylaidSuppliesGoldCost|r")

        if aucPrice or tsmPrice then
            local function addPriceLine(price, source)
                local totalPrice = quantityRequired * price
                local totalCost = totalPrice - (currencyAwarded or 0)
                local priceInfo = string.format("  Fill Price: %s", ConvertCurrencyToPrintableString(totalPrice))
                local priceInfoColor = "|cffff0000" -- Default red for negative or zero totalCost

                if currencyAwarded and currencyAwarded > 0 then
                    priceInfo = string.format("  Fill Price: %s", ConvertCurrencyToPrintableString(totalCost))

                    -- Check if totalCost is positive or negative to determine color
                    if totalCost > 0 then
                        priceInfoColor = "|cffff0000" -- You lose money by filling this
                    elseif totalCost < 0 then
                        priceInfoColor = "|cff00ff00" -- You gain money by filling this
                    else
                        priceInfoColor = "|cff68bbe3" -- Different color for zero, if desired
                    end
                end

                AddColoredLine(tooltip, priceInfo, "", priceInfoColor, "|cff68bbe3")
            end

            if aucPrice then
                addPriceLine(aucPrice, aucSource)
            elseif tsmPrice then
                addPriceLine(tsmPrice, tsmSource)
            end
        else
            local noPricingMessage =
            "  No pricing module is enabled."
            AddColoredLine(tooltip, noPricingMessage, "", "|cff68bbe3", "|cffffffff")
        end

        if reputationAwarded and reputationAwarded > 0 then
            AddColoredLine(tooltip, "  Reputation: ", string.format("+%d", reputationAwarded), "|cff68bbe3", "|cffffffff")
        end

        if givesRepUntil then
            -- @TODO: Add a function that checks player's current standing against the givesRepUntil, and color either red or green
            AddColoredLine(tooltip, "  Gives rep until: ", givesRepUntil, "|cff68bbe3", "|cffffffff")
        end

        tooltip:AddLine("   ")
    end
end

local function OnTooltipSetItem(tooltip, ...)
    local name, _ = tooltip:GetItem()
    if not name or not string.find(name, "Waylaid Supplies:") then return end
    UpdateTooltipWithPricing(tooltip, name)
end

GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
