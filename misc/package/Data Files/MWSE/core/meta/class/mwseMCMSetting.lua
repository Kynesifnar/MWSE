-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A setting is a component that the player interacts with in some way. Interacting with a setting may update a mwseMCMVariable, or it may call a custom function.
--- @class mwseMCMSetting : mwseMCMComponent
--- @field callback nil|fun(self: mwseMCMSetting) The custom function called when the player interacts with this Setting.
--- @field componentType "Setting" The type of this component.
--- @field inGameOnly boolean If true, the setting is disabled while the game is on main menu. If this is enabled, it will override the value of the `inGameOnly` parameter on this setting's `variable`.
--- @field makeComponent nil|fun(self: mwseMCMSetting, innerContainer: tes3uiElement) This method must be implemented by child classes of mwseMCMSetting.
--- @field restartRequired boolean If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage string The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect.".
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|nil The Variable this setting will update.
mwseMCMSetting = {}

--- This function specifies how values stored in the `variable` field should correspond to values displayed by this setting.
--- @param variableValue number No description yet available.
--- @return number|string labelValue No description yet available.
function mwseMCMSetting:convertToLabelValue(variableValue) end

--- This method creates the UI elements that comprise this Setting.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMSetting:create(parentBlock) end

--- This method creates the UI elements specific to a Setting. To call this method, the mwseMCMSetting-derived type needs to have [`makeComponent`](./mwseMCMSetting.md#makecomponent) method implemented.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMSetting:createContentsContainer(parentBlock) end

--- Recursively walks over children of given `element` and inserts them into `self.mouseOvers`.
--- @param element tes3uiElement No description yet available.
function mwseMCMSetting:insertMouseovers(element) end

--- Creates a new Setting.
--- @param data mwseMCMSetting.new.data? This table accepts the following values:
--- 
--- `label`: string? — *Optional*. The Setting's label.
--- 
--- `text`: string? — *Optional*. The Setting's text.
--- 
--- `variable`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil — *Optional*. A variable for this setting.
--- 
--- `defaultSetting`: unknown? — *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `callback`: nil|fun(self: mwseMCMSetting) — *Optional*. The custom function called when the player interacts with this Setting.
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
--- `postCreate`: nil|fun(self: mwseMCMSetting) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMActiveInfo|mwseMCMButton|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMOnOffButton|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSlider|mwseMCMTextField|mwseMCMYesNoButton setting No description yet available.
function mwseMCMSetting:new(data) end

---Table parameter definitions for `mwseMCMSetting.new`.
--- @class mwseMCMSetting.new.data
--- @field label string? *Optional*. The Setting's label.
--- @field text string? *Optional*. The Setting's text.
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil *Optional*. A variable for this setting.
--- @field defaultSetting unknown? *Optional*. If `defaultSetting` wasn't passed in the `variable` table, can be passed here. The new variable will be initialized to this value.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field callback nil|fun(self: mwseMCMSetting) *Optional*. The custom function called when the player interacts with this Setting.
--- @field inGameOnly boolean? *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- @field restartRequired boolean? *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage string? *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate nil|fun(self: mwseMCMSetting) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

--- Calls the Setting's callback method and if `restartRequired` is set to true, notifies the player to restart the game.
function mwseMCMSetting:update() end

