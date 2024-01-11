EXTEND_BOTTOM XALDGD 15
	IF ~
		IsValidForPartyDialogue("X3Kal")
		!General("X3Kal", UNDEAD)
		LevelGT("X3Kal", 11)
		Alignment("X3Kal", CHAOTIC_NEUTRAL)
		!Race(Player1, LICH)
	~
	THEN REPLY @4 /*@4 = ~(Choose Kale.)~*/
	EXTERN X3Kal25J XA_LD_ChooseKale1
	
	IF ~
		IsValidForPartyDialogue("X3Kal")
		!General("X3Kal", UNDEAD)
		LevelGT("X3Kal", 11)
		Alignment("X3Kal", CHAOTIC_NEUTRAL)
		Race(Player1, LICH)
	~
	THEN REPLY @4 /*@4 = ~(Choose Kale.)~*/
	EXTERN X3Kal25J XA_LD_ChooseKale2
	
	IF ~
		IsValidForPartyDialogue("X3Kal")
		!General("X3Kal", UNDEAD)
		LevelGT("X3Kal", 11)
		!Alignment("X3Kal", CHAOTIC_NEUTRAL)
	~
	THEN REPLY @4 /*@4 = ~(Choose Kale.)~*/
	EXTERN X3Kal25J XA_LD_ChooseKale3
END

EXTEND_BOTTOM XALDGD 18
	IF ~
		IsValidForPartyDialogue("X3Kal")
		!General("X3Kal", UNDEAD)
		LevelGT("X3Kal", 11)
		Alignment("X3Kal", CHAOTIC_NEUTRAL)
		!Race(Player1, LICH)
	~
	THEN REPLY @4 /*@4 = ~(Choose Kale.)~*/
	EXTERN X3Kal25J XA_LD_ChooseKale1
	
	IF ~
		IsValidForPartyDialogue("X3Kal")
		!General("X3Kal", UNDEAD)
		LevelGT("X3Kal", 11)
		Alignment("X3Kal", CHAOTIC_NEUTRAL)
		Race(Player1, LICH)
	~
	THEN REPLY @4 /*@4 = ~(Choose Kale.)~*/
	EXTERN X3Kal25J XA_LD_ChooseKale2
	
	IF ~
		IsValidForPartyDialogue("X3Kal")
		!General("X3Kal", UNDEAD)
		LevelGT("X3Kal", 11)
		!Alignment("X3Kal", CHAOTIC_NEUTRAL)
	~
	THEN REPLY @4 /*@4 = ~(Choose Kale.)~*/
	EXTERN X3Kal25J XA_LD_ChooseKale3
END

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_X3Kal25J_75
	== X3Kal25J
	IF ~
		IsValidForPartyDialogue("X3Kal")
	~
	@5 /*~You got -guts-, friend.~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_X3Kal25J_76
	== X3Kal25J
	IF ~
		IsValidForPartyDialogue("X3Kal")
	~
	@6 /*~Undeath as your next great adventure, huh?  Have at it!  Just don’t drag me with you!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_X3Kal25J_77
	== X3Kal25J
	IF ~
		IsValidForPartyDialogue("X3Kal")
	~
	@6 /*~Undeath as your next great adventure, huh?  Have at it!  Just don’t drag me with you!~*/
END

APPEND X3Kal25J
	IF ~~ THEN BEGIN XA_LD_ChooseKale1
		SAY @7 /*~Getting ultimate power in exchange for my balls?  How very gutsy of you to ask!  Let’s just say I might take this plunge, but you first!~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseKale2
		SAY @8 /*~Well, <CHARNAME>, you took the plunge and ‘survived.’  I suppose I’ll give it a go!~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD 74
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseKale3
		SAY @9 /*~Losing this -very handsome- fleshy form is a -big price- to pay for immortality, y’know?  Let’s just give it a big ol’ no for now.~*/
		
		IF ~~ THEN
		EXTERN XALDGD 18
	END
END


