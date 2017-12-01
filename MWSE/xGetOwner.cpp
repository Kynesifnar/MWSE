/************************************************************************
	
	xGetOwner.cpp - Copyright (c) 2008 The MWSE Project
	http://www.sourceforge.net/projects/mwse

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

**************************************************************************/

#include "VMExecuteInterface.h"
#include "Stack.h"
#include "InstructionInterface.h"
#include "TES3Util.h"

using namespace mwse;

namespace mwse
{
	class xGetOwner : mwse::InstructionInterface_t
	{
	public:
		xGetOwner();
		virtual float execute(VMExecuteInterface &virtualMachine);
		virtual void loadParameters(VMExecuteInterface &virtualMachine);
	};

	static const mwse::mwOpcode_t xGetOwnerOpcode = 0x3F62;
	static xGetOwner xGetOwnerInstance;

	xGetOwner::xGetOwner() : mwse::InstructionInterface_t(xGetOwnerOpcode) {}

	void xGetOwner::loadParameters(mwse::VMExecuteInterface &virtualMachine) {}

	float xGetOwner::execute(mwse::VMExecuteInterface &virtualMachine)
	{
		// Get reference.
		REFRRecord_t* reference = virtualMachine.getReference();
		if (reference == NULL) {
			mwse::log::getLog() << "xGetOwner: No reference provided." << std::endl;
			mwse::Stack::getInstance().pushLong(0);
			return 0.0f;
		}

		mwseString_t owner;

		// Get the attached varnode.
		mwOwnerInfoNode_t* ownerInfo = reinterpret_cast<mwOwnerInfoNode_t*>(tes3::getAttachedVarHolderNode(reference));
		if (ownerInfo) {
			if (ownerInfo->owner && ownerInfo->owner->objectId) {
				owner = ownerInfo->owner->objectId;
			}
		}
		else {
			mwse::log::getLog() << "xGetOwner: Could not obtain attached VARNODE." << std::endl;
		}

		mwse::Stack::getInstance().pushString(owner);

		return 0.0f;
	}
}