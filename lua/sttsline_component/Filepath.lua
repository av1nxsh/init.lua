local Filepath = require("sttusline.component").new()

Filepath.set_event { "BufEnter", "WinEnter" }
Filepath.set_user_event {}
Filepath.set_timing(false)
Filepath.set_lazy(true)
Filepath.set_config {}
Filepath.set_padding(1)

Filepath.set_colors {} -- { fg = colors.set_black, bg = colors.set_white }
Filepath.set_update(function()
    local filepath = vim.fn.expand("#")
    local n = 2
    n = math.min(n, #filepath)
    local start_index = #filepath - n + 1
    local arr = {}
    for i = start_index, #filepath do
        table.insert(arr, filepath[i])
    end
    local result = table.concat(arr, "/")
    return { " " .. result .. " " }
end)

return Filepath
