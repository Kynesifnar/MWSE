--- @meta
--- @diagnostic disable:undefined-doc-name

--- A mobile object for a creature.
--- @class tes3mobileCreature : tes3mobileActor, tes3mobileObject
--- @field combat tes3statistic|tes3statisticSkill *Read-only*. Direct access to the creature's combat statistic. This is a creature-specific generalization of skills, where this statistic is used in place of all combat skills. To get an individual skill value by skill ID, see the `getSkillValue` or `getSkillStatistic` methods.
--- @field flySpeed number *Read-only*. The calculated fly movement speed.
--- @field magic tes3statistic|tes3statisticSkill *Read-only*. Direct access to the creature's magic statistic. This is a creature-specific generalization of skills, where this statistic is used in place of all magic skills. To get an individual skill value by skill ID, see the `getSkillValue` or `getSkillStatistic` methods.
--- @field moveSpeed number *Read-only*. The calculated base movement speed.
--- @field object tes3creatureInstance *Read-only*. The actor object that maps to this mobile.
--- @field runSpeed number *Read-only*. The calculated run movement speed.
--- @field skills table *Read-only*. An array-style table with access to the three creature skill statistics.
--- @field stealth tes3statistic|tes3statisticSkill *Read-only*. Direct access to the creature's stealth statistic. This is a creature-specific generalization of skills, where this statistic is used in place of all stealth skills. To get an individual skill value by skill ID, see the `getSkillValue` or `getSkillStatistic` methods.
--- @field swimRunSpeed number *Read-only*. The calculated swim movement speed while running.
--- @field swimSpeed number *Read-only*. The calculated swim movement speed.
--- @field walkSpeed number *Read-only*. The calculated walk movement speed.
tes3mobileCreature = {}

