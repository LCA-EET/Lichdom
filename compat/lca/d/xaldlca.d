//{ Common
EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!General("XACORWIN", UNDEAD)
		LevelGT("XACORWIN", 11)
	~
	THEN REPLY @11 /*~(Choose Corwin.)~*/
	EXTERN XACORWIJ XA_LD_ChooseCorwin
	
	IF ~
		IsValidForPartyDialogue("XACAELAR")
		!General("XACAELAR", UNDEAD)
		LevelGT("XACAELAR", 11)
	~
	THEN REPLY @12 /*~(Choose Caelar.)~*/
	EXTERN XACAELAJ XA_LD_ChooseCaelar
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!General("XACORWIN", UNDEAD)
		LevelGT("XACORWIN", 11)
	~
	THEN REPLY @11 /*~(Choose Corwin.)~*/
	EXTERN XACORWIJ XA_LD_ChooseCorwin
	
	IF ~
		IsValidForPartyDialogue("XACAELAR")
		!General("XACAELAR", UNDEAD)
		LevelGT("XACAELAR", 11)
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

//{ XACAELAJ
INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_XACAELAJ_75
	== XACAELAJ
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	@9 /*~<CHARNAME>, you would so eagerly side with the darkness and fall from the light?  I thought you were wiser than that!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_XACAELAJ_76
	== XACAELAJ
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	@5 /*~<CHARNAME>, I cannot fully agree with your desire to seek undeath as a solution, yet I cannot argue with your logic.  I shall tolerate this... for now.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_XACAELAJ_77
	== XACAELAJ
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	@10 /*~The taint on your soul will turn you into a beacon for evil!  I’ll not tolerate this!~*/
	DO ~
		SetLeavePartyDialogFile()
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("",DEFAULT)
		LeaveParty()
		EscapeArea()
	~
END

APPEND XACAELAJ
	IF ~~ THEN BEGIN XA_LD_ChooseCaelar
		SAY @6 /*~<CHARNAME>, becoming undead is beneath me.  I -refuse!-~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END

ADD_STATE_TRIGGER XACAELAP 0
~
	!Race(Player1, LICH)
~
1 2

APPEND XACAELAP 
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_LD_PlayerIsLich
		SAY @7 /*~<CHARNAME>, the scent of Undeath is on you, and I can detect the taint of temptation succumbed to!~*/
		
		= @8 /*~Light can have no fellowship with darkness!  Begone!~*/
		
		IF ~~ THEN
		EXIT
	END
END
//}

