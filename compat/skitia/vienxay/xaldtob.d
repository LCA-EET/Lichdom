EXTEND_BOTTOM XALDGD2 15
	IF ~
		!Global("X3VieQuest","GLOBAL",12) 
		!Alignment("X3Vie",NEUTRAL)
		GlobalGT("X3VieApp","GLOBAL",29) 
		IsValidForPartyDialogue("X3Vie")
		!General("X3Vie", UNDEAD)
		LevelGT("X3Vie", 11)
	~
	THEN REPLY @10 /*~(Choose Vienxay.)~*/
	EXTERN X3Vie25J XA_LD_ChooseVie1
	
	IF ~
		IsValidForPartyDialogue("X3Vie")
		!General("X3Vie", UNDEAD)
		LevelGT("X3Vie", 11)
		OR(3)
			Global("X3VieQuest","GLOBAL",12) 
			Alignment("X3Vie",NEUTRAL)
			!GlobalGT("X3VieApp","GLOBAL",29) 
	~
	THEN REPLY @10 /*~(Choose Vienxay.)~*/
	EXTERN X3Vie25J XA_LD_ChooseVie2
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("X3Vie")
		!General("X3Vie", UNDEAD)
		LevelGT("X3Vie", 11)
	~
	THEN REPLY @10 /*~(Choose Vienxay.)~*/
	EXTERN X3Vie25J XA_LD_ChooseVie1
END

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_X3Vie25J_75
	== X3Vie25J
	IF ~
		IsValidForPartyDialogue("X3Vie")
	~
	@11 /*~~<CHARNAME>, why are you looking at me that way?  You clearly wanted this.  Go for it!~~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_X3Vie25J_76
	== X3Vie25J
	IF ~
		IsValidForPartyDialogue("X3Vie")
	~
	@12 /*~If you’re expecting me to object, I have no objection.~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_X3Vie25J_77
	== X3Vie25J
	IF ~
		IsValidForPartyDialogue("X3Vie")
	~
	@12 /*~~If you’re expecting me to object, I have no objection.~~*/
END

APPEND X3Vie25J
	IF ~~ THEN BEGIN XA_LD_ChooseVie1
		SAY @13 /*~Lichdom?  Yeah.  Sure.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 74
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseVie2
		SAY @14 /*~Nope.  I found a better path in life.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 18
	END
END


