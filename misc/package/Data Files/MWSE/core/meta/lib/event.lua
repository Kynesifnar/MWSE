--- @meta
--- @diagnostic disable:undefined-doc-name

--- The event library helps to instruct mwse to call a given function when a specific action is taken in the game.
--- @class eventlib
--- @field register fun(eventId: string, callback: fun(e: table), options: table)
--- @field register fun(eventId: '"absorbedMagic"', callback: fun(e: absorbedMagicEventData), options: table)
--- @field register fun(eventId: '"activate"', callback: fun(e: activateEventData), options: table)
--- @field register fun(eventId: '"activationTargetChanged"', callback: fun(e: activationTargetChangedEventData), options: table)
--- @field register fun(eventId: '"addSound"', callback: fun(e: addSoundEventData), options: table)
--- @field register fun(eventId: '"addTempSound"', callback: fun(e: addTempSoundEventData), options: table)
--- @field register fun(eventId: '"attack"', callback: fun(e: attackEventData), options: table)
--- @field register fun(eventId: '"attackStart"', callback: fun(e: attackStartEventData), options: table)
--- @field register fun(eventId: '"barterOffer"', callback: fun(e: barterOfferEventData), options: table)
--- @field register fun(eventId: '"bodyPartAssigned"', callback: fun(e: bodyPartAssignedEventData), options: table)
--- @field register fun(eventId: '"bodyPartsUpdated"', callback: fun(e: bodyPartsUpdatedEventData), options: table)
--- @field register fun(eventId: '"bookGetText"', callback: fun(e: bookGetTextEventData), options: table)
--- @field register fun(eventId: '"buttonPressed"', callback: fun(e: buttonPressedEventData), options: table)
--- @field register fun(eventId: '"calcArmorPieceHit"', callback: fun(e: calcArmorPieceHitEventData), options: table)
--- @field register fun(eventId: '"calcArmorRating"', callback: fun(e: calcArmorRatingEventData), options: table)
--- @field register fun(eventId: '"calcBarterPrice"', callback: fun(e: calcBarterPriceEventData), options: table)
--- @field register fun(eventId: '"calcFlySpeed"', callback: fun(e: calcFlySpeedEventData), options: table)
--- @field register fun(eventId: '"calcHitChance"', callback: fun(e: calcHitChanceEventData), options: table)
--- @field register fun(eventId: '"calcMoveSpeed"', callback: fun(e: calcMoveSpeedEventData), options: table)
--- @field register fun(eventId: '"calcRepairPrice"', callback: fun(e: calcRepairPriceEventData), options: table)
--- @field register fun(eventId: '"calcRestInterrupt"', callback: fun(e: calcRestInterruptEventData), options: table)
--- @field register fun(eventId: '"calcRunSpeed"', callback: fun(e: calcRunSpeedEventData), options: table)
--- @field register fun(eventId: '"calcSoulValue"', callback: fun(e: calcSoulValueEventData), options: table)
--- @field register fun(eventId: '"calcSpellPrice"', callback: fun(e: calcSpellPriceEventData), options: table)
--- @field register fun(eventId: '"calcSunDamageScalar"', callback: fun(e: calcSunDamageScalarEventData), options: table)
--- @field register fun(eventId: '"calcSwimRunSpeed"', callback: fun(e: calcSwimRunSpeedEventData), options: table)
--- @field register fun(eventId: '"calcSwimSpeed"', callback: fun(e: calcSwimSpeedEventData), options: table)
--- @field register fun(eventId: '"calcTrainingPrice"', callback: fun(e: calcTrainingPriceEventData), options: table)
--- @field register fun(eventId: '"calcTravelPrice"', callback: fun(e: calcTravelPriceEventData), options: table)
--- @field register fun(eventId: '"calcWalkSpeed"', callback: fun(e: calcWalkSpeedEventData), options: table)
--- @field register fun(eventId: '"cellActivated"', callback: fun(e: cellActivatedEventData), options: table)
--- @field register fun(eventId: '"cellChanged"', callback: fun(e: cellChangedEventData), options: table)
--- @field register fun(eventId: '"cellDeactivated"', callback: fun(e: cellDeactivatedEventData), options: table)
--- @field register fun(eventId: '"collideWater"', callback: fun(e: collideWaterEventData), options: table)
--- @field register fun(eventId: '"collision"', callback: fun(e: collisionEventData), options: table)
--- @field register fun(eventId: '"combatStart"', callback: fun(e: combatStartEventData), options: table)
--- @field register fun(eventId: '"combatStarted"', callback: fun(e: combatStartedEventData), options: table)
--- @field register fun(eventId: '"combatStop"', callback: fun(e: combatStopEventData), options: table)
--- @field register fun(eventId: '"combatStopped"', callback: fun(e: combatStoppedEventData), options: table)
--- @field register fun(eventId: '"containerClosed"', callback: fun(e: containerClosedEventData), options: table)
--- @field register fun(eventId: '"convertReferenceToItem"', callback: fun(e: convertReferenceToItemEventData), options: table)
--- @field register fun(eventId: '"crimeWitnessed"', callback: fun(e: crimeWitnessedEventData), options: table)
--- @field register fun(eventId: '"damage"', callback: fun(e: damageEventData), options: table)
--- @field register fun(eventId: '"damageHandToHand"', callback: fun(e: damageHandToHandEventData), options: table)
--- @field register fun(eventId: '"damaged"', callback: fun(e: damagedEventData), options: table)
--- @field register fun(eventId: '"damagedHandToHand"', callback: fun(e: damagedHandToHandEventData), options: table)
--- @field register fun(eventId: '"death"', callback: fun(e: deathEventData), options: table)
--- @field register fun(eventId: '"detectSneak"', callback: fun(e: detectSneakEventData), options: table)
--- @field register fun(eventId: '"determineAction"', callback: fun(e: determineActionEventData), options: table)
--- @field register fun(eventId: '"determinedAction"', callback: fun(e: determinedActionEventData), options: table)
--- @field register fun(eventId: '"enchantChargeUse"', callback: fun(e: enchantChargeUseEventData), options: table)
--- @field register fun(eventId: '"enterFrame"', callback: fun(e: enterFrameEventData), options: table)
--- @field register fun(eventId: '"equip"', callback: fun(e: equipEventData), options: table)
--- @field register fun(eventId: '"equipmentReevaluated"', callback: fun(e: equipmentReevaluatedEventData), options: table)
--- @field register fun(eventId: '"equipped"', callback: fun(e: equippedEventData), options: table)
--- @field register fun(eventId: '"exerciseSkill"', callback: fun(e: exerciseSkillEventData), options: table)
--- @field register fun(eventId: '"filterBarterMenu"', callback: fun(e: filterBarterMenuEventData), options: table)
--- @field register fun(eventId: '"filterContentsMenu"', callback: fun(e: filterContentsMenuEventData), options: table)
--- @field register fun(eventId: '"filterInventory"', callback: fun(e: filterInventoryEventData), options: table)
--- @field register fun(eventId: '"filterInventorySelect"', callback: fun(e: filterInventorySelectEventData), options: table)
--- @field register fun(eventId: '"filterSoulGemTarget"', callback: fun(e: filterSoulGemTargetEventData), options: table)
--- @field register fun(eventId: '"infoFilter"', callback: fun(e: infoFilterEventData), options: table)
--- @field register fun(eventId: '"infoGetText"', callback: fun(e: infoGetTextEventData), options: table)
--- @field register fun(eventId: '"infoLinkResolve"', callback: fun(e: infoLinkResolveEventData), options: table)
--- @field register fun(eventId: '"infoResponse"', callback: fun(e: infoResponseEventData), options: table)
--- @field register fun(eventId: '"initialized"', callback: fun(e: initializedEventData), options: table)
--- @field register fun(eventId: '"isGuard"', callback: fun(e: isGuardEventData), options: table)
--- @field register fun(eventId: '"itemDropped"', callback: fun(e: itemDroppedEventData), options: table)
--- @field register fun(eventId: '"itemTileUpdated"', callback: fun(e: itemTileUpdatedEventData), options: table)
--- @field register fun(eventId: '"journal"', callback: fun(e: journalEventData), options: table)
--- @field register fun(eventId: '"key"', callback: fun(e: keyEventData), options: table)
--- @field register fun(eventId: '"keyDown"', callback: fun(e: keyDownEventData), options: table)
--- @field register fun(eventId: '"keyUp"', callback: fun(e: keyUpEventData), options: table)
--- @field register fun(eventId: '"keyframesLoad"', callback: fun(e: keyframesLoadEventData), options: table)
--- @field register fun(eventId: '"levelUp"', callback: fun(e: levelUpEventData), options: table)
--- @field register fun(eventId: '"leveledCreaturePicked"', callback: fun(e: leveledCreaturePickedEventData), options: table)
--- @field register fun(eventId: '"leveledItemPicked"', callback: fun(e: leveledItemPickedEventData), options: table)
--- @field register fun(eventId: '"load"', callback: fun(e: loadEventData), options: table)
--- @field register fun(eventId: '"loaded"', callback: fun(e: loadedEventData), options: table)
--- @field register fun(eventId: '"lockPick"', callback: fun(e: lockPickEventData), options: table)
--- @field register fun(eventId: '"magicCasted"', callback: fun(e: magicCastedEventData), options: table)
--- @field register fun(eventId: '"magicEffectsResolved"', callback: fun(e: magicEffectsResolvedEventData), options: table)
--- @field register fun(eventId: '"menuEnter"', callback: fun(e: menuEnterEventData), options: table)
--- @field register fun(eventId: '"menuExit"', callback: fun(e: menuExitEventData), options: table)
--- @field register fun(eventId: '"meshLoad"', callback: fun(e: meshLoadEventData), options: table)
--- @field register fun(eventId: '"meshLoaded"', callback: fun(e: meshLoadedEventData), options: table)
--- @field register fun(eventId: '"mobileActivated"', callback: fun(e: mobileActivatedEventData), options: table)
--- @field register fun(eventId: '"mobileDeactivated"', callback: fun(e: mobileDeactivatedEventData), options: table)
--- @field register fun(eventId: '"modConfigReady"', callback: fun(e: modConfigReadyEventData), options: table)
--- @field register fun(eventId: '"mouseAxis"', callback: fun(e: mouseAxisEventData), options: table)
--- @field register fun(eventId: '"mouseButtonDown"', callback: fun(e: mouseButtonDownEventData), options: table)
--- @field register fun(eventId: '"mouseButtonUp"', callback: fun(e: mouseButtonUpEventData), options: table)
--- @field register fun(eventId: '"mouseWheel"', callback: fun(e: mouseWheelEventData), options: table)
--- @field register fun(eventId: '"musicSelectTrack"', callback: fun(e: musicSelectTrackEventData), options: table)
--- @field register fun(eventId: '"objectInvalidated"', callback: fun(e: objectInvalidatedEventData), options: table)
--- @field register fun(eventId: '"playGroup"', callback: fun(e: playGroupEventData), options: table)
--- @field register fun(eventId: '"playItemSound"', callback: fun(e: playItemSoundEventData), options: table)
--- @field register fun(eventId: '"postInfoResponse"', callback: fun(e: postInfoResponseEventData), options: table)
--- @field register fun(eventId: '"potionBrewFailed"', callback: fun(e: potionBrewFailedEventData), options: table)
--- @field register fun(eventId: '"potionBrewSkillCheck"', callback: fun(e: potionBrewSkillCheckEventData), options: table)
--- @field register fun(eventId: '"potionBrewed"', callback: fun(e: potionBrewedEventData), options: table)
--- @field register fun(eventId: '"powerRecharged"', callback: fun(e: powerRechargedEventData), options: table)
--- @field register fun(eventId: '"preLevelUp"', callback: fun(e: preLevelUpEventData), options: table)
--- @field register fun(eventId: '"preventRest"', callback: fun(e: preventRestEventData), options: table)
--- @field register fun(eventId: '"projectileExpire"', callback: fun(e: projectileExpireEventData), options: table)
--- @field register fun(eventId: '"projectileHitActor"', callback: fun(e: projectileHitActorEventData), options: table)
--- @field register fun(eventId: '"projectileHitObject"', callback: fun(e: projectileHitObjectEventData), options: table)
--- @field register fun(eventId: '"projectileHitTerrain"', callback: fun(e: projectileHitTerrainEventData), options: table)
--- @field register fun(eventId: '"referenceActivated"', callback: fun(e: referenceActivatedEventData), options: table)
--- @field register fun(eventId: '"referenceDeactivated"', callback: fun(e: referenceDeactivatedEventData), options: table)
--- @field register fun(eventId: '"referenceSceneNodeCreated"', callback: fun(e: referenceSceneNodeCreatedEventData), options: table)
--- @field register fun(eventId: '"restInterrupt"', callback: fun(e: restInterruptEventData), options: table)
--- @field register fun(eventId: '"save"', callback: fun(e: saveEventData), options: table)
--- @field register fun(eventId: '"saved"', callback: fun(e: savedEventData), options: table)
--- @field register fun(eventId: '"simulate"', callback: fun(e: simulateEventData), options: table)
--- @field register fun(eventId: '"skillRaised"', callback: fun(e: skillRaisedEventData), options: table)
--- @field register fun(eventId: '"soundObjectPlay"', callback: fun(e: soundObjectPlayEventData), options: table)
--- @field register fun(eventId: '"spellCast"', callback: fun(e: spellCastEventData), options: table)
--- @field register fun(eventId: '"spellCasted"', callback: fun(e: spellCastedEventData), options: table)
--- @field register fun(eventId: '"spellCastedFailure"', callback: fun(e: spellCastedFailureEventData), options: table)
--- @field register fun(eventId: '"spellCreated"', callback: fun(e: spellCreatedEventData), options: table)
--- @field register fun(eventId: '"spellMagickaUse"', callback: fun(e: spellMagickaUseEventData), options: table)
--- @field register fun(eventId: '"spellResist"', callback: fun(e: spellResistEventData), options: table)
--- @field register fun(eventId: '"spellTick"', callback: fun(e: spellTickEventData), options: table)
--- @field register fun(eventId: '"topicAdded"', callback: fun(e: topicAddedEventData), options: table)
--- @field register fun(eventId: '"trapDisarm"', callback: fun(e: trapDisarmEventData), options: table)
--- @field register fun(eventId: '"uiActivated"', callback: fun(e: uiActivatedEventData), options: table)
--- @field register fun(eventId: '"uiEvent"', callback: fun(e: uiEventEventData), options: table)
--- @field register fun(eventId: '"uiObjectTooltip"', callback: fun(e: uiObjectTooltipEventData), options: table)
--- @field register fun(eventId: '"uiPreEvent"', callback: fun(e: uiPreEventEventData), options: table)
--- @field register fun(eventId: '"uiRefreshed"', callback: fun(e: uiRefreshedEventData), options: table)
--- @field register fun(eventId: '"uiShowRestMenu"', callback: fun(e: uiShowRestMenuEventData), options: table)
--- @field register fun(eventId: '"uiSpellTooltip"', callback: fun(e: uiSpellTooltipEventData), options: table)
--- @field register fun(eventId: '"unequipped"', callback: fun(e: unequippedEventData), options: table)
--- @field register fun(eventId: '"weaponReadied"', callback: fun(e: weaponReadiedEventData), options: table)
--- @field register fun(eventId: '"weaponUnreadied"', callback: fun(e: weaponUnreadiedEventData), options: table)
--- @field register fun(eventId: '"weatherChangedImmediate"', callback: fun(e: weatherChangedImmediateEventData), options: table)
--- @field register fun(eventId: '"weatherCycled"', callback: fun(e: weatherCycledEventData), options: table)
--- @field register fun(eventId: '"weatherTransitionFinished"', callback: fun(e: weatherTransitionFinishedEventData), options: table)
--- @field register fun(eventId: '"weatherTransitionImmediate"', callback: fun(e: weatherTransitionImmediateEventData), options: table)
--- @field register fun(eventId: '"weatherTransitionStarted"', callback: fun(e: weatherTransitionStartedEventData), options: table)
event = {}

--- Removes all callbacks registered for a given event.
--- @param eventId string No description yet available.
--- @param options table *Optional*. No description yet available.
function event.clear(eventId, options) end

--- Registers a function to be called when an event is raised.
--- @param eventId string No description yet available.
--- @param callback function No description yet available.
--- @param options table *Optional*. No description yet available.
function event.register(eventId, callback, options) end

--- Triggers an event. This can be used to trigger custom events with specific data.
--- @param eventId string No description yet available.
--- @param payload table *Optional*. No description yet available.
--- @param options table *Optional*. No description yet available.
function event.trigger(eventId, payload, options) end

--- Unregisters a function previously registered for an event with `event.register()`.
--- @param eventId string No description yet available.
--- @param callback function No description yet available.
--- @param options table *Optional*. No description yet available.
function event.unregister(eventId, callback, options) end

