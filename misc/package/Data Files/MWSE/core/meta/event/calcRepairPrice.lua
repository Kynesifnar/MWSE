-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- This event is called when determining the price of repairing an item. It can be used to override the repair cost.
--- @class calcRepairPriceEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field basePrice number *Read-only*. The price before adjustment.
--- @field item tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon *Read-only*. The item to be repaired.
--- @field itemData tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon *Read-only*. Variable node. The data associated with item. This may be nil.
--- @field mobile tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile actor of the merchant the player is interacting with.
--- @field price number The adjusted price of repairing item.
--- @field reference tes3reference *Read-only*. mobile’s related reference.
