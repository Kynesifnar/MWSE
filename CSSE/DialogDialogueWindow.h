#pragma once

#include "CSDefines.h"

#include "MemoryUtil.h"

namespace se::cs::dialog::dialogue_window {
	constexpr UINT DIALOG_ID = 151;

	// Default IDs.
	constexpr UINT CONTROL_ID_TOPIC_TABS = 1111;
	constexpr UINT CONTROL_ID_TOPIC_LIST = 1448;
	constexpr UINT CONTROL_ID_INFO_LIST = 1449;
	constexpr UINT CONTROL_ID_CURRENT_TEXT = 1002;
	constexpr UINT CONTROL_ID_CURRENT_RESULT_TEXT = 1444;
	constexpr UINT CONTROL_ID_UPDATE_HYPERLINKS_BUTTON = 1589;
	constexpr UINT CONTROL_ID_UPDATE_ALL_HYPERLINKS_BUTTON = 1590;
	constexpr UINT CONTROL_ID_UPDATE_ERROR_CHECK_RESULTS_BUTTON = 1591;
	constexpr UINT CONTROL_ID_UPDATE_SOUND_FILENAME_BUTTON = 1451;
	constexpr UINT CONTROL_ID_UPDATE_FILTER_FOR_COMBO = 1020;
	constexpr UINT CONTROL_ID_CONDITION_ID_COMBO = 1000;
	constexpr UINT CONTROL_ID_CONDITION_RACE_COMBO = 1083;
	constexpr UINT CONTROL_ID_CONDITION_SEX_COMBO = 1084;
	constexpr UINT CONTROL_ID_CONDITION_CLASS_COMBO = 1158;
	constexpr UINT CONTROL_ID_CONDITION_FACTION_COMBO = 1168;
	constexpr UINT CONTROL_ID_CONDITION_RANK_COMBO = 1169;
	constexpr UINT CONTROL_ID_CONDITION_CELL_COMBO = 1066;
	constexpr UINT CONTROL_ID_CONDITION_PCFACTION_COMBO = 1170;
	constexpr UINT CONTROL_ID_CONDITION_PCRANK_COMBO = 1171;
	constexpr UINT CONTROL_ID_CONDITION_DISPOSITION_OR_JOURNAL_INDEX = 1452;
	constexpr UINT CONTROL_ID_CONDITION_JOURNAL_QUEST_NAME_CHECKBOX = 1006;
	constexpr UINT CONTROL_ID_CONDITION_JOURNAL_FINISHED_CHECKBOX = 1007;
	constexpr UINT CONTROL_ID_CONDITION_JOURNAL_RESTART_CHECKBOX = 1008;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION1_TYPE_COMBO = 1646;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION1_VARIABLE_COMBO = 1652;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION1_CONDITION_COMBO = 1658;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION1_VALUE_EDIT = 1664;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION2_TYPE_COMBO = 1647;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION2_VARIABLE_COMBO = 1653;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION2_CONDITION_COMBO = 1659;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION2_VALUE_EDIT = 1665;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION3_TYPE_COMBO = 1648;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION3_VARIABLE_COMBO = 1654;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION3_CONDITION_COMBO = 1660;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION3_VALUE_EDIT = 1666;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION4_TYPE_COMBO = 1649;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION4_VARIABLE_COMBO = 1655;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION4_CONDITION_COMBO = 1661;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION4_VALUE_EDIT = 1667;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION5_TYPE_COMBO = 1650;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION5_VARIABLE_COMBO = 1656;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION5_CONDITION_COMBO = 1662;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION5_VALUE_EDIT = 1668;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION6_TYPE_COMBO = 1651;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION6_VARIABLE_COMBO = 1657;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION6_CONDITION_COMBO = 1663;
	constexpr UINT CONTROL_ID_CONDITION_FUNCTION6_VALUE_EDIT = 1669;
	constexpr UINT CONTROL_ID_SHARED_BY_LIST = 1021;
	constexpr UINT CONTROL_ID_UPDATE_SHARED_BY_BUTTON = 1645;

	// Global variables
	using ghWnd = memory::ExternalGlobal<HWND, 0x6CE9A0>;

	struct DialogueWindowData {
		int unknown_0x0;
		int unknown_0x4;
		bool unknown_0x8;
		Dialogue* currentDialogue;
		DialogueInfo* currentInfo;
		int unknown_0x14;
		BaseObject* currentFilterObject;
		HMENU menuInfoPopup;
		HMENU menuInfoPopupNew;
		HMENU menuTopicPopup;
		HMENU menuTopicPopupNew;
		int unknown_0x2C;
		bool unknown_0x30;
	};
	static_assert(sizeof(DialogueWindowData) == 0x34, "DialogueWindowData failed size validation");

	HWND createOrFocus(Actor* filter = nullptr);

	bool focusDialogue(Dialogue* dialogue, DialogueInfo* info = nullptr);

	void installPatches();
}
