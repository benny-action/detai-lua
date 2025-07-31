local M = {}

-- setup

local args = { ... }

-- engine
function M.add_args(p)
    for i, v in ipairs() do
    
end

-- go fo it

for i, v in ipairs(args) do
    print(i .. ": " .. v)
end

for i, v in ipairs(args) do
    if args[i] == "--say" then
	M.echo("echo: " .. args[i + 1])
    end
end

return M
