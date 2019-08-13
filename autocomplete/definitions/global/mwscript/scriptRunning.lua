return {
	type = "function",
	description = [[Wrapper for the ScriptRunning mwscript function.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "script", type = "tes3script|string" },
		},
	}},
	returns = {{ type = "boolean" }},
}
