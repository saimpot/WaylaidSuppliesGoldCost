local addonName = "WaylaidSuppliesGoldCost"

local addonDefaults = {
    use_tsm = false,
    use_auc = false,
    show_rep_gain = false,
    show_rep_until = false,
    detailed_tooltip = false,
}

local function InitializeDatabase()
    if WaylaidSuppliesGoldCostDB == nil then
        WaylaidSuppliesGoldCostDB = CopyTable(addonDefaults)
    else
        for key, value in pairs(addonDefaults) do
            if WaylaidSuppliesGoldCostDB[key] == nil then
                WaylaidSuppliesGoldCostDB[key] = value
            end
        end
    end
end

InitializeDatabase()

local optionsPanel = CreateFrame("Frame")
optionsPanel.name = addonName
optionsPanel.db = WaylaidSuppliesGoldCostDB

local title = optionsPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
title:SetPoint("TOPLEFT", 16, -16)
title:SetText(string.format("%s Options", optionsPanel.name))

local function createCheckbox(name, label, description, point, relativeTo, relativePoint, xOffset, yOffset)
    local checkbox = CreateFrame("CheckButton", addonName .. name, optionsPanel, "InterfaceOptionsCheckButtonTemplate")
    checkbox.Text:SetText(label)
    checkbox.tooltipText = label
    checkbox.tooltipRequirement = description or label

    checkbox:SetPoint(point, relativeTo, relativePoint, xOffset, yOffset)

    checkbox:SetScript("OnClick", function(self)
        optionsPanel.db[name] = self:GetChecked()
    end)

    return checkbox
end

local checkboxes = {
    {
        name = "use_tsm",
        label = "Use TSM as price source",
        description = "use_tsm",
        addonDependency = "TradeSkillMaster"
    },
    {
        name = "use_auc",
        label = "Use Auctionator as price source",
        description = "use_auc",
        addonDependency = "Auctionator"
    },
    {
        name = "show_rep_gain",
        label = "Show reputation gain",
        description = "show_rep_gain",
        addonDependency = "nil"
    },
    {
        name = "show_rep_until",
        label = "Show reputation until",
        description = "show_rep_until",
        addonDependency = "nil"
    },
    {
        name = "detailed_tooltip",
        label = "Show detailed tooltip - Hint: You can also press shift while viewing  an item", description = "detailed_tooltip",
        addonDependency = "nil"
    },
}

local previousCheckbox
for i, cb in ipairs(checkboxes) do
    local checkbox = createCheckbox(
            cb.name,
            cb.label,
            cb.description,
            "TOPLEFT",
            previousCheckbox or title,
            previousCheckbox and "BOTTOMLEFT" or "BOTTOMLEFT",
            -2,
            previousCheckbox and -16 or -32
    )

    if cb.addonDependency and IsAddOnLoaded(cb.addonDependency) == false then
        checkbox.Text:SetText(string.format("%s - |cffff0000Warning: %s is not loaded|r", cb.label, cb.addonDependency))
    end

    checkbox:SetChecked(optionsPanel.db[cb.name])
    previousCheckbox = checkbox
end

local function UpdateCheckboxStates()
    for _, cb in pairs(checkboxes) do
        local checkbox = _G[addonName .. cb.name]
        checkbox:SetChecked(optionsPanel.db[cb.name])
    end
end

optionsPanel:SetScript("OnShow", UpdateCheckboxStates)
InterfaceOptions_AddCategory(optionsPanel)

SLASH_WSGC1 = "/wsgc"
SLASH_WSGC2 = "/waylaidsupplies"

SlashCmdList["WSGC"] = function(msg)
    if msg == "reset" then
        WaylaidSuppliesGoldCostDB = CopyTable(addonDefaults)
        optionsPanel.db = WaylaidSuppliesGoldCostDB
        UpdateCheckboxStates()
        print("DB has been reset to default")
    elseif msg == "dump" then
        print("Printing DB")
        for key, value in pairs(WaylaidSuppliesGoldCostDB) do
            print(key, value)
        end
    else
        InterfaceOptionsFrame_OpenToCategory(optionsPanel)
    end
end

local loginLogoutEventFrame = CreateFrame("Frame")
loginLogoutEventFrame:RegisterEvent("ADDON_LOADED")
loginLogoutEventFrame:RegisterEvent("PLAYER_LOGOUT")

loginLogoutEventFrame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        InitializeDatabase()

        -- Ensure the options panel uses the latest data
        optionsPanel.db = WaylaidSuppliesGoldCostDB
        UpdateCheckboxStates()

    elseif event == "PLAYER_LOGOUT" then
        for key, value in pairs(optionsPanel.db) do
            WaylaidSuppliesGoldCostDB[key] = value
        end
    end
end)
