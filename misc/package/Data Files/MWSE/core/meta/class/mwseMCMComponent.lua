-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- The base class for all MCM components, such as categories and settings. The basic component has a block UI element that holds a label. This is used to implement the following components:
--- 
--- - Templates
--- 	- [Template](./mwseMCMTemplate.md)
--- - [Pages](./mwseMCMPage.md)
--- 	- [Exclusions Page](./mwseMCMExclusionsPage.md)
--- 	- [Filter Page](./mwseMCMFilterPage.md)
--- 	- [Mouse over Page](./mwseMCMMouseOverPage.md)
--- 	- [Page](./mwseMCMPage.md)
--- 	- [Sidebar Page](./mwseMCMSideBarPage.md)
--- - Categories
--- 	- [Category](./mwseMCMCategory.md)
--- 	- [Side by side block](./mwseMCMSideBySideBlock.md)
--- - [Infos](./mwseMCMInfo.md)
--- 	- [Active info](./mwseMCMActiveInfo.md)
--- 	- [Hyperlink](./mwseMCMHyperlink.md)
--- 	- [Info](./mwseMCMInfo.md)
--- 	- [Mouse over info](./mwseMCMMouseOverInfo.md)
--- - [Settings](./mwseMCMSetting.md)
--- 	- [Button](./mwseMCMButton.md)
--- 	- [On off button](./mwseMCMOnOffButton.md)
--- 	- [Yes no button](./mwseMCMYesNoButton.md)
--- 	- [Cycle button](./mwseMCMCycleButton.md)
--- 	- [Key binder](./mwseMCMKeyBinder.md)
--- 	- [Dropdown](./mwseMCMDropdown.md)
--- 	- [Text field](./mwseMCMTextField.md)
--- 	- [Paragraph field](./mwseMCMParagraphField.md)
--- 	- [Slider](./mwseMCMSlider.md)
--- 	- [Percentage slider](./mwseMCMPercentageSlider.md)
--- 
--- @class mwseMCMComponent
--- @field childIndent integer|nil The left padding size in pixels. Used on all the child components.
--- @field childSpacing integer|nil The bottom border size in pixels. Used on all the child components.
--- @field class string Every MCM component has a unique string indentifier specific to that component. These strings are the filename of the file implementing a component. These are found in `core\\mcm\\components`.
--- @field componentType string For mwseMCMComponent this is set to `"Component"`.
--- @field createContentsContainer nil|fun(self: mwseMCMComponent, outerContainer: tes3uiElement) This method creates the contents of a component. Not every component implements this method.
--- @field description string|nil If in a [Sidebar Page](./mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field elements mwseMCMButtonElements|mwseMCMCategoryElements|mwseMCMComponentElements|mwseMCMDropdownElements|mwseMCMExclusionsPageElements|mwseMCMFilterPageElements|mwseMCMInfoElements|mwseMCMMouseOverPageElements|mwseMCMParagraphFieldElements|mwseMCMSideBarPageElements|mwseMCMSliderElements|mwseMCMTemplateElements|mwseMCMTextFieldElements This dictionary holds all the UI elements of the Component, for easy access.
--- @field indent integer The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field inGameOnly boolean If true, then this component will be disabled when on the main menu.
--- @field label string The text of the component. Not all component types have a label.
--- @field mouseOvers tes3uiElement[]|nil This array of UI elements will have an event handler registered to trigger "MCM:MouseOver" event. For more info, see [registerMouseOverElements](#registermouseoverelements) method.
--- @field paddingBottom integer The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil 
--- @field postCreate nil|fun(self: mwseMCMComponent) Custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field sCancel string Set to the value of `sCancel` GMST.
--- @field sNo string Set to the value of `sNo` GMST.
--- @field sOff string Set to the value of `sOff` GMST.
--- @field sOK string Set to the value of `sOK` GMST.
--- @field sOn string Set to the value of `sOn` GMST.
--- @field sYes string Set to the value of `sYes` GMST.
mwseMCMComponent = {}

--- Returns true if the component should be disabled.
--- 
--- Componets with a variable:
--- 
--- - True if the Component's **variable** has `inGameOnly` field set to true, and the game is on the main menu. For components with multiple subcomponent ([Category](./mwseMCMCategory.md)), the check is done for each subcomponent.
--- 
--- Components without a variable:
--- 
--- - True if the **Component's** `inGameOnly` field is set to true, and the game is on the main menu.
--- 
--- @return boolean result No description yet available.
function mwseMCMComponent:checkDisabled() end

--- This method creates the UI elements that comprise a component. To call this method, the mwseMCMComponent-derived type needs to have [`createContentsContainer`](./mwseMCMComponent.md#createcontentscontainer) method implemented.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMComponent:create(parentBlock) end

--- Creates component's innerContainer UI element inside given `parentBlock`, and stores it in the `self.elements.innerContainer`. The innerContainer will add `self.indent` additional padding on the left if the component has a label.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMComponent:createInnerContainer(parentBlock) end

--- Creates component's label UI element.
--- 
--- First, it calls `self:createLabelBlock` and creates the label element inside new `labelBlock`. Stores both new UI elements in the `self.elements` and `self.mouseOvers`.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMComponent:createLabel(parentBlock) end

--- Creates component's labelBlock UI element inside given `parentBlock`, and stores it in the `self.elements.labelBlock` and `self.mouseOvers`.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMComponent:createLabelBlock(parentBlock) end

--- Creates component's outerContainer UI element inside given `parentBlock`, and stores it in the `self.elements.outerContainer` and `self.mouseOvers`. The outerContainer holds all the other UI elements that comprise a component.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMComponent:createOuterContainer(parentBlock) end

--- This method disables the component's UI elements. That includes: changing the color of the UI elements to the `tes3.palette.disabledColor` and setting button widget state to `tes3.uiState.disabled`.
function mwseMCMComponent:disable() end

--- Enables the component's UI elements. That includes: changing the color of the UI elements to the `tes3.palette.normalColor` and registering handlers for `tes3.uiEvent.mouseClick` for buttons.
function mwseMCMComponent:enable() end

--- Creates a new Component.
--- @param data mwseMCMComponent.new.data? This table accepts the following values:
--- 
--- `label`: string? — *Optional*. The text of the component. Not all component types have a label.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `indent`: integer? — *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent`: integer? — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom`: integer? — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing`: integer? — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `inGameOnly`: boolean? — *Default*: `false`. No description yet available.
--- 
--- `postCreate`: nil|fun(self: mwseMCMComponent) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton component No description yet available.
function mwseMCMComponent:new(data) end

---Table parameter definitions for `mwseMCMComponent.new`.
--- @class mwseMCMComponent.new.data
--- @field label string? *Optional*. The text of the component. Not all component types have a label.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field inGameOnly boolean? *Default*: `false`. No description yet available.
--- @field postCreate nil|fun(self: mwseMCMComponent) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

--- Prepares the provided parameters table and sets the `parentComponent` field to `mwseMCMComponent`.
--- @param data string|mwseMCMComponent.new.data|nil *Optional*. No description yet available.
--- @return mwseMCMComponent.new.data data No description yet available.
function mwseMCMComponent:prepareData(data) end

--- Prints the component table to the `mwse.log`. If a component is passed, it will be printed. If called without arguments, the component it was called on will be printed.
--- @param component table? *Default*: `self`. No description yet available.
function mwseMCMComponent:printComponent(component) end

--- Registers an event handler on each given UI element for the `tes3.uiEvent.mouseOver` and `tes3.uiEvent.mouseLeave` that will trigger "MCM:MouseOver" event. That event is used by the MCM to update the sidebar on the [mwseMCMSideBarPage](https://mwse.github.io/MWSE/types/mwseMCMSideBarPage/).
--- @param mouseOverList tes3uiElement[]? *Optional*. If this argument isn't passed, does nothing.
function mwseMCMComponent:registerMouseOverElements(mouseOverList) end

