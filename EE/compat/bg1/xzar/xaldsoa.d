EXTEND_BOTTOM XALDGD 15
	//{ Xzar
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
		LevelGT("7XXZAR", 11)
	~
	THEN REPLY @29 /*~(Choose Xzar.)~*/
	EXTERN 7XXZARJ XA_LD_ChooseXzar
END

EXTEND_BOTTOM XALDGD 18
	//{ Xzar
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
		LevelGT("7XXZAR", 11)
	~
	THEN REPLY @29 /*~(Choose Xzar.)~*/
	EXTERN 7XXZARJ XA_LD_ChooseXzar
	//}
END

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_7XXZARJ_75
	== 7XXZARJ
	IF ~
		IsValidForPartyDialogue("7XXZAR")
	~
	@31 /*~Lichdom?  That sounds like the sweet, sweet embrace of death and power!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_7XXZARJ_76
	== 7XXZARJ
	IF ~
		IsValidForPartyDialogue("7XXZAR")
	~
	@34 /*~How long will you insist I live vicariously through your achievements?~*/
	
	== 7XXZARJ
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
	~
	@32 /*~STOP HOLDING OUT ON ME!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_7XXZARJ_77
	== 7XXZARJ
	IF ~
		IsValidForPartyDialogue("7XXZAR")
	~
	@34 /*~How long will you insist I live vicariously through your achievements?~*/
	
	== 7XXZARJ
	IF ~
		IsValidForPartyDialogue("7XXZAR")
		!General("7XXZAR", UNDEAD)
	~
	@32 /*~STOP HOLDING OUT ON ME!~*/
END

//{ Xzar
APPEND 7XXZARJ
	IF ~~ THEN BEGIN XA_LD_ChooseXzar
		SAY @30 /*~For so long have I waited for an opportunity to embrace lichdom, my -destiny!-  You have my deepest thanks from my maddened, blackened heart!~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD 74
	END
END
//}


