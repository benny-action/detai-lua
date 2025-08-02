local M = {}

-- arg parsing
function M.parse_args(args)
	if #args == 0 then
		return "help", {}
	end

	local command = args[1]
	local params = {}

	for i = 2, #args do
		params[i - 1] = args[i]
	end

	return command, params
end

function M.handle_command(command, params, inventory)
	if command == "add" then
		if #params < 3 then
			print("Usage: add <name> <senses> <description>")
			return false
		elseif #params > 3 then
			print("Usage: add <name> <senses> <description>")
			return false
		end

		local name = params[1]
		local senses = tonumber(params[2])
		local description = params[3]

		if not senses then
			print("Error: senses must be a number")
			return false
		end

		return M.add_item_command(inventory, name, senses, description)
	elseif command == "list" then
		return M.list_command(inventory)
	elseif command == "help" then
		M.show_help()
		return true
	else
		print("Unknown command: " .. command)
		M.show_help()
		return false
	end
end

function show_help()
	print("Something went wrong... no help function written.")
end

return M
