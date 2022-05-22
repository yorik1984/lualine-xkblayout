local function varExistsError(variable)
    if variable == nil then
        error("lualine-xkblayout: XkbSwitchLib path error or not installed")
    end
end

varExistsError(vim.g.XkbSwitchLib)

local codes = {
    ["2SetKorean"] = "KR",
    ["Chinese"]    = "CN",
    ["Japanese"]   = "JP",
    ["us"]         = "ENG",
    ["ru"]         = "РУС",
    ["ua"]         = "УКР",
}

local function xkblayout()
    if vim.g.lualine_xkblayout_codes then
        for key, value in pairs(vim.g.lualine_xkblayout_codes) do
            if value ~= nil then
                codes[key] = value
            end
        end
    end
    local keyboardLayout = vim.api.nvim_eval([[
        libcall(g:XkbSwitchLib, 'Xkb_Switch_getXkbLayout', '')
    ]])
    for key, value in pairs(codes) do
        if keyboardLayout == key then
            keyboardLayout = value
        end
    end

    return keyboardLayout
end

return  xkblayout

