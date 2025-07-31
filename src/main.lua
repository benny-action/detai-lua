-- local unistd = require("posix.unistd")
-- local stat = require("posix.sys.stat")
-- local term = require("lua-term")
-- local tab = require("tabular")
-- local json = require("dkjson")
--
--[[
--NOTE: path to success
--TODO: begin with basic file io
--TODO: create table structure for items
--TODO: add json serialization to save load data.
--TODO: add posix features like file permissions and error handling
--
--]]

package.path = package.path .. ";./src/?.lua"

local inventory = require("inventory")

local cli = require("cli")

local my_inventory = inventory.new()

local success, message = inventory.add_item(my_inventory, "Apple", 2, "Sweet, Red")
if success then
	print("Succcess: " .. message)
else
	print("Error: " .. message)
end

for i, item in ipairs(my_inventory.items) do
	print(string.format("%s | %d Senses | %s", item.name, item.senses, item.description))
end
