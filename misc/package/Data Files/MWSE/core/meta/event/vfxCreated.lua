--- @meta
--- @diagnostic disable:undefined-doc-name

--- The vfxCreated event fires when a managed visual effect is created by the game engine or through `tes3.createVisualEffect`.
--- @class vfxCreatedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field context string *Read-only*. Context for what type of VFX this was created at. For example, if the VFX was created at a position the value will be `tes3.vfxContext.position`, while an effect created onto the caster's hands will be created with the context of a `tes3.vfxContext.niNode`. This maps to the values in `tes3.vfxContext`.
--- @field vfx tes3vfx *Read-only*. The created visual effect.
