-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- @diagnostic disable:undefined-doc-name

--- A structure that holds statistical information relating to the current and base values of a skill statistic.
--- 
--- Morrowind statistics do not track buffs and debuffs separately. Instead, total buff or debuff values can be calculated with the [`tes3.getEffectMagnitude()`](https://mwse.github.io/MWSE/apis/tes3/#tes3geteffectmagnitude) function, using the appropriate buff or debuff magic effect for the statistic.
--- @class tes3statisticSkill : tes3statistic
--- @field base number The base value of the skill statistic. Damage, and fortify spell effects don't change base skill value.
--- @field baseRaw number The base value of the skill statistic, as stored in memory. Prefer to use `.base` unless you know what you're doing.
--- @field current number The current value of the skill statistic.
--- @field currentRaw number The current value of the skill statistic, as stored in memory. Prefer to use `.current` unless you know what you're doing.
--- @field normalized number The normalized value of the skill statistic.
--- @field type number The type of the skill, as assigned by the actor's class. Maps to values in [`tes3.skillType`](https://mwse.github.io/MWSE/references/skill-types/) namespace.
tes3statisticSkill = {}

