//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("QI#Ela")
		!General("QI#Ela", UNDEAD)
		LevelGT("QI#Ela", 11)
	~
	THEN REPLY @3 /*~(Choose Elaryn.)~*/
	EXTERN QI#ELAJ XA_LD_ChooseElaryn
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("QI#Ela")
		!General("QI#Ela", UNDEAD)
		LevelGT("QI#Ela", 11)
	~
	THEN REPLY @3 /*~(Choose Elaryn.)~*/
	EXTERN QI#ELAJ XA_LD_ChooseElaryn
END
//}

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_QI#ELAJ_75
	== QI#ELAJ
	IF ~
		IsValidForPartyDialogue("QI#Ela")
	~
	@0 /*~No, you cannot do this, <CHARNAME>. Have you learned nothing from the hubris of my sister!?~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_QI#ELAJ_76
	== QI#ELAJ
	IF ~
		IsValidForPartyDialogue("QI#Ela")
	~
	@1 /*~~Evil taints your very being. I cannot let this happen. I will not. Goodbye, <CHARNAME>, I will make this quick.~*/
	DO ~
		SetGlobal("XA_LD_ElarynHostile", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_QI#ELAJ_77
	== QI#ELAJ
	IF ~
		IsValidForPartyDialogue("QI#Ela")
	~
	@2 /*~You know better than this… but regardless, I cannot let this happen.  I will not.  Goodbye, <CHARNAME>.  I will make this quick.~ */
	DO ~
		SetGlobal("XA_LD_ElarynHostile", "GLOBAL", 1)
	~
END

APPEND QI#ELAJ
	IF ~~ THEN BEGIN XA_LD_ChooseElaryn
		SAY @4 /* ~Do not be a fool, <CHARNAME>. I would never.~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END