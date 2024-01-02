EXTEND_BOTTOM XALDGD 15
	//{ Branwen
	IF ~
		IsValidForPartyDialogue("7XBRAN")
		!General("7XBRAN", UNDEAD)
		LevelGT("7XBRAN", 11)
		AreaCheck("AR0800")
	~
	THEN REPLY @7 /*~(Choose Branwen.)~*/
	EXTERN 7XBRA25J XA_LD_ChooseBranwen
	//}
END

EXTEND_BOTTOM XALDGD 18
	//{ Branwen
	IF ~
		IsValidForPartyDialogue("7XBRAN")
		!General("7XBRAN", UNDEAD)
		LevelGT("7XBRAN", 11)
		AreaCheck("AR0800")
	~
	THEN REPLY @7 /*~(Choose Branwen.)~*/
	EXTERN 7XBRA25J XA_LD_ChooseBranwen
	//}
END

//{ Branwen
APPEND 7XBRA25J
	IF ~~ THEN BEGIN XA_LD_ChooseBranwen
		SAY @8 /*~This sort of immortality seems fitting for a priestess of Tempus!~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD 74
	END
END
//}