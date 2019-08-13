return {
	type = "function",
	description = [[Wrapper for the GetItemCount mwscript function.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "reference", type = "tes3reference|tes3mobileActor|string", description = "The target reference for this command to be executed on. Defaults to the normal script execution reference.", optional = true },
			{ name = "item", type = "tes3item|string" },
		},
	}},
	returns = {{ type = "number" }},
}
