#include "LuaBodyPartsUpdatedEvent.h"

#include "LuaManager.h"
#include "LuaUtil.h"

#include "TES3MobileActor.h"
#include "TES3Reference.h"

namespace mwse::lua::event {
	BodyPartsUpdatedEvent::BodyPartsUpdatedEvent(TES3::Reference* reference, TES3::MobileActor* actor) :
		GenericEvent("bodyPartsUpdated"),
		m_Reference(reference),
		m_MobileActor(actor)
	{

	}

	sol::table BodyPartsUpdatedEvent::createEventTable() {
		auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
		sol::table eventData = stateHandle.state.create_table();

		eventData["reference"] = m_Reference;
		eventData["mobile"] = m_MobileActor;

		return eventData;
	}
}
