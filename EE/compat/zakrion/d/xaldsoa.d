//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("QI#ZAK2")
		!General("QI#ZAK2", UNDEAD)
		LevelGT("QI#ZAK2", 11)
	~
	THEN REPLY @3 /*~(Choose Zakrion.)~*/
	EXTERN QI#ZAK2J XA_LD_ChooseZakrion
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("QI#ZAK2")
		!General("QI#ZAK2", UNDEAD)
		LevelGT("QI#ZAK2", 11)
	~
	THEN REPLY @3 /*~(Choose Zakrion.)~*/
	EXTERN QI#ZAK2J XA_LD_ChooseZakrion
END
//}

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_QI#ZAK2J_75
	== QI#ZAK2J
	IF ~
		IsValidForPartyDialogue("QI#ZAK2")
	~
	@0 /*~Whatever floats your boat, as long as you help me float my boat, too.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_QI#ZAK2J_76
	== QI#ZAK2J
	IF ~
		IsValidForPartyDialogue("QI#ZAK2")
	~
	@2 /* ~You don’t need me to tell you what you can and cannot do. You’re the captain of this ship afterall.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_QI#ZAK2J_77
	== QI#ZAK2J
	IF ~
		IsValidForPartyDialogue("QI#ZAK2")
	~
	@1 /*~Yeah, sure, a sacrifice for a noble deed. Makes sense to me.~ */
END

APPEND QI#ZAK2J
	IF ~~ THEN BEGIN XA_LD_ChooseZakrion
		SAY @4 /* ~Being undead is not for me. Sure, it would give me the upper hand when in a duel, but seeing a blade in the gaps of my exposed rib cage would scare me shitless.~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END