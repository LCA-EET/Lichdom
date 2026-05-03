EXTEND_BOTTOM XALDGD2 15
	//{ Xan
	IF ~
		IsValidForPartyDialogue("7XXAN")
		!General("7XXAN", UNDEAD)
		LevelGT("7XXAN", 11)
	~
	THEN REPLY @26 /*~(Choose Xan.)~*/
	EXTERN 7XXAN25J XA_LD_ChooseXan
END

EXTEND_BOTTOM XALDGD2 18
	//{ Xan
	IF ~
		IsValidForPartyDialogue("7XXAN")
		!General("7XXAN", UNDEAD)
		LevelGT("7XXAN", 11)
	~
	THEN REPLY @26 /*~(Choose Xan.)~*/
	EXTERN 7XXAN25J XA_LD_ChooseXan
END

//{ Xan
APPEND 7XXAN25J
	IF ~~ THEN BEGIN XA_LD_ChooseXan
		SAY @27 /*~You would consider me worthy of this?  It’s better than -death-, I suppose.~*/
		
		= @28 /*~Alright, <CHARNAME>.  At least I’ll -try- to succeed as a lich.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 74
	END
END
//}


