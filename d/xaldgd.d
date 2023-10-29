BEGIN ~XALDGD~

IF ~
	NumTimesTalkedTo(0)
~ THEN BEGIN XA_LD_Intro
	SAY @0 /*~<You see a man in ornate robes whose every motion seems intentional, calm, and slow.  His voice seems wise with a tone that reminds you of Gorion’s voice, but with more crackle and spoken more slowly.  He smells clean despite his nearness to the dead  His demeanor is of one of great importance who seems to be in absolutely no hurry.>~ [xald0000]*/
	
	= @1 /*~Ah, there you are.  I am Morris, and you are one of many people to have been curious about me.~ [xald0001]*/
	
	IF ~
		GlobalLT("XA_LD_WhoAreYou", "LOCALS", 1)
	~ THEN REPLY @2 /*~I am curious.  Who are you?~*/
	DO ~
		SetGlobal("XA_LD_WhoAreYou", "LOCALS", 1)
	~
	GOTO XA_LD_WhoAreYou
	
	IF ~
		GlobalLT("XA_LD_WhyAreYouHere", "LOCALS", 1)
	~ THEN REPLY @4 /*~Why are you here among the dead?~ [xald0002]*/
	DO ~
		SetGlobal("XA_LD_WhyAreYouHere", "LOCALS", 1)
	~
	GOTO XA_LD_WhyAreYouHere
	
	IF ~~ THEN REPLY @6 /*~What do you think about death?~*/
	GOTO XA_LD_ThoughtsOnDeath
END

IF ~~ THEN BEGIN XA_LD_WhoAreYou
	SAY @3 /*~"Morris, a gravetender," he says, grateful that you asked.~ [xald0002]*/
	
	IF ~
		GlobalLT("XA_LD_WhyAreYouHere", "LOCALS", 1)
	~ THEN REPLY @4 /*~Why are you here among the dead?~ [xald0002]*/
	DO ~
		SetGlobal("XA_LD_WhyAreYouHere", "LOCALS", 1)
	~
	GOTO XA_LD_WhyAreYouHere
	
	IF ~~ THEN REPLY @6 /*~What do you think about death?~*/
	GOTO XA_LD_ThoughtsOnDeath
END

IF ~~ THEN BEGIN XA_LD_WhyAreYouHere
	SAY @5 /*~He says with a plain smile, "I have chosen to keep the dead - and the Undead - that should not be in the city out of it.  I ensure those who bring their dead here or who mourn for their dead here head in the right direction."~ [xald0003]*/
	
	IF ~
		GlobalLT("XA_LD_WhoAreYou", "LOCALS", 1)
	~ THEN REPLY @2 /*~I am curious.  Who are you?~*/
	DO ~
		SetGlobal("XA_LD_WhoAreYou", "LOCALS", 1)
	~
	GOTO XA_LD_WhoAreYou
	
	IF ~~ THEN REPLY @6 /*~What do you think about death?~*/
	GOTO XA_LD_ThoughtsOnDeath
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnDeath
	SAY @7 /* ~“Death,” he says, seemingly with a quiet sigh, “is a transition from this state called ‘life’ to another called ‘death.’  Some are able to call things beyond death back to life, and all are able to put that which can die to death.”~ [xald0004]*/
	
	IF ~~ THEN REPLY @8 /*~Then are you fond of death?~*/
	GOTO XA_LD_FondOfDeath
	
END

IF ~~ THEN BEGIN XA_LD_FondOfDeath
	SAY @9 /*~He blinks and stares at you blankly.  “I have devoted my life to the understanding of death.  I believe all life wishes to live forever, to expand in this reality, to -dominate- this reality, but is cursed with this -interruption- called ‘death.’  And so I found a way to solve death.”~ [xald0005]*/
	
	IF ~~ THEN REPLY @10 /*~Do you mean -undeath?-~*/
	GOTO XA_LD_Undeath
END

IF ~~ THEN BEGIN XA_LD_Undeath
	SAY @11 /*~“Yes,” he says with a blank smile, “since you insisted.  It is a way to accomplish -more- in life with less chance of this irksome -interruption.-  I am willing to share it - for a price.”~ [xald0006]*/
	
	IF ~~ THEN REPLY @12 /*~What sort of price?~*/
	GOTO XA_LD_Price
END

IF ~~ THEN BEGIN XA_LD_Price
	SAY @13 /*~He clearly and eagerly smiles at a pace that is fast for him.  “The first price is your peace.  Are you at peace with your god?  Many would disdain such a transformation, and I shall not be held accountable should your ‘transgressions’ result in harm toward you.  Merely considering this option without pursuing it should not count as a stain upon your soul.”~ [xald0007]*/
	
	IF ~~ THEN REPLY @14 /* ~I am willing.  Proceed!~ */
	GOTO XA_LD_Proceed
	
	IF ~~ THEN REPLY @16 /* ~Perhaps later.~*/
	GOTO XA_LD_Later
END

IF ~~ THEN BEGIN XA_LD_Proceed
	SAY @15 /*~He silently nods at you.  “The second price is understanding.  Go find 3 liches or demiliches in any combination, slay them, and bring their lich dust to me.  We shall talk further then.”  Morris promptly stands up straight and looks you very intently in the eyes.~ [xald0008]*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_LD_Later
	SAY @17 /*~“Ah,” he says with a long sigh.  “So be it.  Talk with me should your decision change.  I have… long enough.”~ [xald0009] */
	
	IF ~~ THEN
	EXIT
END