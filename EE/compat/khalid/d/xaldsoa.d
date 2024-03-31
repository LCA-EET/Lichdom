//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("L#KHALID")
		!General("L#KHALID", UNDEAD)
		LevelGT("L#KHALID", 11)
	~
	THEN REPLY @3 /*~(Choose Khalid.)~*/
	EXTERN L#KHAJ XA_LD_ChooseKhalid
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("L#KHALID")
		!General("L#KHALID", UNDEAD)
		LevelGT("L#KHALID", 11)
	~
	THEN REPLY @3 /*~(Choose Khalid.)~*/
	EXTERN L#KHAJ XA_LD_ChooseKhalid
END
//}

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_L#KHAJ_75
	== L#KHAJ
	IF ~
		IsValidForPartyDialogue("L#KHALID")
	~
	@0 /*~<CHARNAME>!  Ha-harpers -destroy- u-u-undead, not j-join them!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_L#KHAJ_76
	== L#KHAJ
	IF ~
		IsValidForPartyDialogue("L#KHALID")
	~
	@1 /* ~(Khalid silently looks at <CHARNAME>, sighs, and shakes his head in disgust.)~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_L#KHAJ_77
	== L#KHAJ
	IF ~
		IsValidForPartyDialogue("L#KHALID")
	~
	@1 /*~(Khalid silently looks at <CHARNAME>, sighs, and shakes his head in disgust.)~ */
END

APPEND L#KHAJ
	IF ~~ THEN BEGIN XA_LD_ChooseKhalid
		SAY @4 /* ~L-l-lichdom?  Undeath?  M-m-me?~*/
		
		= @2 /* ~No!  We know th-this is w-wrong!~ */
		
		IF ~~ THEN REPLY @5 /* ~Remember what happened to Jaheira.  You survived, but what if this makes the difference between life and death for someone else we care about?~*/
		GOTO XA_LD_ChooseKhalid2
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseKhalid2
		SAY @6/* ~(Tears fall from Khalid’s face.)~*/
		
		= @7 /* ~No!  N-n-not like this!  It-it is better to live pure!~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END