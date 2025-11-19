---@param paths string[]
---@return string
local M = {}
M.join = function(paths)
    local slash
    local bad_slash
    -- What does the file system use.
    local c = vim.fn.stdpath("config")
    if c:find("/") then
        slash = "/"
        bad_slash = "\\"
    else
        slash = "\\"
        bad_slash = "/"
    end

    ---@type string[]
    local r = {}
    local last = table.maxn(paths)

    for i, path in ipairs(paths) do
        local p = path:gsub(bad_slash, slash)
        if i == last then
            r[i] = p
            goto last_item
        end
        local rev = string.reverse(p)
        -- print(rev)
        -- print(rev:find(slash))
        if rev:find(slash) == 1 then
            r[i] = p
        else
            r[i] = p .. slash
        end
        ::last_item::
        -- print(r[i])
    end

    return table.concat(r, "")
end

M.setup = function(opts)
    return M.join
end

-- local data = vim.fn.stdpath("data")
-- local path = M.join({ data, "mason", "bin", "texlab" })

-- print(data, "\n", path)

return M
