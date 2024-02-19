//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("BG2BAE")
		!General("BG2BAE", UNDEAD)
		LevelGT("BG2BAE", 11)
	~
	THEN REPLY @3 /*~(Choose Baeloth.)~*/
	EXTERN BG2BAE25J XA_LD_ChooseBaeloth
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("BG2BAE")
		!General("BG2BAE", UNDEAD)
		LevelGT("BG2BAE", 11)
	~
	THEN REPLY @3 /*~(Choose Baeloth.)~*/
	EXTERN BG2BAE25J XA_LD_ChooseBaeloth
END
//}

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_BG2BAE25J_75
	== BG2BAE25J
	IF ~
		IsValidForPartyDialogue("BG2BAE")
	~
	@0 /*~<CHARNAME>, there is absolutely no shame in taking every advantage afforded to you!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_BG2BAE25J_76
	== BG2BAE25J
	IF ~
		IsValidForPartyDialogue("BG2BAE")
	~
	@1 /*~Aw, <CHARNAME>, you don’t wanna disappoint -Elminster- now, hmm?~ [xald1080]*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_BG2BAE25J_77
	== BG2BAE25J
	IF ~
		IsValidForPartyDialogue("BG2BAE")
	~
	@2 /*~Aw, <CHARNAME>, you don’t wanna disappoint -daddy- now, hmm?~ [xald1081] */
END

APPEND BG2BAE25J
	IF ~~ THEN BEGIN XA_LD_ChooseBaeloth
		SAY @4 /* ~-You- would choose -me- for this honor?  I always -knew- I did well to follow you.~ [xald1082]*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD 74
	END
END