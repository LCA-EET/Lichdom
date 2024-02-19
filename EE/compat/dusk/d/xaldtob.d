//{ Common
EXTEND_BOTTOM XALDGD2 15
	IF ~
		IsValidForPartyDialogue("P_Dusk")
		!General("P_Dusk", UNDEAD)
		LevelGT("P_Dusk", 11)
	~
	THEN REPLY @3 /*~(Choose Dusk.)~*/
	EXTERN P_Dus25J XA_LD_ChooseDusk
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("P_Dusk")
		!General("P_Dusk", UNDEAD)
		LevelGT("P_Dusk", 11)
	~
	THEN REPLY @3 /*~(Choose Dusk.)~*/
	EXTERN P_Dus25J XA_LD_ChooseDusk
END
//}

//{ P_Dus25J
INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_P_Dus25J_75
	== P_Dus25J
	IF ~
		IsValidForPartyDialogue("P_Dusk")
	~
	@0 /*~~Can you not see the evil you are about to become?~.~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_P_Dus25J_76
	== P_Dus25J
	IF ~
		IsValidForPartyDialogue("P_Dusk")
	~
	@1 /*~The needs of the many versus the desires of you.  Hmm.  This power is tempting, <CHARNAME>.  Consider yourself warned.~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_P_Dus25J_77
	== P_Dus25J
	IF ~
		IsValidForPartyDialogue("P_Dusk")
	~
	@1 /*~The needs of the many versus the desires of you.  Hmm.  This power is tempting, <CHARNAME>.  Consider yourself warned.~*/
END

//}


APPEND P_Dus25J
	IF ~~ THEN BEGIN XA_LD_ChooseDusk
		SAY @2 /* ~<CHARNAME>, I know you mean this as a boon to me, but I... I cannot.  I have experienced too much misery at the hands of evil magics, and I’ll not become that thing I hate!~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 18
	END
END