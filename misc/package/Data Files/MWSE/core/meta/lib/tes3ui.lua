-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- The `tes3ui` library provides access to manipulating the game's GUI.
--- @class tes3uilib
tes3ui = {}

--- Sends all text input to the specified element. Calling this function with a nil argument will release text input and allow keybinds to work. Suppresses most keybinds while active, except the Journal open/close keybind (it's up to the individual menu implementation).
--- 
--- Only one element can have control of input, and there is no automatic restoration of control if one element takes control from another. Be careful of conflicts with other users of this function.
--- @param element tes3uiElement|nil The element to focus, or `nil` to clear focus.
function tes3ui.acquireTextInput(element) end

--- When used in a mouse event, causes the element to capture further mouse events even when the cursor goes outside the element. Setting mouse capture should always be accompanied by releasing it on a complementary event. This is commonly used for dragging, so that it can continue even if the mouse moves slightly outside the element.
--- 
--- The capture is always removed when the element is destroyed. The capture may also be removed when the mouse is released, but this is not reliable, as the engine forgets what to do if there is input from any other controller while the mouse is held down.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/apis/tes3ui/#tes3uicapturemousedrag).
--- @param capture boolean Turns on mouse capture for the element currently processing a mouse event if true, sending all further mouse events to that element. Turns off capture if false.
function tes3ui.captureMouseDrag(capture) end

--- Creates a simple dialogue choice, as per the `Choice` mwscript function. To add more options call this function multiple times.
--- @param text string The text to display for the choice.
--- @param index number The choice index associated with the given text.
function tes3ui.choice(text, index) end

--- This function closes the book menu.
function tes3ui.closeBookMenu() end

--- Closes the journal menu.
--- @return boolean result No description yet available.
function tes3ui.closeJournal() end

--- This function closes the scroll menu.
function tes3ui.closeScrollMenu() end

--- Creates a help layer menu. Help layer menus include notifications and tooltips that are always above the rest of the interface. The game realizes this using a separate menu root and set of functions.
--- 
--- Note, to create tooltips with the correct behaviour, use tes3ui.createTooltipMenu.
--- 
--- Unlike standard menus, help layer menus are always created with a fixed frame.
--- @param params tes3ui.createHelpLayerMenu.params This table accepts the following values:
--- 
--- `id`: string|number — The menu’s ID. The menu can be later accessed by tes3ui.findHelpLayerMenu(id).
--- @return tes3uiElement result No description yet available.
function tes3ui.createHelpLayerMenu(params) end

---Table parameter definitions for `tes3ui.createHelpLayerMenu`.
--- @class tes3ui.createHelpLayerMenu.params
--- @field id string|number The menu’s ID. The menu can be later accessed by tes3ui.findHelpLayerMenu(id).

--- Creates a top-level menu.
--- @param params tes3ui.createMenu.params This table accepts the following values:
--- 
--- `id`: string|number — The menu’s ID. The menu can be later accessed by tes3ui.findMenu(id).
--- 
--- `dragFrame`: boolean? — *Default*: `false`. Constructs a draggable and resizeable frame and background for the menu. It is similar to the stats, inventory, magic and map menus in the standard UI. Its title bar text can be set with the .text property. After construction, position and minimum dimensions should be set.
--- 
--- `fixedFrame`: boolean? — *Default*: `false`. Constructs a fixed (non-draggable) frame and background for the menu. The layout system should automatically centre and size it to fit whatever is added to the menu. This type of menu is modal by default, preventing interaction with other menus while the menu is active.
--- 
--- `modal`: boolean? — *Default*: `true`. Only applies to fixedFrame menus. Modal menus prevent interaction with other menus while the menu is active. This behavior can be disabled with this flag.
--- 
--- `loadable`: boolean? — *Default*: `true`. If set to false, calls to loadMenuPosition will fail.
--- @return tes3uiElement result No description yet available.
function tes3ui.createMenu(params) end

---Table parameter definitions for `tes3ui.createMenu`.
--- @class tes3ui.createMenu.params
--- @field id string|number The menu’s ID. The menu can be later accessed by tes3ui.findMenu(id).
--- @field dragFrame boolean? *Default*: `false`. Constructs a draggable and resizeable frame and background for the menu. It is similar to the stats, inventory, magic and map menus in the standard UI. Its title bar text can be set with the .text property. After construction, position and minimum dimensions should be set.
--- @field fixedFrame boolean? *Default*: `false`. Constructs a fixed (non-draggable) frame and background for the menu. The layout system should automatically centre and size it to fit whatever is added to the menu. This type of menu is modal by default, preventing interaction with other menus while the menu is active.
--- @field modal boolean? *Default*: `true`. Only applies to fixedFrame menus. Modal menus prevent interaction with other menus while the menu is active. This behavior can be disabled with this flag.
--- @field loadable boolean? *Default*: `true`. If set to false, calls to loadMenuPosition will fail.

--- Creates a respond text. This function is used for the mwscript `Choice` function.
--- @param params tes3ui.createResponseText.params This table accepts the following values:
--- 
--- `text`: string — The text to display.
--- 
--- `type`: integer? — *Default*: `2`. The type for the response. Defaults to `choice` responses. If set to `1`, a title will be made. Value of `0` corresponds to the main text, and value of `2` corresponds to red clickable choice text.
--- 
--- `index`: integer? — *Optional*. The answer index for the response. Only used for `choice` responses.
function tes3ui.createResponseText(params) end

---Table parameter definitions for `tes3ui.createResponseText`.
--- @class tes3ui.createResponseText.params
--- @field text string The text to display.
--- @field type integer? *Default*: `2`. The type for the response. Defaults to `choice` responses. If set to `1`, a title will be made. Value of `0` corresponds to the main text, and value of `2` corresponds to red clickable choice text.
--- @field index integer? *Optional*. The answer index for the response. Only used for `choice` responses.

--- Creates a tooltip menu, which can be an empty menu, an item tooltip, a skill tooltip, or a spell tooltip. This should be called from within a tooltip event callback. These automatically follow the mouse cursor, and are also destroyed automatically when the mouse leaves the originating element. Creating an item tooltip will invoke the uiObjectTooltip event.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/apis/tes3ui/#tes3uicreatetooltipmenu).
--- @param params tes3ui.createTooltipMenu.params? This table accepts the following values:
--- 
--- `item`: tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string|nil — *Optional*. The item to create a tooltip for. If not specified, the tooltip will be empty.
--- 
--- `itemData`: tes3itemData? — *Optional*. The item data for the item.
--- 
--- `spell`: tes3spell? — *Optional*. The spell to create a tooltip for.
--- 
--- `skill`: tes3skill? — *Optional*. The skill to create a tooltip for.
--- @return tes3uiElement result No description yet available.
function tes3ui.createTooltipMenu(params) end

---Table parameter definitions for `tes3ui.createTooltipMenu`.
--- @class tes3ui.createTooltipMenu.params
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|string|nil *Optional*. The item to create a tooltip for. If not specified, the tooltip will be empty.
--- @field itemData tes3itemData? *Optional*. The item data for the item.
--- @field spell tes3spell? *Optional*. The spell to create a tooltip for.
--- @field skill tes3skill? *Optional*. The skill to create a tooltip for.

--- Requests menu mode be activated on a menu with a given id.
--- @param id string|number No description yet available.
--- @return boolean result No description yet available.
function tes3ui.enterMenuMode(id) end

--- Locates a help layer menu through its id. Help layer menus include notifications and tooltips that are always above the rest of the interface. The game realizes this using a separate menu root and set of functions.
--- @param id string|number No description yet available.
--- @return tes3uiElement result No description yet available.
function tes3ui.findHelpLayerMenu(id) end

--- Locates a top-level menu through its id.
--- @param id string|number The ID of the menu to locate.
--- @return tes3uiElement? result No description yet available.
function tes3ui.findMenu(id) end

--- Forces the game to update the inventory tile GUI elements. Unlike tes3ui.updateInventoryTiles, this will force-resync the player's inventory to the GUI, rather than updating what is already in the GUI system.
function tes3ui.forcePlayerInventoryUpdate() end

--- Gets the reference currently selected by the console, or nil if nothing is selected.
--- @return tes3reference|nil result No description yet available.
function tes3ui.getConsoleReference() end

--- Determines what sort of search is being done when performing an inventory selection, e.g. "alembic" or "ingredient" or "soulGemFilled".
--- @return string result No description yet available.
function tes3ui.getInventorySelectType() end

--- Returns the top-most, active menu.
--- @return tes3uiElement result No description yet available.
function tes3ui.getMenuOnTop() end

--- Gets a standard palette color. Returns an array containing the RGB color values, in the range [0.0, 1.0]. The palette colors are loaded from morrowind.ini settings, so you should only access them after Morrowind is initialized.
--- 
--- ![Palette colors](https://raw.githubusercontent.com/MWSE/MWSE/master/docs/source/assets/images/ui%20palletes.png)
--- 
--- *Above: All the palette colors in-game with default settings. Note that some entries are entirely black. In order of appearance, those are backgroundColor, blackColor, and journalTopicColor.*
--- 
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/apis/tes3ui/#tes3uigetpalette).
--- @param name tes3.palette The name of the palette color. Maps to values in [`tes3.palette`](https://mwse.github.io/MWSE/references/palettes/) enumeration.
--- @return number[] palette An array containing the RGB color values, in the range [0.0, 1.0].
function tes3ui.getPalette(name) end

--- Returns the mobile actor currently providing services, or the actor the player is talking to.
--- @return tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer result No description yet available.
function tes3ui.getServiceActor() end

--- Returns the UI scale, set in MGE.
--- @return number scale The UI scale value set from MGE.
function tes3ui.getViewportScale() end

--- Returns both the viewport width and the viewport height. Note that this value is not necessarily the real resolution of the screen. For that value, see the [`same-named function`](https://mwse.github.io/MWSE/apis/tes3/#tes3getviewportsize) in the tes3 namespace. To get the scale used, check `getViewportScale`.
--- @return number width The scaled width of the viewport.
--- @return number height The scaled height of the viewport.
function tes3ui.getViewportSize() end

--- Requests menu mode be deactivated on a menu with a given id.
--- @return boolean result No description yet available.
function tes3ui.leaveMenuMode() end

--- Logs a message to the console. The message accepts formatting and additional parameters matching string.format's usage.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/apis/tes3ui/#tes3uilog).
--- @param message string No description yet available.
--- @param ... any? *Optional*. Formatting arguments. These are passed to `string.format`.
function tes3ui.log(message, ...) end

--- Logs a message to the console. Consider using `tes3ui.log` instead of this function if you do not need to make use of the `isCommand` parameter.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/apis/tes3ui/#tes3uilogtoconsole).
--- @param text string No description yet available.
--- @param isCommand boolean? *Default*: `false`. Passing `true` will make the text in the console selectable by using up arrow key. If it is a valid command, then pressing enter will call it.
function tes3ui.logToConsole(text, isCommand) end

--- 
--- @param id tes3uiProperty|integer No description yet available.
--- @return string executed No description yet available.
function tes3ui.lookupID(id) end

--- Checks if the game is in menu mode.
--- @return boolean result No description yet available.
function tes3ui.menuMode() end

--- Brings a menu forward to be the top-most menu, firing any associated front-related events. The desired element must be a top-level menu.
--- @param menu string|number|tes3uiElement The menu to bring to the front.
function tes3ui.moveMenuToFront(menu) end

--- Causes the tooltip to be redisplayed. This will not use a configured delay. This will not function if the help menu does not currently exist, or if it is not currently visible.
function tes3ui.refreshTooltip() end

--- Registers a UI element name, returning a UI_ID. Once a property is registered, this function always returns the same UI_ID. These UI_IDs are used by the API to locate elements that may not exist (a weak reference), instead of by element name.
--- 
--- The registry namespace is shared between Property and UI_ID. It is advisable to use a namespace prefix to avoid collisions with other mods.
--- @param s string No description yet available.
--- @return integer result No description yet available.
function tes3ui.registerID(s) end

--- Registers a property name, returning a Property. Once a property is registered, this function always returns the same Property.
--- 
--- The registry namespace is shared between Property and UI_ID. It is advisable to use a namespace prefix to avoid collisions with other mods.
--- @param s string No description yet available.
--- @return number result No description yet available.
function tes3ui.registerProperty(s) end

--- Sets the reference currently selected by the console, or deselects if passed `nil`.
--- @param reference tes3reference|nil No description yet available.
function tes3ui.setConsoleReference(reference) end

--- Displays the book menu with arbitrary text. Paging is automatically handled. It needs to follow [book text conventions](https://mwse.github.io/MWSE/references/general/books/) as in the Construction Set. In essence, it uses HTML syntax. Important: every book needs to end with a `<BR>` statement to be displayed properly. See [`bookGetText`](https://mwse.github.io/MWSE/events/bookGetText/#examples) for an example of properly formatted book text.
--- @param text string No description yet available.
function tes3ui.showBookMenu(text) end

--- This function creates a dialogue message. The message can have three styles. The style `2` makes a selectable text. That way by calling this function multiple time you can create a selection of responses.
--- @param params tes3ui.showDialogueMessage.params This table accepts the following values:
--- 
--- `text`: string? — *Default*: ``. The text of the shown message.
--- 
--- `style`: number? — *Default*: `0`. This argument controls the text color of the message. Value `0` makes the message text the same color as the text in the dialogue window. Value `1` makes the text white, and also print a newline after the message. Value `2` turns the message into a selectable text inside the dialogue window. Value `3` looks the same as `1` but there isn't a newline after each message. Value `4` is the same as value `1`. All the other values work as `0`.
--- 
--- `answerIndex`: number? — *Default*: `0`. This number can be used later to identify which response was selected.
function tes3ui.showDialogueMessage(params) end

---Table parameter definitions for `tes3ui.showDialogueMessage`.
--- @class tes3ui.showDialogueMessage.params
--- @field text string? *Default*: ``. The text of the shown message.
--- @field style number? *Default*: `0`. This argument controls the text color of the message. Value `0` makes the message text the same color as the text in the dialogue window. Value `1` makes the text white, and also print a newline after the message. Value `2` turns the message into a selectable text inside the dialogue window. Value `3` looks the same as `1` but there isn't a newline after each message. Value `4` is the same as value `1`. All the other values work as `0`.
--- @field answerIndex number? *Default*: `0`. This number can be used later to identify which response was selected.

--- This function opens the inventory select menu which lets the player select items from an inventory. These items can be selected from any actor's inventory and can be filtered with the `filter` callback. The selected item can be retrieved in the function assigned to `callback`.
---
--- [Examples available in online documentation](https://mwse.github.io/MWSE/apis/tes3ui/#tes3uishowinventoryselectmenu).
--- @param params tes3ui.showInventorySelectMenu.params This table accepts the following values:
--- 
--- `reference`: tes3reference? — *Default*: `tes3player`. The reference of a `tes3actor` whose inventory will be used.
--- 
--- `title`: string — The text used for the title of the inventory select menu.
--- 
--- `leaveMenuMode`: boolean? — *Optional*. Determines if menu mode should be exited after closing the inventory select menu. By default, it will be in the state it was in before this function was called.
--- 
--- `noResultsText`: string? — *Optional*. The text used for the message that gets shown to the player if no items have been found in the inventory. The default text is equivalent to the `sInventorySelectNoItems` GMST value, unless `"ingredients"` or `"soulgemFilled"` has been assigned to `filter`, in which case the default text is equivalent to either the `sInventorySelectNoIngredients` or `sInventorySelectNoSoul` GMST value respectively.
--- 
--- `noResultsCallback`: function? — *Optional*. A function which is called when no items have been found in the inventory, right before the message containing `noResultsText` is shown.
--- 
--- `filter`: string|nil|fun(params: tes3ui.showInventorySelectMenu.filterParams): boolean — *Optional*. This determines which items should be shown in the inventory select menu. Accepts either a string or a function.
--- --- 
--- --- 		If assigning a string, the available values are present in [`tes3.inventorySelectFilter`](https://mwse.github.io/MWSE/references/inventory-select-filters/) namespace. The available filters are:
--- --- 
--- --- 		- `alembic`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.alembic` will be shown.
--- --- 		- `calcinator`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.calcinator` will be shown.
--- --- 		- `enchanted`: Only non-enchanted items will be shown. That's because that filter is usually used in the enchanting menu to select items viable for enchanting.
--- --- 		- `ingredients`: Only [tes3ingredient](https://mwse.github.io/MWSE/types/tes3ingredient/) items will be shown.
--- --- 		- `mortar`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.mortarAndPestle` will be shown.
--- --- 		- `quickUse`: Only items that can be assigned as quick keys will be shown.
--- --- 		- `retort`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.retort` will be shown.
--- --- 		- `soulgemFilled`: Only filled soulgems will be shown.
--- --- 
--- --- 		If assigning a custom function it will be called when determining if an item should be added to the inventory select menu. Returning `true` from this function will add the item to the inventory select menu, whereas returning `false` will prevent it from being added.
--- 
--- `callback`: nil|fun(params: tes3ui.showInventorySelectMenu.callbackParams) — *Optional*. A function which will be called once the inventory select menu has been closed, including when no item has been selected.
function tes3ui.showInventorySelectMenu(params) end

---Table parameter definitions for `tes3ui.showInventorySelectMenu`.
--- @class tes3ui.showInventorySelectMenu.params
--- @field reference tes3reference? *Default*: `tes3player`. The reference of a `tes3actor` whose inventory will be used.
--- @field title string The text used for the title of the inventory select menu.
--- @field leaveMenuMode boolean? *Optional*. Determines if menu mode should be exited after closing the inventory select menu. By default, it will be in the state it was in before this function was called.
--- @field noResultsText string? *Optional*. The text used for the message that gets shown to the player if no items have been found in the inventory. The default text is equivalent to the `sInventorySelectNoItems` GMST value, unless `"ingredients"` or `"soulgemFilled"` has been assigned to `filter`, in which case the default text is equivalent to either the `sInventorySelectNoIngredients` or `sInventorySelectNoSoul` GMST value respectively.
--- @field noResultsCallback function? *Optional*. A function which is called when no items have been found in the inventory, right before the message containing `noResultsText` is shown.
--- @field filter string|nil|fun(params: tes3ui.showInventorySelectMenu.filterParams): boolean *Optional*. This determines which items should be shown in the inventory select menu. Accepts either a string or a function.
--- 
--- 		If assigning a string, the available values are present in [`tes3.inventorySelectFilter`](https://mwse.github.io/MWSE/references/inventory-select-filters/) namespace. The available filters are:
--- 
--- 		- `alembic`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.alembic` will be shown.
--- 		- `calcinator`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.calcinator` will be shown.
--- 		- `enchanted`: Only non-enchanted items will be shown. That's because that filter is usually used in the enchanting menu to select items viable for enchanting.
--- 		- `ingredients`: Only [tes3ingredient](https://mwse.github.io/MWSE/types/tes3ingredient/) items will be shown.
--- 		- `mortar`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.mortarAndPestle` will be shown.
--- 		- `quickUse`: Only items that can be assigned as quick keys will be shown.
--- 		- `retort`: Only [tes3apparatus](https://mwse.github.io/MWSE/types/tes3apparatus/) items of type `tes3.apparatusType.retort` will be shown.
--- 		- `soulgemFilled`: Only filled soulgems will be shown.
--- 
--- 		If assigning a custom function it will be called when determining if an item should be added to the inventory select menu. Returning `true` from this function will add the item to the inventory select menu, whereas returning `false` will prevent it from being added.
--- @field callback nil|fun(params: tes3ui.showInventorySelectMenu.callbackParams) *Optional*. A function which will be called once the inventory select menu has been closed, including when no item has been selected.

--- Opens the journal menu. This can return false if the player hasn't gone through character generation, or if the journal was already open.
--- @return boolean wasShown No description yet available.
function tes3ui.showJournal() end

--- This function opens the magic select menu, which lets the player select a spell or enchanted item. This is originally used by the quick key menu. The spells or enchanted items are taken from the player's spell list and inventory. The selected spell or item can be retrieved in the function assigned to `callback`.
--- @param params tes3ui.showMagicSelectMenu.params This table accepts the following values:
--- 
--- `title`: string — The text used for the title of the magic select menu.
--- 
--- `selectSpells`: boolean? — *Default*: `true`. If spells are included in the selection list.
--- 
--- `selectPowers`: boolean? — *Default*: `true`. If powers are included in the selection list.
--- 
--- `selectEnchanted`: boolean? — *Default*: `true`. If enchanted items are included in the selection list.
--- 
--- `callback`: nil|fun(params: tes3ui.showMagicSelectMenu.callbackParams) — *Optional*. A function which will be called once the magic select menu has been closed, including when no item or spell has been selected. A table `callbackParams` will be passed to this function.
--- --- 		- `callbackParams` (table)
--- --- 			- `spell` ([tes3spell](https://mwse.github.io/MWSE/types/tes3spell/)): The spell or power that has been selected. Can be `nil`.
--- --- 			- `item` ([tes3item](https://mwse.github.io/MWSE/types/tes3item/)): The enchanted item that has been selected. The actual magic will be `item.enchantment`. Can be `nil`.
--- --- 			- `itemData` ([tes3itemData](https://mwse.github.io/MWSE/types/tes3itemData/)): The item data of the enchanted item that has been selected. Fully recharged items may not have itemData. Can be `nil`.
--- --- 
function tes3ui.showMagicSelectMenu(params) end

---Table parameter definitions for `tes3ui.showMagicSelectMenu`.
--- @class tes3ui.showMagicSelectMenu.params
--- @field title string The text used for the title of the magic select menu.
--- @field selectSpells boolean? *Default*: `true`. If spells are included in the selection list.
--- @field selectPowers boolean? *Default*: `true`. If powers are included in the selection list.
--- @field selectEnchanted boolean? *Default*: `true`. If enchanted items are included in the selection list.
--- @field callback nil|fun(params: tes3ui.showMagicSelectMenu.callbackParams) *Optional*. A function which will be called once the magic select menu has been closed, including when no item or spell has been selected. A table `callbackParams` will be passed to this function.
--- 		- `callbackParams` (table)
--- 			- `spell` ([tes3spell](https://mwse.github.io/MWSE/types/tes3spell/)): The spell or power that has been selected. Can be `nil`.
--- 			- `item` ([tes3item](https://mwse.github.io/MWSE/types/tes3item/)): The enchanted item that has been selected. The actual magic will be `item.enchantment`. Can be `nil`.
--- 			- `itemData` ([tes3itemData](https://mwse.github.io/MWSE/types/tes3itemData/)): The item data of the enchanted item that has been selected. Fully recharged items may not have itemData. Can be `nil`.
--- 

--- Displays a message box. This may be a simple toast-style message, or a box with choice buttons.
--- @param params tes3ui.showMessageMenu.params This table accepts the following values:
--- 
--- `id`: string? — *Default*: `MenuMessage`. The menu ID of the message menu.
--- 
--- `leaveMenuMode`: boolean? — *Default*: `true`. Determines if menu mode should be exited after a choice is made. By default it will exit menu mode, for backwards compatibility with existing mods.
--- 
--- `buttons`: tes3ui.showMessageMenu.params.button[] — **Required** The list of buttons.
--- 
--- `callbackParams`: table? — *Optional*. The table of parameters to pass to the callback functions.
--- 
--- `cancels`: boolean? — *Default*: `false`. When set to true, a cancel button is automatically added to the buttom of the list, even when paginated.
--- 
--- `cancelText`: string? — *Default*: `tes3.findGMST(tes3.gmst.sCancel).value`. The text on the cancel button.
--- 
--- `cancelCallback`: function? — *Optional*. The function to call when the user clicks the cancel button.
--- 
--- `header`: string|nil|fun(): string — *Optional*. The optional header displayed above the message. Can also be a function that returns a string.
--- 
--- `message`: string|nil|fun(): string — *Optional*. The message at the top of the messagebox. Can also be a function that returns a string.
--- 
--- `customBlock`: nil|fun(parent: tes3uiElement) — *Optional*. A custom element to be displayed below the header. This function is passed a parent tes3uiElement, which it can modify to add a custom block according to your needs.
--- 
--- `page`: integer? — *Default*: `1`. No description yet available.
--- 
--- `pageSize`: integer? — *Default*: `30`. No description yet available.
function tes3ui.showMessageMenu(params) end

---Table parameter definitions for `tes3ui.showMessageMenu`.
--- @class tes3ui.showMessageMenu.params
--- @field id string? *Default*: `MenuMessage`. The menu ID of the message menu.
--- @field leaveMenuMode boolean? *Default*: `true`. Determines if menu mode should be exited after a choice is made. By default it will exit menu mode, for backwards compatibility with existing mods.
--- @field buttons tes3ui.showMessageMenu.params.button[] **Required** The list of buttons.
--- @field callbackParams table? *Optional*. The table of parameters to pass to the callback functions.
--- @field cancels boolean? *Default*: `false`. When set to true, a cancel button is automatically added to the buttom of the list, even when paginated.
--- @field cancelText string? *Default*: `tes3.findGMST(tes3.gmst.sCancel).value`. The text on the cancel button.
--- @field cancelCallback function? *Optional*. The function to call when the user clicks the cancel button.
--- @field header string|nil|fun(): string *Optional*. The optional header displayed above the message. Can also be a function that returns a string.
--- @field message string|nil|fun(): string *Optional*. The message at the top of the messagebox. Can also be a function that returns a string.
--- @field customBlock nil|fun(parent: tes3uiElement) *Optional*. A custom element to be displayed below the header. This function is passed a parent tes3uiElement, which it can modify to add a custom block according to your needs.
--- @field page integer? *Default*: `1`. No description yet available.
--- @field pageSize integer? *Default*: `30`. No description yet available.

--- Creates a new notify menu with a formatted string. A notify menu is a toast-style display that shows at the bottom of the screen. It will expire after an amount of time, determined by the length of the message and the `fMessageTimePerChar` GMST.
--- @param string string The message to display. If it supports formatting, additional arguments are used.
--- @param ... any? *Optional*. Formatting arguments. These are passed to `string.format`.
--- @return tes3uiElement menu The notify menu created.
function tes3ui.showNotifyMenu(string, ...) end

--- Displays the scroll menu with arbitrary text. It needs to follow [book text conventions](https://mwse.github.io/MWSE/references/general/books/) as in the Construction Set. In essence, it uses HTML syntax. Important: every book needs to end with a `<BR>` statement to be displayed properly. See [`bookGetText`](https://mwse.github.io/MWSE/events/bookGetText/#examples) for an example of properly formatted scroll text.
--- @param text string No description yet available.
function tes3ui.showScrollMenu(text) end

--- 
function tes3ui.stealHelpMenu() end

--- Controls hiding of world object tooltips.
--- @param suppress boolean Turns on suppression if true, immediately hiding any active tooltip and further world object tooltips. Turns off suppression if false.
function tes3ui.suppressTooltip(suppress) end

--- Gets font height metrics for a font.
--- @param params tes3ui.textLayout.getFontHeight.params This table accepts the following values:
--- 
--- `font`: number? — *Default*: `0`. The index of the font.
--- @return number maxGlyphHeight Maximum pixel height of a single line of text.
--- @return number lineHeight Pixel spacing between lines in a paragraph.
function tes3ui.textLayout.getFontHeight(params) end

---Table parameter definitions for `tes3ui.textLayout.getFontHeight`.
--- @class tes3ui.textLayout.getFontHeight.params
--- @field font number? *Default*: `0`. The index of the font.

--- Calculates expected size information for text content.
--- @param params tes3ui.textLayout.getTextExtent.params This table accepts the following values:
--- 
--- `text`: string — The text to use.
--- 
--- `font`: number? — *Default*: `0`. The index of the font.
--- 
--- `firstLineOnly`: boolean? — *Default*: `false`. Only process the first line of the text.
--- @return number width Pixel width of the widest line of the text.
--- @return number height Pixel height of a label containing this text. Includes the extra space and rounding added by the label layout.
--- @return number verticalAdvance The vertical displacement that a following text element would use. It is zero for text without newlines, and increases with each newline.
function tes3ui.textLayout.getTextExtent(params) end

---Table parameter definitions for `tes3ui.textLayout.getTextExtent`.
--- @class tes3ui.textLayout.getTextExtent.params
--- @field text string The text to use.
--- @field font number? *Default*: `0`. The index of the font.
--- @field firstLineOnly boolean? *Default*: `false`. Only process the first line of the text.

--- Performs word wrapping of text.
--- @param params tes3ui.textLayout.wrapText.params This table accepts the following values:
--- 
--- `text`: string — The text to wrap.
--- 
--- `font`: number? — *Default*: `0`. The index of the font.
--- 
--- `maxWidth`: number? — *Default*: `-1`. The wrapping width in pixels.
--- 
--- `ignoreLinkDelimiters`: boolean? — *Default*: `false`. No description yet available.
--- @return string wrappedText The wrapped text, with `\n` as line breaks.
--- @return number lineCount The number of lines in the output wrapped text.
function tes3ui.textLayout.wrapText(params) end

---Table parameter definitions for `tes3ui.textLayout.wrapText`.
--- @class tes3ui.textLayout.wrapText.params
--- @field text string The text to wrap.
--- @field font number? *Default*: `0`. The index of the font.
--- @field maxWidth number? *Default*: `-1`. The wrapping width in pixels.
--- @field ignoreLinkDelimiters boolean? *Default*: `false`. No description yet available.

--- Forces the game to update the barter menu's tile GUI elements.
function tes3ui.updateBarterMenuTiles() end

--- Forces the game to update the contents menu's tile GUI elements.
function tes3ui.updateContentsMenuTiles() end

--- Forces the game to update the dialog disposition GUI element.
function tes3ui.updateDialogDisposition() end

--- Forces the game to update the enchanting menu GUI.
function tes3ui.updateEnchantingMenu() end

--- Tells the game to update the character image in the player's inventory. It will update immediately if the inventory is open, or the next time the inventory is opened otherwise.
function tes3ui.updateInventoryCharacterImage() end

--- Forces the game to update the inventory selection GUI elements.
function tes3ui.updateInventorySelectTiles() end

--- Forces the game to update the inventory tile GUI elements.
function tes3ui.updateInventoryTiles() end

--- Forces the game to update the spellmaking menu GUI.
function tes3ui.updateSpellmakingMenu() end

--- Force-refreshes the stats pane to account for changed values.
function tes3ui.updateStatsPane() end

