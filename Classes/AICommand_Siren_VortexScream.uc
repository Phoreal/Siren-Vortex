class AICommand_Siren_VortexScream extends AICommand_SpecialMove
    within KFAIController_ZedSiren
    config(AI);

/*********************************************************************************************
* Initialization
********************************************************************************************* */

static function bool VortexScream(KFAIController_ZedSiren AI)
{
    local AICommand_Siren_VortexScream Cmd;

    if (AI != None)
    {
        Cmd = new(AI) Default.Class;
        if (Cmd != None)
        {
            AI.PushCommand(Cmd);
            return TRUE;
        }
    }

    return false;
}

function Popped()
{
	super.Popped();
	EnableMeleeRangeEventProbing();
}

DefaultProperties
{
    bShouldCheckSpecialMove=true
	bAllowedToAttack=false
	bIgnoreStepAside=true
	SpecialMove=SM_VortexScream'
}