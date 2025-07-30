local M = {}

local inventory = {
	items = {
		{ name = "Apple", look = "red", smell = "sweet fruit" },
		{ name = "Honey", look = "gold", smell = "musky sweet" },
		{ name = "T-shirt", look = "white", smell = "clean fabric" },
	},
}

function M.add_item(inventory, item)
	--implement here
end

function M.list_items(inventory)
	--implement here
end

return M
