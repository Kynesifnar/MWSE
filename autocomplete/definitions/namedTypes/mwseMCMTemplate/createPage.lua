return {
	type = "method",
	description = [[Creates a new Page in this Template.]],
	arguments = {{
		name = "data",
		type = "table|string",
		optional = true,
		description = "If passing only a string, it will be used as the Page's label.",
		tableParams = {
			{ name = "showHeader", type = "boolean", optional = true, default = false, description = "The page's label will only be created if set to true." },
			{ name = "label", type = "string", optional = true, description = "The label field is displayed in the tab for that page at the top of the menu. Defaults to: \"Page {number}\"." },
			{ name = "noScroll", type = "boolean", optional = true, default = false, description = "When set to true, the page will not have a scrollbar. Particularly useful if you want to use a [ParagraphField](./mwseMCMParagraphField.md), which is not compatible with scroll panes." },
			{ name = "showReset", type = "boolean", optional = true, default = false, description = "When set to true, the Page will have a Reset button. Clicking on it will set the `variable.value` of all the setting on the page to their respective `defaultSetting` values." },
			{ name = "config", type = "table", optional = true,
				description = "If provided, this `config` will be used to generate [`mwseMCMTableVariable`s](./mwseMCMTableVariable.md) for any \z
					[`mwseMCMSetting`s](./mwseMCMSetting.md) made inside this `Category`/`Page`. \z
					i.e., this parameter provides an alternative to explicitly constructing new variables. \z
					Subtables of this `config` can be accessed by passing a `configKey` to any `Category` that is nested inside this one."
			},
			{ name = "defaultConfig", type = "table", optional = true,
				description = "Stores a default config that should be used by this mod's `Setting`s. This will initialize the `defaultSetting` \z
					field of any [`mwseMCMTableVariable`s](./mwseMCMTableVariable.md) created for this mod. \z
					Sub-configs can be accessed by passing a `configKey` to any `Category` that is nested inside this one."
			},
			{ name = "configKey", type = "string|number", optional = true,
				description = "This can be used to access subtables of the `config` and `defaultConfig` stored in this component's `parentComponent`. \z
					This ensures that the `config` and `defaultConfig` stay synchronized."
			},
			{ name = "showDefaultSetting", type = "boolean", optional = true, default = "`parentComponent.showDefaultSetting`",
				description = "If `true`, then each `Setting` created inside this `Page`/`Category` will have `showDefaultSetting = true`. \z
					This is equivalent to manually writing `showDefaultSetting = true` in the constructor of each `Setting` created in this `Page`/`Category`.",
			},
			{ name = "components", type = "mwseMCMComponent.new.data[]", optional = true, description = "Use this if you want to directly create all the nested components in this Page. This table is described at each Component's `new` method." },
			{ name = "indent", type = "integer", optional = true, default = 6, description = "The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component." },
			{ name = "childIndent", type = "integer", optional = true, description = "The left padding size in pixels. Used on all the child components." },
			{ name = "paddingBottom", type = "integer", optional = true, default = 4, description = "The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component." },
			{ name = "childSpacing", type = "integer", optional = true, description = "The bottom border size in pixels. Used on all the child components." },
			{ name = "inGameOnly", type = "boolean", optional = true, default = false },
			{ name = "postCreate", type = "fun(self: mwseMCMPage)", optional = true, description = "Can define a custom formatting function to make adjustments to any element saved in `self.elements`." },
		}
	}},
	returns = {{
		name = "page", type = "mwseMCMPage"
	}}
}
