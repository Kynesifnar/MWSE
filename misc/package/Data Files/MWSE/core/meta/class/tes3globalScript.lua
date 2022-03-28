--- @meta
--- @diagnostic disable:undefined-doc-name

--- A global script object. Any script (in mwscript) that is not attached to any object is a global script.
--- @class tes3globalScript
--- @field context tes3scriptContext *Read-only*. A special context used for getting and setting script's variables.
--- @field reference tes3reference|nil *Read-only*. A reference this global script is tied to, if any. If the reference field isn't empty, then the global script in question is a Targeted script (a name given to it in Morrowind Scripting for Dummies).
--- @field script tes3script *Read-only*. Access to global script object's associated script.
tes3globalScript = {}

