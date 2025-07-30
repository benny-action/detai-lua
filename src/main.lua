local unistd = require("posix.unistd")
local stat = require("posix.sys.stat")
local term = require("lua-term")
local tab = require("tabular")
local json = require("dkjson")

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

--main logic under
