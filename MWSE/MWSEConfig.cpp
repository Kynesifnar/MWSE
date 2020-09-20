#include "MWSEConfig.h"

#include "LuaManager.h"

namespace mwse {
	// Declare default values.
	bool Configuration::EnableLegacyLuaMods = true;
	bool Configuration::LogWarningsWithLuaStack = true;
	bool Configuration::KeepAllNetImmerseObjectsAlive = false;

	// Allow default values to be accessed later.
	sol::table defaultConfig;
	sol::table Configuration::getDefaults() {
		return defaultConfig;
	}

	template <typename T>
	constexpr void bindConfig(sol::usertype<Configuration>& usertypeDefinition, const char* key, T& value) {
		usertypeDefinition[key] = sol::var(std::ref(value));
		defaultConfig[key] = value;
	}

	// Let lua muck with all this.
	void Configuration::bindToLua() {
		// Get our lua state.
		auto stateHandle = lua::LuaManager::getInstance().getThreadSafeStateHandle();
		sol::state& state = stateHandle.state;

		defaultConfig = state.create_table();

		// Start our usertype.
		auto usertypeDefinition = state.new_usertype<Configuration>("mwseConfig");
		usertypeDefinition["new"] = sol::no_constructor;
		usertypeDefinition["getDefaults"] = &Configuration::getDefaults;

		// Bind all of our config entries.
		bindConfig(usertypeDefinition, "EnableLegacyLuaMods", Configuration::EnableLegacyLuaMods);
		bindConfig(usertypeDefinition, "LogWarningsWithLuaStack", Configuration::LogWarningsWithLuaStack);
		bindConfig(usertypeDefinition, "KeepAllNetImmerseObjectsAlive", Configuration::KeepAllNetImmerseObjectsAlive);
	}
}
