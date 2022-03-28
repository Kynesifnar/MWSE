--- @meta
--- @diagnostic disable:undefined-doc-name

--- A configuration detailing a quick key.
--- @class tes3quickKey
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon *Read-only*. The raw item bound to the quick key. To change its value, use either the `setItem` or `setMagic` methods.
--- @field itemData tes3itemData *Read-only*. The raw item data bound to the quick key. To change its value, use either the `setItem` or `setMagic` methods.
--- @field spell tes3spell *Read-only*. The raw spell bound to the quick key. To change its value, use the `setMagic` method.
--- @field type number *Read-only*. The type of the quick key, with the numeric value matching [`tes3.quickKeyType`](https://mwse.github.io/MWSE/references/quick-key-types/) constants.
tes3quickKey = {}

--- Unbinds the quick key, removing any data in it.
function tes3quickKey:clear() end

--- Gets the item associated with the given quick key. If the quick key is not marked as an item, this will return `nil`. This is equivalent to fetching the `item` and `itemData` properties, after checking to make sure the `type` is set to item.
--- @return tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|nil source The item bound to the quick key.
--- @return tes3itemData|nil data Any associated item data bound to the quick key
function tes3quickKey:getItem() end

--- Gets the magic associated with the given quick key. If the quick key is not marked as magic, this will return `nil`. This is equivalent to fetching either the `spell` or `item` properties and the `itemData` property, after checking to make sure the `type` is set to magic.
--- @return tes3spell|tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|nil source The castable source bound to the quick key.
--- @return tes3itemData|nil data Any associated item data bound to the quick key
function tes3quickKey:getMagic() end

--- Sets the binding of the quick key to a given item source.
--- @param source tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The item to be bound to the quick key.
--- @param data tes3itemData|nil The optional item data to be paired with the binding.
function tes3quickKey:setItem(source, data) end

--- Sets the binding of the quick key to a given magic source. This must be a spell, or an item with an on-use enchantment.
--- @param source tes3spell|tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon The castable source to be bound to the quick key.
--- @param data tes3itemData|nil If given an item as the source, the optional item data to be paired with the binding.
function tes3quickKey:setMagic(source, data) end

