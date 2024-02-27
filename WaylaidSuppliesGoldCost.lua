WaylaidSuppliesGoldCost = {}

local WaylaidSuppliesInfo = {
    -- [Waylaid Supplies name] = {waylaid supplies item ID, required item ID, quantity required, reputation awarded, currency awarded}
    ["Waylaid Supplies: Gold Bars"] = {215385, 3577, 4, 0, 0},
    ["Waylaid Supplies: Mithril Bars"] = {215386, 3860, 6, 0, 0},
    ["Waylaid Supplies: Heavy Hide"] = {215387, 4235, 5, 0, 0},
    ["Waylaid Supplies: Thick Leather"] = {215388, 4304, 10, 0, 0},
    ["Waylaid Supplies: Fadeleaf"] = {215389, 3818, 16, 0, 0},
    ["Waylaid Supplies: Khadgar's Whisker"] = {215390, 3358, 10, 0, 0},
    ["Waylaid Supplies: Wintersbite"] = {215391, 3819, 20, 0, 0},
    ["Waylaid Supplies: Purple Lotus"] = {215392, 8831, 8, 0, 0},
    ["Waylaid Supplies: Greater Healing Potions"] = {215393, 1710, 16, 0, 0},
    ["Waylaid Supplies: Lesser Stoneshield Potions"] = {215394, 4623, 20, 0, 0},
    ["Waylaid Supplies: Elixirs of Agility"] = {215395, 8949, 12, 0, 0},
    ["Waylaid Supplies: Elixirs of Greater Defense"] = {215396, 8951, 14, 0, 0},
    ["Waylaid Supplies: Massive Iron Axes"] = {215397, 3855, 2, 0, 0},
    ["Waylaid Supplies: Green Iron Bracers"] = {215398, 3835, 5, 0, 0},
    ["Waylaid Supplies: Heavy Mithril Gauntlets"] = {215399, 7919, 4, 0, 0},
    ["Waylaid Supplies: Solid Grinding Stones"] = {215400, 7966, 10, 0, 0},
    ["Waylaid Supplies: Compact Harvest Reaper Kits"] = {215401, 4391, 2, 0, 0},
    ["Waylaid Supplies: Big Iron Bombs"] = {215402, 4394, 8, 0, 0},
    ["Waylaid Supplies: Bronze Bars"] = {211819, 2841, 12, 0, 0},
    ["Waylaid Supplies: Deadly Scopes"] = {215403, 10546, 4, 0, 0},
    ["Waylaid Supplies: Silver Bars"] = {211820, 2842, 6, 0, 0},
    ["Waylaid Supplies: Mithril Blunderbuss"] = {215404, 10508, 2, 0, 0},
    ["Waylaid Supplies: Medium Leather"] = {211821, 2319, 12, 0, 0},
    ["Waylaid Supplies: Gnomish Rocket Boots"] = {215405, 10724, 20, 0, 0},
    ["Waylaid Supplies: Bruiseweed"] = {211822, 2453, 20, 0, 0},
    ["Waylaid Supplies: Goblin Mortars"] = {215406, 10577, 20, 0, 0},
    ["Waylaid Supplies: Swiftthistle"] = {211823, 2452, 20, 0, 0},
    ["Waylaid Supplies: Barbaric Shoulders"] = {215407, 5964, 4, 0, 0},
    ["Waylaid Supplies: Lesser Mana Potions"] = {211824, 3385, 20, 0, 0},
    ["Waylaid Supplies: Rough Bronze Boots"] = {211825, 6350, 3, 0, 0},
    ["Waylaid Supplies: Turtle Scale Bracers"] = {215409, 8198, 3, 0, 0},
    ["Waylaid Supplies: Silver Skeleton Keys"] = {211826, 15869, 14, 0, 0},
    ["Waylaid Supplies: Dusky Belts"] = {215410, 7387, 4, 0, 0},
    ["Waylaid Supplies: Light Leather"] = {211315, 2318, 14, 0, 0},
    ["Waylaid Supplies: Runed Silver Rods"] = {211827, 6339, 1, 0, 0},
    ["Waylaid Supplies: Frost Leather Cloaks"] = {215411, 7377, 3, 0, 0},
    ["Waylaid Supplies: Minor Mana Oil"] = {211828, 20745, 2, 0, 0},
    ["Waylaid Supplies: Shadowskin Gloves"] = {215412, 18238, 20, 0, 0},
    ["Waylaid Supplies: Small Bronze Bombs"] = {211829, 4374, 12, 0, 0},
    ["Waylaid Supplies: Formal White Shirts"] = {215413, 4334, 3, 0, 0},
    ["Waylaid Supplies: Minor Healing Potions"] = {211318, 118, 20, 0, 0},
    ["Waylaid Supplies: Ornate Spyglasses"] = {211830, 5507, 2, 0, 0},
    ["Waylaid Supplies: Crimson Silk Pantaloons"] = {215414, 7062, 4, 0, 0},
    ["Waylaid Supplies: Copper Shortswords"] = {211319, 2847, 6, 0, 0},
    ["Waylaid Supplies: Dark Leather Cloaks"] = {211831, 2316, 2, 0, 0},
    ["Waylaid Supplies: Rich Purple Silk Shirts"] = {215415, 4335, 5, 0, 0},
    ["Waylaid Supplies: Runed Copper Pants"] = {211320, 3473, 3, 0, 0},
    ["Waylaid Supplies: Hillman's Shoulders"] = {211832, 4251, 2, 0, 0},
    ["Waylaid Supplies: White Bandit Masks"] = {215416, 10008, 4, 0, 0},
    ["Waylaid Supplies: Lesser Magic Wands"] = {211321, 11287, 2, 0, 0},
    ["Waylaid Supplies: Gray Woolen Shirts"] = {211833, 2587, 4, 0, 0},
    ["Waylaid Supplies: Soothing Turtle Bisque"] = {215417, 3729, 10, 0, 0},
    ["Waylaid Supplies: Minor Wizard Oil"] = {211322, 20744, 2, 0, 0},
    ["Waylaid Supplies: Pearl-clasped Cloaks"] = {211834, 5542, 3, 0, 0},
    ["Waylaid Supplies: Spider Sausages"] = {215418, 17222, 10, 0, 0},
    ["Waylaid Supplies: Rough Copper Bombs"] = {211323, 4360, 12, 0, 0},
    ["Waylaid Supplies: Smoked Sagefish"] = {211835, 25704, 15, 0, 0},
    ["Waylaid Supplies: Heavy Silk Bandages"] = {215419, 6451, 10, 0, 0},
    ["Waylaid Supplies: Rough Boomsticks"] = {211324, 4362, 3, 0, 0},
    ["Waylaid Supplies: Smoked Bear Meat"] = {211836, 8607, 20, 0, 0},
    ["Waylaid Supplies: Rockscale Cod"] = {215420, 6362, 40, 0, 0},
    ["Waylaid Supplies: Handstitched Leather Belts"] = {211325, 4237, 5, 0, 0},
    ["Waylaid Supplies: Goblin Deviled Clams"] = {211837, 5527, 8, 0, 0},
    ["Waylaid Supplies: Fire Oil"] = {215421, 6371, 10, 0, 0},
    ["Waylaid Supplies: Embossed Leather Vests"] = {211326, 2300, 3, 0, 0},
    ["Waylaid Supplies: Heavy Wool Bandages"] = {211838, 3531, 15, 0, 0},
    ["Waylaid Supplies: Brown Linen Pants"] = {211327, 4343, 6, 0, 0},
    ["Waylaid Supplies: Brown Linen Robes"] = {211328, 6238, 4, 0, 0},
    ["Waylaid Supplies: Herb Baked Eggs"] = {211329, 6888, 20, 0, 0},
    ["Waylaid Supplies: Spiced Wolf Meat"] = {211330, 2680, 20, 0, 0},
    ["Waylaid Supplies: Elixir of Firepower"] = {211935, 6373, 15, 0, 0},

    -- Level 10
    ["Waylaid Supplies: Peacebloom"] = {211316, 2447, 20, 0, 0},
    ["Waylaid Supplies: Copper Bars"] = {210771, 2840, 20, 0, 0},
    ["Waylaid Supplies: Rough Stone"] = {211933, 0, 0, 0, 0},
    ["Waylaid Supplies: Brilliant Smallfish"] = {211331, 0, 0, 0, 0},
    ["Waylaid Supplies: Healing Potions"] = {211934, 0, 0, 0, 0},
    ["Waylaid Supplies: Silverleaf"] = {211317, 0, 0, 0, 0},
    ["Waylaid Supplies: Heavy Linen Bandages"] = {211332, 0, 0, 0, 0},

    -- Level 25

    -- Level 30
    ["Waylaid Supplies: Guardian Gloves"] = {215408, 5966, 6, 0, 0},

    -- Level 35

    -- Level 40

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

    local dbmarket = TSM_API.GetCustomPriceValue("dbmarket", "i:"..itemID)
    local dbminbuyout = TSM_API.GetCustomPriceValue("dbminbuyout", "i:"..itemID)
    local dbregion = TSM_API.GetCustomPriceValue("dbregionmarketavg", "i:"..itemID)
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

local function UpdateTooltipWithPricing(tooltip, name)
    local requiredItemInfo = GetWaylaidSuppliesInfo(name)

    if requiredItemInfo then
        local _, requiredItemID, quantityRequired, reputationAwarded, currencyAwarded = unpack(requiredItemInfo)
        local aucPrice, tsmPrice = GetItemPricingInformation(requiredItemID)
        local aucSource = "Auc"
        local tsmSource = "TSM"

        tooltip:AddLine("   ")
        tooltip:AddLine("|cffffbf00WaylaidSuppliesGoldCost|r")

        if aucPrice or tsmPrice then
            local function addPriceLine(price, source)
                local totalPrice = quantityRequired * price
                local totalCost = totalPrice - (currencyAwarded or 0)
                local priceInfo = string.format("  Fill Price (%s): %s", source, ConvertCurrencyToPrintableString(totalPrice))

                if currencyAwarded and currencyAwarded > 0 then
                	priceInfo = string.format("  Fill Price (%s): %s - %s = %s", source, ConvertCurrencyToPrintableString(totalPrice), ConvertCurrencyToPrintableString(currencyAwarded or 0), ConvertCurrencyToPrintableString(totalCost))
                end

                AddColoredLine(tooltip, priceInfo, "", "|cff68bbe3", "|cffffffff")
            end

            if aucPrice then
                addPriceLine(aucPrice, aucSource)
            end
            if tsmPrice then
                addPriceLine(tsmPrice, tsmSource)
            end
        else
            local noPricingMessage = "No pricing module is enabled. Please enable either TradeSkillMaster or Auctionator."
            AddColoredLine(tooltip, noPricingMessage, "", "|cff68bbe3", "|cffffffff")
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
