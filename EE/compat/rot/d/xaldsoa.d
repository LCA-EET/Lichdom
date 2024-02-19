//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("Driz2")
		!General("Driz2", UNDEAD)
		LevelGT("Driz2", 11)
	~
	THEN REPLY @0 /*~(Choose Drizzt.)~*/
	EXTERN DRIZ2J XA_LD_ChooseDrizzt
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("Driz2")
		!General("Driz2", UNDEAD)
		LevelGT("Driz2", 11)
	~
	THEN REPLY @0 /*~(Choose Drizzt.)~*/
	EXTERN DRIZ2J XA_LD_ChooseDrizzt
END
//}

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_DRIZ2J_75
	== DRIZ2J
	IF ~
		IsValidForPartyDialogue("Driz2")
	~
	@2 /*~Whatever your intentions are, <CHARNAME>, do you -truly- want to be remembered for ages as one who lost <PRO_HISHER> mind and sought lichdom?  Is there -truly- no better way?~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_DRIZ2J_76
	== DRIZ2J
	IF ~
		IsValidForPartyDialogue("Driz2")
	~
	@3 /*~<CHARNAME>, what you intend for good may twist you into the greatest threat to the realms yet!  I am too familiar with wicked ones who think they are still righteous!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_DRIZ2J_77
	== DRIZ2J
	IF ~
		IsValidForPartyDialogue("Driz2")
	~
	@4 /*~<CHARNAME>, what you intend for good may twist you into the greatest threat to the realms yet!  I am too familiar with wicked ones who think they are still righteous!~*/
END

APPEND DRIZ2J
	IF ~~ THEN BEGIN XA_LD_ChooseDrizzt
		SAY @1 /* ~What a sad, sick, and twisted day it would be when Drizzt Do’Urden, hero of the realms, allows himself to become a lich and lose the respect he has worked his life to obtain!~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END