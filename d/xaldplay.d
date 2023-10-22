APPEND ~PLAYER1~
	
	IF ~
		Global("xaldasst", "GLOBAL", 1)
	~ BEGIN XA_MainMenu
		SAY @0 /*~Welcome to the Lichdom assistant. Select one of the options below.~*/
		
		IF ~~ THEN REPLY @3 /*~Change Lichdom transformation cost.~*/
		GOTO XA_LichCost
		
		IF ~~ THEN REPLY @9 /*~Change phylactery chance to shatter on death.~*/
		GOTO XA_PhylacteryBreak
		
		IF ~~ THEN REPLY @20 /*~Change spell level immunities.~*/
		GOTO XA_SpellImmunities
		
		IF ~~ THEN REPLY @1 /*~Exit.~*/
		GOTO XA_ExitAssistant
	END

	IF ~~ THEN BEGIN XA_SpellImmunities
		SAY @20 /*~Change spell level immunities.~*/
		
		IF ~~ THEN REPLY @26 /*~No immunities (Default).~*/
		DO ~
			SetGlobal("XA_LD_SpellImmunityLevel", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @25 /*~Level 1.~*/
		DO ~
			SetGlobal("XA_LD_SpellImmunityLevel", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @24 /*~Level 2 and below.~*/
		DO ~
			SetGlobal("XA_LD_SpellImmunityLevel", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @23 /*~Level 3 and below.~*/
		DO ~
			SetGlobal("XA_LD_SpellImmunityLevel", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @22 /*~Level 4 and below.~*/
		DO ~
			SetGlobal("XA_LD_SpellImmunityLevel", "GLOBAL", 4)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @21 /*~Level 5 and below.~*/
		DO ~
			SetGlobal("XA_LD_SpellImmunityLevel", "GLOBAL", 5)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END

	IF ~~ THEN BEGIN XA_PhylacteryBreak
		SAY @9 /*~Change phylactery chance to shatter on death.~*/
		
		IF ~~ THEN REPLY @10
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @11
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @12
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @13
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @14
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 4)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @15
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 5)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @16
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 6)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @17
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 7)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @18
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 8)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @19
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 9)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END

	IF ~~ THEN BEGIN XA_LichCost
		SAY @3 /*~Change Lichdom transformation cost.~*/
		
		IF ~~ THEN REPLY @4 /*~120,000 gold (Default).~*/
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @5
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @6
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @7
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @8
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 4)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END

	IF ~~ THEN BEGIN XA_ChangeProcessed
		SAY @2 /*~The requested change has been processed.~*/
		
		IF ~~ THEN 
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_ExitAssistant
		SAY @27
		
		IF ~~ THEN
		DO ~
			SetGlobal("xaldasst", "GLOBAL", 0)
		~
		EXIT
	END
END