-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A clickable hyperlink.
--- @class mwseMCMHyperlink : mwseMCMInfo, mwseMCMSetting, mwseMCMComponent
--- @field url string The URL for this hyperlink.
mwseMCMHyperlink = {}

--- This method creates the link (a text select) UI element of the Hyperlink and stores it in `self.elements.info`.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMHyperlink:makeComponent(parentBlock) end

--- Creates a new Hyperlink.
--- @param data mwseMCMHyperlink.new.data? This table accepts the following values:
--- 
--- `text`: string — The Hyperlink's text.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `url`: string — The URL for this hyperlink.
--- 
--- `label`: string? — *Optional*. The Hyperlink's label. Shown above the Hyperlink's text.
--- 
--- `inGameOnly`: boolean? — *Default*: `false`. No description yet available.
--- 
--- `indent`: integer? — *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent`: integer? — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom`: integer? — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing`: integer? — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `postCreate`: nil|fun(self: mwseMCMHyperlink) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMHyperlink hyperlink No description yet available.
function mwseMCMHyperlink:new(data) end

---Table parameter definitions for `mwseMCMHyperlink.new`.
--- @class mwseMCMHyperlink.new.data
--- @field text string The Hyperlink's text.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field url string The URL for this hyperlink.
--- @field label string? *Optional*. The Hyperlink's label. Shown above the Hyperlink's text.
--- @field inGameOnly boolean? *Default*: `false`. No description yet available.
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate nil|fun(self: mwseMCMHyperlink) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

