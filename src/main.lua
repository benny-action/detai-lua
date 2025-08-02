-- local unistd = require("posix.unistd")
-- local stat = require("posix.sys.stat")
-- local term = require("lua-term")
-- local tab = require("tabular")
-- local json = require("dkjson")
--
--[[
--TODO: add json serialization to save load data.
--TODO: add posix features like file permissions and error handling
--
--]]

package.path = package.path .. ";./src/?.lua"

local inventory_mod = require("inventory")
local cli = require("cli")

-- parse args
local args = {}
for i = 1, #arg do
	args[i] = arg[i]
end

-- simple parsing thing here
local command, params = cli.parse_args(args)
local my_inventory = inventory_mod.new()

--load existing inv here
local success = cli.handle_command(command, params, my_inventory)

if not success then
	os.exit(1)
end

-- save inventory with something here.....

-- test thing
for i, item in ipairs(my_inventory.items) do
	print(string.format("%s | %d Senses | %s", item.name, item.senses, item.description))
end
