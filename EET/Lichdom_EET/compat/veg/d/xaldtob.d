EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("Hubelpot")
		!General("Hubelpot", UNDEAD)
		LevelGT("Hubelpot", 11)
	~
	THEN REPLY @3 /*~(Choose Hubelpot)~*/
	EXTERN SC#Hb25J XA_LD_ChooseHub
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("Hubelpot")
		!General("Hubelpot", UNDEAD)
		LevelGT("Hubelpot", 11)
	~
	THEN REPLY @3 /*~(Choose Hubelpot)~*/
	EXTERN SC#Hb25J XA_LD_ChooseHub
	
END

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_SC#Hb25J_75
	== SC#Hb25J
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@0 /*~Becoming a bone <PRO_MANWOMAN> to avoid eating your vegetables?  Naughty, naughty!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_SC#Hb25J_76
	== SC#Hb25J
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@1 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_SC#Hb25J_77
	== SC#Hb25J
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@1 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

APPEND SC#Hb25J
	IF ~~ THEN BEGIN XA_LD_ChooseHub
		SAY @4 /*~This handsome frame of mine might look like skin and bones to you, but I’m not about to ruin it with undead!  Besides, if I did it, how would I grow big and strong by eating my veggies?~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END

