EXTEND_BOTTOM XALDGD2 15
	IF ~
		IsValidForPartyDialogue("SK#Neht")
		LevelGT("SK#Neht", 11)
	~
	THEN REPLY @3 /*~(Choose Neh'taniel.)~*/
	EXTERN SK#NE25J XA_LD_ChooseNeh
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("SK#Neht")
		LevelGT("SK#Neht", 11)
	~
	THEN REPLY @3 /*~(Choose Neh'taniel.)~*/
	EXTERN SK#NE25J XA_LD_ChooseNeh
END

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_SK#NE25J_75
	== SK#NE25J
	IF ~
		IsValidForPartyDialogue("SK#Neht")
	~
	@2 /*~Seeking undeath for its own sake is regrettable, <CHARNAME>.~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_SK#NE25J_76
	== SK#NE25J
	IF ~
		IsValidForPartyDialogue("SK#Neht")
	~
	@0 /*~Accepting this burden for the greater good?  Now you have my attention.~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_SK#NE25J_77
	== SK#NE25J
	IF ~
		IsValidForPartyDialogue("SK#Neht")
	~
	@0 /*~Accepting this burden for the greater good?  Now you have my attention.~*/
END

APPEND SK#NE25J
	IF ~~ THEN BEGIN XA_LD_ChooseNeh
		SAY @1 /* ~Lichdom only has an effect on the living.  Consider this a polite refusal.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 18
	END
END