return {
	type = "function",
	description = [[Requests menu mode be activated on a menu with a given id.]],
	arguments = {
		{ name = "id", type = "number" },
	},
	returnDescription = "true if the menu was switched, or false if it was already active.",
	returns = { { type = "boolean" } },
}
