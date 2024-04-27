-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- 
--- @class mwseMCMDropdown : mwseMCMSetting, mwseMCMComponent
--- @field dropdownActive boolean If true, the dropdown is expanded.
--- @field elements mwseMCMDropdownElements This dictionary-style table holds all the UI elements of the Dropdown, for easy access.
--- @field idleColor number[] The idle color for dropdown. By default set to `tes3ui.getPalette(tes3.palette.normalColor)`.
--- @field label string|nil The text shown above the dropdown.
--- @field options mwseMCMDropdownOption[] This table holds the text and variable value for each of the dropdown's options.
--- @field overColor number[] The color used when the mouse if hovering over the dropdown. By default set to `tes3ui.getPalette(tes3.palette.normalOverColor)`.
--- @field pressedColor number[] The color used when the dropdown is being pressed. By default set to `tes3ui.getPalette(tes3.palette.normalPressedColor)`.
mwseMCMDropdown = {}

--- Creates the expanded dropdown UI element parent dropdownParent and the text select entries inside for each option of the dropdown. If the dropdown is expanded, then calling this method will close the dropdown.
function mwseMCMDropdown:createDropdown() end

--- This method creates the border, textBox and dropdownParent UI elements of the Dropdown.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMDropdown:makeComponent(parentBlock) end

--- Creates a new Dropdown.
--- @param data mwseMCMDropdown.new.data? This table accepts the following values:
--- 
--- `label`: string? — *Optional*. The text shown above the dropdown.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `options`: mwseMCMDropdownOption[] — This table holds the text and variable value for each of the dropdown's options.
--- 
--- `variable`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil — *Optional*. A variable for this setting.
--- 
--- `defaultSetting`: unknown? — *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- 
--- `idleColor`: number[]? — *Default*: `tes3ui.getPalette(tes3.palette.normalColor)`. The idle color for dropdown. Needs to be an RGB trio in the range [0.0, 1.0].
--- 
--- `overColor`: number[]? — *Default*: `tes3ui.getPalette(tes3.palette.normalOverColor)`. The color used when the mouse if hovering over the dropdown. Needs to be an RGB trio in the range [0.0, 1.0].
--- 
--- `pressedColor`: number[]? — *Default*: `tes3ui.getPalette(tes3.palette.normalPressedColor)`. The color used when the dropdown is being pressed. Needs to be an RGB trio in the range [0.0, 1.0].
--- 
--- `callback`: nil|fun(self: mwseMCMDropdown) — *Optional*. The custom function called when the player interacts with this Setting.
--- 
--- `inGameOnly`: boolean? — *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- 
--- `restartRequired`: boolean? — *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- 
--- `restartRequiredMessage`: string? — *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- 
--- `indent`: integer? — *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent`: integer? — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom`: integer? — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing`: integer? — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `postCreate`: nil|fun(self: mwseMCMDropdown) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMDropdown dropdown No description yet available.
function mwseMCMDropdown:new(data) end

---Table parameter definitions for `mwseMCMDropdown.new`.
--- @class mwseMCMDropdown.new.data
--- @field label string? *Optional*. The text shown above the dropdown.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field options mwseMCMDropdownOption[] This table holds the text and variable value for each of the dropdown's options.
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil *Optional*. A variable for this setting.
--- @field defaultSetting unknown? *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- @field idleColor number[]? *Default*: `tes3ui.getPalette(tes3.palette.normalColor)`. The idle color for dropdown. Needs to be an RGB trio in the range [0.0, 1.0].
--- @field overColor number[]? *Default*: `tes3ui.getPalette(tes3.palette.normalOverColor)`. The color used when the mouse if hovering over the dropdown. Needs to be an RGB trio in the range [0.0, 1.0].
--- @field pressedColor number[]? *Default*: `tes3ui.getPalette(tes3.palette.normalPressedColor)`. The color used when the dropdown is being pressed. Needs to be an RGB trio in the range [0.0, 1.0].
--- @field callback nil|fun(self: mwseMCMDropdown) *Optional*. The custom function called when the player interacts with this Setting.
--- @field inGameOnly boolean? *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- @field restartRequired boolean? *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage string? *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate nil|fun(self: mwseMCMDropdown) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

--- Changes the currently selected option. Update's the Dropdown variable value and closes the dropdown.
--- @param option mwseMCMDropdownOption No description yet available.
function mwseMCMDropdown:selectOption(option) end

--- Updates the variable's value to the currently selected option in the Dropdown. Calls the Dropdown's callback method and if `restartRequired` is set to true, notifies the player to restart the game.
function mwseMCMDropdown:update() end

