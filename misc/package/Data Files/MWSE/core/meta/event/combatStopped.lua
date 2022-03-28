--- @meta
--- @diagnostic disable:undefined-doc-name

--- The **combatStopped** event occurs after an actor has left combat. This event is preceded by the [combatStop](https://mwse.github.io/MWSE/events/combatStop) event.
--- @class combatStoppedEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field actor tes3mobileActor|tes3mobileCreature|tes3mobileNPC|tes3mobilePlayer *Read-only*. The mobile actor who has left combat.
