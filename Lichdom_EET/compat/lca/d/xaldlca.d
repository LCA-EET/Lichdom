//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @11 /*~(Choose Corwin.)~*/
	EXTERN XACORWIJ XA_LD_ChooseCorwin
	
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	THEN REPLY @12 /*~(Choose Caelar.)~*/
	EXTERN XACAELAJ XA_LD_ChooseCaelar
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @11 /*~(Choose Corwin.)~*/
	EXTERN XACORWIJ XA_LD_ChooseCorwin
	
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	THEN REPLY @12 /*~(Choose Caelar.)~*/
	EXTERN XACAELAJ XA_LD_ChooseCaelar
END
//}

//{ XACORWIJ

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_XACORWIJ_75
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@1 /*~Becoming a Lich to fulfill Elminster’s wishes for you?  (Sigh.)  I’ve heard crazier excuses on duty.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_XACORWIJ_76
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@2 /*~Becoming a lich to stop an evil dead god from returning?  (Sigh.) I’ve heard crazier excuses on duty.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_XACORWIJ_77
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	@0 /*~You want to become a skeleton?  If you get out of line, I am an -expert- in destroying your kind!~*/
END

APPEND XACORWIJ
	IF ~~ THEN BEGIN XA_LD_ChooseCorwin
		SAY @3 /*~<CHARNAME>, I enjoy my own skin too much.  I’m not about to risk it for this.  No deal.~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END
//}