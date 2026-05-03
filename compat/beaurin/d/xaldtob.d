//{ Common
EXTEND_BOTTOM XALDGD2 15
	IF ~
		IsValidForPartyDialogue("QI#Ela")
		!General("QI#Ela", UNDEAD)
		LevelGT("QI#Ela", 11)
	~
	THEN REPLY @3 /*~(Choose Elaryn.)~*/
	EXTERN QI#E25J XA_LD_ChooseElaryn
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("QI#Ela")
		!General("QI#Ela", UNDEAD)
		LevelGT("QI#Ela", 11)
	~
	THEN REPLY @3 /*~(Choose Elaryn.)~*/
	EXTERN QI#E25J XA_LD_ChooseElaryn
END
//}

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_QI#E25J_75
	== QI#E25J
	IF ~
		IsValidForPartyDialogue("QI#Ela")
	~
	@0 /*~No, you cannot do this, <CHARNAME>. Have you learned nothing from the hubris of my sister!?~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_QI#E25J_76
	== QI#E25J
	IF ~
		IsValidForPartyDialogue("QI#Ela")
	~
	@1 /*~~Evil taints your very being. I cannot let this happen. I will not. Goodbye, <CHARNAME>, I will make this quick.~*/
	DO ~
		SetGlobal("XA_LD_ElarynHostile", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_QI#E25J_77
	== QI#E25J
	IF ~
		IsValidForPartyDialogue("QI#Ela")
	~
	@2 /*~You know better than this… but regardless, I cannot let this happen.  I will not.  Goodbye, <CHARNAME>.  I will make this quick.~ */
	DO ~
		SetGlobal("XA_LD_ElarynHostile", "GLOBAL", 1)
	~
END

APPEND QI#E25J
	IF ~~ THEN BEGIN XA_LD_ChooseElaryn
		SAY @4 /* ~Do not be a fool, <CHARNAME>. I would never.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 18
	END
END