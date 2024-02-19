EXTEND_BOTTOM XALDGD 15
	//{ Kivan
	IF ~
		IsValidForPartyDialogue("7XKIVA")
		!General("7XKIVA", UNDEAD)
		LevelGT("7XKIVA", 11)
	~
	THEN REPLY @1 /*~(Choose Kivan.)~*/
	EXTERN 7XKIVAJ XA_LD_ChooseKivan
END

EXTEND_BOTTOM XALDGD 18
	//{ Kivan
	IF ~
		IsValidForPartyDialogue("7XKIVA")
		!General("7XKIVA", UNDEAD)
		LevelGT("7XKIVA", 11)
	~
	THEN REPLY @1 /*~(Choose Kivan.)~*/
	EXTERN 7XKIVAJ XA_LD_ChooseKivan
	//}
END

//{ Kivan
APPEND 7XKIVAJ
	IF ~~ THEN BEGIN XA_LD_ChooseKivan
		SAY @0 /*~<CHARNAME>, no.  I enjoy who I am too much to trade it for -that- sort of power.~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END
//}


