local M = {}

function M.new()
	return {
		items = {},
	}
end

function M.add_item(inventory, name, senses, description)
	--Input val
	if not name or name == "" then
		return false, "Item name cannot be empty."
	end

	if not senses or senses < 0 then
		return false, "Senses must be a positive number - how many used?"
	end

	if not description or description == "" then
		return false, "Item must have a description of some sort."
	end

	--check item existence
	for i, item in ipairs(inventory.items) do
		if item.name == name then
			--update existing
			item.senses = item.senses + senses
			return true, "Updated existing item: " .. name
		end
	end

	--add new item
	local new_item = {
		name = name,
		senses = senses,
		description = description,
		date_added = os.date("&Y-&m-&d"),
	}

	table.insert(inventory.items, new_item)
	return true, "Added new item: " .. name
end

function M.list_items(inventory)
	--implement here
end

return M

-- items = {
-- 	{ name = "Apple", look = "red", smell = "sweet fruit" },
-- 	{ name = "Honey", look = "gold", smell = "musky sweet" },
-- 	{ name = "T-shirt", look = "white", smell = "clean fabric" },
-- },
