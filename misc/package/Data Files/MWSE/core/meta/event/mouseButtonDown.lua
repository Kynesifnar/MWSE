-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- This event fires when a button on the mouse is pressed.
--- @class mouseButtonDownEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field button number *Read-only*. The button index that was pressed.
--- @field isAltDown number *Read-only*. True if alt  is held.
--- @field isControlDown number *Read-only*. True if control is held.
--- @field isSuperDown number *Read-only*. True if super (Windows key) is held.
