EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("Hubelpot")
		!General("Hubelpot", UNDEAD)
		LevelGT("Hubelpot", 11)
		AreaCheck("AR0800")
	~
	THEN REPLY @3 /*~(Choose Hubelpot)~*/
	EXTERN SC#HUB XA_LD_ChooseHub
	
	IF ~
		IsValidForPartyDialogue("Hubelpot")
		!General("Hubelpot", UNDEAD)
		LevelGT("Hubelpot", 11)
		!AreaCheck("AR0800")
	~
	THEN REPLY @3 /*~(Choose Hubelpot)~*/
	EXTERN SC#HUB25 XA_LD_ChooseHub25
	
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("Hubelpot")
		!General("Hubelpot", UNDEAD)
		LevelGT("Hubelpot", 11)
		AreaCheck("AR0800")
	~
	THEN REPLY @3 /*~(Choose Hubelpot)~*/
	EXTERN SC#HUB XA_LD_ChooseHub
	
	IF ~
		IsValidForPartyDialogue("Hubelpot")
		!General("Hubelpot", UNDEAD)
		LevelGT("Hubelpot", 11)
		!AreaCheck("AR0800")
	~
	THEN REPLY @3 /*~(Choose Hubelpot)~*/
	EXTERN SC#HUB25 XA_LD_ChooseHub25
	
END

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_SC#HUB_75
	== SC#HUB
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@0 /*~Becoming a bone <PRO_MANWOMAN> to avoid eating your vegetables?  Naughty, naughty!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_SC#HUB25_75
	== SC#HUB25
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@0 /*~Becoming a bone <PRO_MANWOMAN> to avoid eating your vegetables?  Naughty, naughty!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_SC#HUB_76
	== SC#HUB
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@1 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_SC#HUB25_76
	== SC#HUB25
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@1 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_SC#HUB_77
	== SC#HUB
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@1 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_SC#HUB25_77
	== SC#HUB25
	IF ~
		IsValidForPartyDialogue("Hubelpot")
	~
	@1 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

APPEND SC#HUB
	IF ~~ THEN BEGIN XA_LD_ChooseHub
		SAY @4 /*~This handsome frame of mine might look like skin and bones to you, but I’m not about to ruin it with undead!  Besides, if I did it, how would I grow big and strong by eating my veggies?~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END

APPEND SC#HUB25
	IF ~~ THEN BEGIN XA_LD_ChooseHub25
		SAY @4 /*~This handsome frame of mine might look like skin and bones to you, but I’m not about to ruin it with undead!  Besides, if I did it, how would I grow big and strong by eating my veggies?~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END