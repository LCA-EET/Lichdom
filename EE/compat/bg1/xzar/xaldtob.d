EXTEND_BOTTOM XALDGD2 15
	//{ Xzar
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
		LevelGT("7XXZAR", 11)
	~
	THEN REPLY @29 /*~(Choose Xzar.)~*/
	EXTERN 7XXZA25J XA_LD_ChooseXzar
END

EXTEND_BOTTOM XALDGD2 18
	//{ Xzar
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
		LevelGT("7XXZAR", 11)
	~
	THEN REPLY @29 /*~(Choose Xzar.)~*/
	EXTERN 7XXZA25J XA_LD_ChooseXzar
	//}
END

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_7XXZA25J_75
	== 7XXZA25J
	IF ~
		IsValidForPartyDialogue("7XXZAR")
	~
	@31 /*~Lichdom?  That sounds like the sweet, sweet embrace of death and power!~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_7XXZA25J_76
	== 7XXZA25J
	IF ~
		IsValidForPartyDialogue("7XXZAR")
	~
	@34 /*~How long will you insist I live vicariously through your achievements?~*/
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
	~
	= @32 /*~STOP HOLDING OUT ON ME!~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_7XXZA25J_77
	== 7XXZA25J
	IF ~
		IsValidForPartyDialogue("7XXZAR")
	~
	@34 /*~How long will you insist I live vicariously through your achievements?~*/
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
	~
	= @32 /*~STOP HOLDING OUT ON ME!~*/
END

//{ Xzar
APPEND 7XXZA25J
	IF ~~ THEN BEGIN XA_LD_ChooseXzar
		SAY @30 /*~For so long have I waited for an opportunity to embrace lichdom, my -destiny!-  You have my deepest thanks from my maddened, blackened heart!~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 74
	END
END
//}


