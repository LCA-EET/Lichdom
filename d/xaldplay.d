APPEND ~PLAYER1~
	
	IF ~
		Global("xaldasst", "GLOBAL", 1)
	~ BEGIN XA_MainMenu
		SAY @0 /*~Welcome to the Lichdom assistant. Select one of the options below.~*/
		
		IF ~~ THEN REPLY @61  /* ~Advance the Time.~*/
		GOTO XA_AdvanceTime
		
		IF ~~ THEN REPLY @71 /*~Change Lichdom resurrection options.~*/
		GOTO XA_LichResurrection
		
		IF ~~ THEN REPLY @3 /*~Change Lichdom transformation cost.~*/
		GOTO XA_LichCost
		
		IF ~~ THEN REPLY @74 /* ~Lich equipment options.~ */
		GOTO XA_LichEquip
		
		IF ~~ THEN REPLY @9 /*~Change phylactery chance to shatter on death.~*/
		GOTO XA_PhylacteryBreak
		
		IF ~~ THEN REPLY @20 /*~Change spell level immunities.~*/
		GOTO XA_SpellImmunities
		
		IF ~~ THEN REPLY @44 /*~Change lich spell resistance.~*/
		GOTO XA_SpellResistance
		
		IF ~~ THEN REPLY @45 /*~Change lich mental ability boosts (INT, WIS, CHA).~*/
		GOTO XA_MentalBoosts
		
		IF ~~ THEN REPLY @49 /*~Change lich natural AC characteristics.~*/
		GOTO XA_ChangeACCharacteristics
		
		IF ~~ THEN REPLY @67 /*~Change lich mental senses.~*/
		GOTO XA_ChangeMentalSenses
		
		IF ~~ THEN REPLY @57 /*~Change animation options.~*/
		GOTO XA_ChangeAnimation
		
		IF ~~ THEN REPLY @1 /*~Exit.~*/
		GOTO XA_ExitAssistant
	END
	
	IF ~~ THEN BEGIN XA_LichEquip
		SAY @75 /*~Is a lich allergic to (unable to equip, regardless of proficiencies) to items that harm undead such as a Mace of Disruption, a Flame Tongue/Burning Earth Sword, a Protection from Undead scroll, or an Azuredge Axe?  Note that your normal proficiencies apply, regardless of this option, and if you enable this option with anti-Undead items equipped, you will immediately unequip or drop them.~*/
		
		IF ~~ THEN REPLY @76
		DO ~
			SetGlobal("XA_LD_LichEquip", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @77
		DO ~
			SetGlobal("XA_LD_LichEquip", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_LichResurrection
		SAY @71 /*~Change Lichdom resurrection options.~*/
		
		IF ~~ THEN REPLY @72 /*~Rolling eight hour timer (Default.)~*/
		DO ~
			SetGlobal("XA_LD_LichResurrection", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @73 /*~Resurrect after the conclusion of the battle.~*/
		DO ~
			SetGlobal("XA_LD_LichResurrection", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_ChangeMentalSenses
		SAY @67 /*~Change lich mental senses.~*/
		
		IF ~~ THEN REPLY @68
		DO ~
			SetGlobal("XA_LD_LichSenses", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @69
		DO ~
			SetGlobal("XA_LD_LichSenses", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @70
		DO ~
			SetGlobal("XA_LD_LichSenses", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_AdvanceTime
		SAY @61
		
		IF ~~ THEN REPLY @62
		DO ~
			AdvanceTime(ONE_HOUR)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @63
		DO ~
			AdvanceTime(TWO_HOURS)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @64
		DO ~
			AdvanceTime(FOUR_HOURS)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @65
		DO ~
			AdvanceTime(EIGHT_HOURS)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @66
		DO ~
			AdvanceTime(ONE_DAY)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_ChangeAnimation
		SAY @57 /*~Change animation options.~*/
		
		IF ~~ THEN REPLY @55 /*~Use Lich animation.~*/
		DO ~
			SetGlobal("XA_LD_LichAnimation", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @56 /*~Retain normal character animation (Default).~*/
		DO ~
			SetGlobal("XA_LD_LichAnimation", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_ChangeACCharacteristics
		SAY @49 /*~Change lich natural AC characteristics.~*/
		
		IF ~~ THEN REPLY @50 /*~+1 to Slashing / Piercing, -1 to Crushing.~*/
		DO ~
			SetGlobal("XA_LD_LichAC", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @51 /*~+2 to Slashing / Piercing, -2 to Crushing.~*/
		DO ~
			SetGlobal("XA_LD_LichAC", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @52 /*~+3 to Slashing / Piercing, -3 to Crushing (Default).~*/
		DO ~
			SetGlobal("XA_LD_LichAC", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @53 /*~+4 to Slashing / Piercing, -4 to Crushing.~*/
		DO ~
			SetGlobal("XA_LD_LichAC", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @54 /*~+5 to Slashing / Piercing, -5 to Crushing.~*/
		DO ~
			SetGlobal("XA_LD_LichAC", "GLOBAL", 4)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_MentalBoosts
		SAY @45 /*~Change lich mental ability boosts (INT, WIS, CHA).~*/
		
		IF ~~ THEN REPLY @46 /*~+1 (Default).~*/
		DO ~
			SetGlobal("XA_LD_MentalBoost", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @47 /*~+2.~*/
		DO ~
			SetGlobal("XA_LD_MentalBoost", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @48 /*~None.~*/
		DO ~
			SetGlobal("XA_LD_MentalBoost", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END

	IF ~~ THEN BEGIN XA_SpellResistance
		SAY @44 /*~Change lich spell resistance.~*/
	
		IF ~~ THEN REPLY @29 /*~None (Default).~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
	
		IF ~~ THEN REPLY @30 /*~5%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @31 /*~10%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @32 /*~20%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @33 /*~25%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 4)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @34 /*~30%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 5)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @35 /*~33%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 6)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @36 /*~40%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 7)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @37 /*~50%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 8)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @38 /*~60%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 9)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @39 /*~70%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 10)
		~
		GOTO XA_ChangeProcessed
	
		IF ~~ THEN REPLY @40 /*~75%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 11)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @41 /*~80%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 12)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @42 /*~90%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 13)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @43 /*~100%.~*/
		DO ~
			SetGlobal("XA_LD_SpellResistance", "GLOBAL", 14)
		~
		GOTO XA_ChangeProcessed
	
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
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
		
		IF ~~ THEN REPLY @10 /*~0% (Default).~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @11 /*~1%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @12 /*~3%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @13 /*~5%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @14 /*~10%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 4)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @15 /*~15%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 5)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @16 /*~20%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 6)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @17 /*~25%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 7)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @18 /*~33%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 8)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @19 /*~50%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 9)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @20 /*~67%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 10)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @21 /*~80%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 11)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @22 /*~100%.~*/
		DO ~
			SetGlobal("XA_LD_PhylacteryBreak", "GLOBAL", 12)
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