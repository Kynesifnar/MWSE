#include "TES3AnimationGroupLua.h"

#include "LuaManager.h"

#include "TES3AnimationGroup.h"
#include "TES3Sound.h"

#include "NIKeyframeManager.h"

namespace mwse::lua {
	void bindTES3AnimationGroup() {
		// Get our lua state.
		auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
		auto& state = stateHandle.state;

		// Bind TES3::AnimationGroup::SoundGenKey
		{
			// Start our usertype.
			auto usertypeDefinition = state.new_usertype<TES3::AnimationGroup::SoundGenKey>("tes3animationGroupSoundGenKey");
			usertypeDefinition["new"] = sol::no_constructor;

			// Basic property bindings.
			usertypeDefinition["pitch"] = &TES3::AnimationGroup::SoundGenKey::pitch;
			usertypeDefinition["sound"] = &TES3::AnimationGroup::SoundGenKey::sound;
			usertypeDefinition["startFrame"] = &TES3::AnimationGroup::SoundGenKey::startFrame;
			usertypeDefinition["startTime"] = &TES3::AnimationGroup::SoundGenKey::startTime;
			usertypeDefinition["volume"] = &TES3::AnimationGroup::SoundGenKey::volume;
		}

		// Bind TES3::AnimationGroup
		{
			// Start our usertype.
			auto usertypeDefinition = state.new_usertype<TES3::AnimationGroup>("tes3animationGroup");
			usertypeDefinition["new"] = sol::no_constructor;

			// Basic property bindings.
			usertypeDefinition["actionCount"] = sol::readonly_property(&TES3::AnimationGroup::actionCount);
			usertypeDefinition["actionFrames"] = sol::readonly_property(&TES3::AnimationGroup::getActionFrames);
			usertypeDefinition["actionTimings"] = sol::readonly_property(&TES3::AnimationGroup::getActionTimings);
			usertypeDefinition["groupId"] = sol::readonly_property(&TES3::AnimationGroup::groupId);
			usertypeDefinition["nextGroup"] = sol::readonly_property(&TES3::AnimationGroup::nextGroup);
			usertypeDefinition["soundGenCount"] = sol::readonly_property(&TES3::AnimationGroup::soundGenCount);
			usertypeDefinition["soundGenKeys"] = sol::readonly_property(&TES3::AnimationGroup::getSoundGenKeys);
		}

		// Bind TES3::KeyframeDefinition
		{
			// Start our usertype.
			auto usertypeDefinition = state.new_usertype<TES3::KeyframeDefinition>("tes3keyframeDefinition");
			usertypeDefinition["new"] = sol::no_constructor;
			usertypeDefinition[sol::meta_function::to_string] = [](const TES3::KeyframeDefinition* self) {
				return std::string("KeyframeDefinition: ") + self->filename;
			};

			// Basic property binding.
			usertypeDefinition["filename"] = sol::readonly_property(&TES3::KeyframeDefinition::filename);
			usertypeDefinition["sequences"] = sol::readonly_property([](TES3::KeyframeDefinition& kf) { return std::ref(kf.sequences); });
			usertypeDefinition["animationGroups"] = sol::readonly_property(&TES3::KeyframeDefinition::animationGroups);
			usertypeDefinition["groupCount"] = sol::readonly_property(&TES3::KeyframeDefinition::groupCount);
			usertypeDefinition["refCount"] = sol::readonly_property(&TES3::KeyframeDefinition::refCount);
		}
	}
}
