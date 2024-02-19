//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("P_Dusk")
		!General("P_Dusk", UNDEAD)
		LevelGT("P_Dusk", 11)
	~
	THEN REPLY @3 /*~(Choose Dusk.)~*/
	EXTERN P_DuskJ XA_LD_ChooseDusk
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("P_Dusk")
		!General("P_Dusk", UNDEAD)
		LevelGT("P_Dusk", 11)
	~
	THEN REPLY @3 /*~(Choose Dusk.)~*/
	EXTERN P_DuskJ XA_LD_ChooseDusk
END
//}

//{ P_DuskJ
INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_P_DuskJ_75
	== P_DuskJ
	IF ~
		IsValidForPartyDialogue("P_Dusk")
	~
	@0 /*~~Can you not see the evil you are about to become?~.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_P_DuskJ_76
	== P_DuskJ
	IF ~
		IsValidForPartyDialogue("P_Dusk")
	~
	@1 /*~The needs of the many versus the desires of you.  Hmm.  This power is tempting, <CHARNAME>.  Consider yourself warned.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_P_DuskJ_77
	== P_DuskJ
	IF ~
		IsValidForPartyDialogue("P_Dusk")
	~
	@1 /*~The needs of the many versus the desires of you.  Hmm.  This power is tempting, <CHARNAME>.  Consider yourself warned.~*/
END

//}


APPEND P_DuskJ
	IF ~~ THEN BEGIN XA_LD_ChooseDusk
		SAY @2 /* ~<CHARNAME>, I know you mean this as a boon to me, but I... I cannot.  I have experienced too much misery at the hands of evil magics, and I’ll not become that thing I hate!~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END