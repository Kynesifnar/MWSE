#include "LuaFilterSoulGemTargetEvent.h"

#include "LuaManager.h"
#include "LuaUtil.h"

#include "TES3Misc.h"
#include "TES3MobileActor.h"
#include "TES3Reference.h"

namespace mwse {
	namespace lua {
		namespace event {
			FilterSoulGemTargetEvent::FilterSoulGemTargetEvent(TES3::Misc * soulGem, TES3::MobileActor * target) :
				ObjectFilteredEvent("filterSoulGemTarget", soulGem),
				m_SoulGem(soulGem),
				m_Target(target)
			{

			}

			sol::table FilterSoulGemTargetEvent::createEventTable() {
				auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
				sol::state& state = stateHandle.state;
				sol::table eventData = state.create_table();

				eventData["soulGem"] = makeLuaObject(m_SoulGem);

				eventData["mobile"] = makeLuaObject(m_Target);
				eventData["reference"] = makeLuaObject(m_Target->reference);

				return eventData;
			}
		}
	}
}
