BEGIN ~XALDDBG~

	IF ~
		True()
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
		
		IF ~~ THEN REPLY @83 /* ~Change Lich Transformation Restrictions~*/
		GOTO XA_LimitToBase
		
		IF ~~ THEN REPLY @57 /*~Change animation options.~*/
		GOTO XA_ChangeAnimation
		
		IF ~~ THEN REPLY @79 /*~Lich Party Dialog Options.~*/
		GOTO XA_ChangeDialogOptions
		
		IF ~
			GlobalLT("XA_LD_DebugAcknowledge", "GLOBAL", 1)
		~ THEN REPLY @78/* ~Open Debugger.~*/
		GOTO XA_LaunchDebugger
		
		IF ~
			Global("XA_LD_DebugAcknowledge", "GLOBAL", 1)
		~ THEN REPLY @78/* ~Open Debugger.~*/
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @1 /*~Exit.~*/
		GOTO XA_ExitAssistant
	END
	
	IF ~~ THEN BEGIN XA_LimitToBase
		SAY @83 /* ~Lich Transformation Restriction~*/
		
		IF ~~ THEN REPLY @82/*~Restrict lich transformation to base game characters only.~ */
		DO ~
			SetGlobal("XA_LD_LimitToBase", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @84/* ~Allow lich transformation for any party member (subject to class & level restrictions).~*/
		DO ~
			SetGlobal("XA_LD_LimitToBase", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
	END
	
	IF ~~ THEN BEGIN XA_ChangeDialogOptions
		SAY @79 /*~Lich Party Dialog Options.~*/
		
		IF ~~ THEN REPLY @81 /* ~Do not ignore party dialogs / objections concerning Lichdom. (Default)~ */
		DO ~
			SetGlobal("XA_LD_IgnoreDialog", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @80 /* ~Ignore party dialogs / objections concerning Lichdom.~ */
		DO ~
			SetGlobal("XA_LD_IgnoreDialog", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_LichEquip
		SAY @75 /*~Is a lich allergic to (unable to equip, regardless of proficiencies) to items that harm undead such as a Mace of Disruption, a Flame Tongue/Burning Earth Sword, a Protection from Undead scroll, or an Azuredge Axe?  Note that your normal proficiencies apply, regardless of this option, and if you enable this option with anti-Undead items equipped, you will immediately unequip or drop them.~*/
		
		IF ~~ THEN REPLY @76 /* ~No. (Default)~*/
		DO ~
			SetGlobal("XA_LD_LichEquip", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @77 /* ~Yes.~*/
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
		
		IF ~~ THEN REPLY @68 /* ~Detect Invisibility (Default).~*/
		DO ~
			SetGlobal("XA_LD_LichSenses", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @69 /* ~Detect Invisibility and True Sight.~*/
		DO ~
			SetGlobal("XA_LD_LichSenses", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @70 /* ~None.~ */
		DO ~
			SetGlobal("XA_LD_LichSenses", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @28 /*Back to main menu.*/
		GOTO XA_MainMenu
	END
	
	IF ~~ THEN BEGIN XA_AdvanceTime
		SAY @61
		
		IF ~~ THEN REPLY @62 /* ~One Hour.~*/
		DO ~
			AdvanceTime(ONE_HOUR)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @63 /* ~Two Hours.~*/
		DO ~
			AdvanceTime(TWO_HOURS)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @64 /* ~Four Hours.~*/
		DO ~
			AdvanceTime(FOUR_HOURS)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @65 /* ~Eight Hours.~*/
		DO ~
			AdvanceTime(EIGHT_HOURS)
		~
		GOTO XA_MainMenu
		
		IF ~~ THEN REPLY @66 /* ~One Day.~*/
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

	

	IF ~~ THEN BEGIN XA_LichCost
		SAY @3 /*~Change Lichdom transformation cost.~*/
		
		IF ~~ THEN REPLY @4 /*~120,000 gold (Default).~*/
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 0)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @5  /*~100,000 gold.~ */
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 1)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @6  /* ~75,000 gold.~*/
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 2)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @7  /*~50,000 gold.~ */
		DO ~
			SetGlobal("XA_LD_TransformationCost", "GLOBAL", 3)
		~
		GOTO XA_ChangeProcessed
		
		IF ~~ THEN REPLY @8  /* ~40,000 gold.~*/
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
	
	IF ~~ THEN BEGIN XA_DebugInit
		SAY @100
		
		IF ~~ THEN REPLY @217
		DO ~
			CreateCreature("EDWIN12", [-1.-1], N)
			ActionOverride("Edwin", JoinParty())
		~
		EXIT
		
		IF ~~ THEN REPLY @196
		DO ~
			SetGlobal("XA_LD_MetMorrisInAthkatla", "GLOBAL", 0)
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @197
		DO ~
			SetGlobal("XA_LD_MetMorrisInAthkatla", "GLOBAL", 1)
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @198
		DO ~
			SetGlobal("XA_LD_MetMorrisInSaradush", "GLOBAL", 0)
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @199
		DO ~
			SetGlobal("XA_LD_MetMorrisInSaradush", "GLOBAL", 1)
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @193
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("AR0800", "", [0.0], N))
			ActionOverride(Player2, LeaveAreaLUA("AR0800", "", [0.0], N))
			ActionOverride(Player3, LeaveAreaLUA("AR0800", "", [0.0], N))
			ActionOverride(Player4, LeaveAreaLUA("AR0800", "", [0.0], N))
			ActionOverride(Player5, LeaveAreaLUA("AR0800", "", [0.0], N))
			ActionOverride(Player6, LeaveAreaLUA("AR0800", "", [0.0], N))
		~
		EXIT
		
		IF ~~ THEN REPLY @194
		DO ~
			ActionOverride(Player1, LeaveAreaLUA("AR5000", "", [0.0], N))
			ActionOverride(Player2, LeaveAreaLUA("AR5000", "", [0.0], N))
			ActionOverride(Player3, LeaveAreaLUA("AR5000", "", [0.0], N))
			ActionOverride(Player4, LeaveAreaLUA("AR5000", "", [0.0], N))
			ActionOverride(Player5, LeaveAreaLUA("AR5000", "", [0.0], N))
			ActionOverride(Player6, LeaveAreaLUA("AR5000", "", [0.0], N))
		~
		EXIT
		
		IF ~~ THEN REPLY @195
		DO ~
			GiveGoldForce(200000)
		~
		EXIT
		
		IF ~~ THEN REPLY @143
		GOTO XA_ReportRace
		
		IF ~~ THEN REPLY @178
		GOTO XA_UndeadCheck
		
		IF ~~ THEN REPLY @154
		DO ~
			CreateCreature("XALDGD", [-1.-1], N)
		~
		EXIT
		
		IF ~~ THEN REPLY @200
		DO ~
			CreateCreature("XALDGD2", [-1.-1], N)
		~
		EXIT
		
		IF ~~ THEN REPLY @201
		DO ~
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
			GiveItemCreate("godbow", Player1, 0,0,0)
		~
		EXIT
		
		IF ~~ THEN REPLY @152
		DO ~
			SetGlobal("XA_LD_AR0800", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @153
		DO ~
			SetGlobal("XA_LD_AR5000", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @149
		DO ~
			GiveItemCreate("xalddust", Player1, 0,0,0)
		~
		EXIT
		
		IF ~~ THEN REPLY @150
		DO ~
			GiveItemCreate("xalddust", Player1, 0,0,0)
			GiveItemCreate("xalddust", Player1, 0,0,0)
		~
		EXIT
		
		IF ~~ THEN REPLY @151
		DO ~
			GiveItemCreate("xalddust", Player1, 0,0,0)
			GiveItemCreate("xalddust", Player1, 0,0,0)
			GiveItemCreate("xalddust", Player1, 0,0,0)
		~
		EXIT
		
		IF ~~ THEN REPLY @155
		GOTO XA_LD_AddCharacter
		
		IF ~~ THEN REPLY @145
		DO ~
			CreateCreature("xaldgd", [-1.-1], S)
		~
		EXIT
		
		IF ~~ THEN REPLY @137
		DO ~
			ActionOverride(Player1, SetGlobal("XA_LD_TransformLich", "LOCALS", 1))
			SetGlobal("XA_LD_PerformRitual", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @138
		DO ~
			ActionOverride(Player2, SetGlobal("XA_LD_TransformLich", "LOCALS", 1))
			SetGlobal("XA_LD_PerformRitual", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @139
		DO ~
			ActionOverride(Player3, SetGlobal("XA_LD_TransformLich", "LOCALS", 1))
			SetGlobal("XA_LD_PerformRitual", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @140
		DO ~
			ActionOverride(Player4, SetGlobal("XA_LD_TransformLich", "LOCALS", 1))
			SetGlobal("XA_LD_PerformRitual", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @141
		DO ~
			ActionOverride(Player5, SetGlobal("XA_LD_TransformLich", "LOCALS", 1))
			SetGlobal("XA_LD_PerformRitual", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @142
		DO ~
			ActionOverride(Player6, SetGlobal("XA_LD_TransformLich", "LOCALS", 1))
			SetGlobal("XA_LD_PerformRitual", "GLOBAL", 1)
		~
		EXIT
		
		IF ~~ THEN REPLY @136
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldanim", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @224
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldrvrt", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @131
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldsi01", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @132
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldsi02", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @133
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldsi03", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @134
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldsi04", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @135
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldsi05", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @114
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldiwc0", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @115
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldiwc1", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @109
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldac00", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @110
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldac01", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @111
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldac02", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @112
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldac03", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @113
		DO ~
			ActionOverride(Player1, ReallyForceSpellRES("xaldac04", Myself))
		~
		EXIT
		
		IF ~~ THEN REPLY @101
		DO ~
			ReallyForceSpellRES("xaplich", Player1)
		~
		EXIT
		
		IF ~~ THEN REPLY @103
		DO ~
			GiveItemCreate("xaphyl", LastTalkedToBy(Myself),1,0,0)
		~
		EXIT
		
		IF ~~ THEN REPLY @104
		DO ~
			ActionOverride(Player1, ChangeAnimationNoEffect("LICH01"))
		~
		EXIT
		
		IF ~~ THEN REPLY @105
		DO ~
			ActionOverride(Player1, ChangeAnimation("LICH01"))
		~
		EXIT
		
		IF ~~ THEN REPLY @106
		DO ~
			ActionOverride(Player1, Polymorph(BEHOLDER))
		~
		EXIT
		
		IF ~~ THEN REPLY @107
		DO ~
			ActionOverride(Player1, Polymorph(LICH))
		~
		EXIT
		
		IF ~~ THEN REPLY @146
		DO ~
			GiveItemCreate("xaldcrwn", LastTalkedToBy(Myself),1,0,0)
		~
		EXIT
		
		IF ~~ THEN REPLY @148 /* ~Advance the time by 8 hours.~*/
		DO ~
			AdvanceTime(EIGHT_HOURS)
		~
		EXIT
		
		IF ~~ THEN REPLY @205
		GOTO XA_LD_CheckPhylacteries
		
		IF ~~ THEN REPLY @218
		DO ~
			ReallyForceSpellRES("xaldrez", Player1)
		~
		EXIT
		
		IF ~~ THEN REPLY @219
		DO ~
			ReallyForceSpellRES("xaldrez", Player2)
		~
		EXIT
		
		IF ~~ THEN REPLY @220
		DO ~
			ReallyForceSpellRES("xaldrez", Player3)
		~
		EXIT
		
		IF ~~ THEN REPLY @221
		DO ~
			ReallyForceSpellRES("xaldrez", Player4)
		~
		EXIT
		
		IF ~~ THEN REPLY @222
		DO ~
			ReallyForceSpellRES("xaldrez", Player5)
		~
		EXIT
		
		IF ~~ THEN REPLY @223
		DO ~
			ReallyForceSpellRES("xaldrez", Player6)
		~
		EXIT
		
		IF ~
			Global("XA_LD_DisableAssistant", "GLOBAL", 1)
		~
		THEN REPLY @192  /* ~Remove Lichdom Assistant ability.~*/
		DO ~
			SetGlobal("XA_LD_DisableAssistant", "GLOBAL", 0)
		~
		GOTO XA_DebugInit
		
		IF ~
			GlobalLT("XA_LD_DisableAssistant", "GLOBAL", 1)
		~
		THEN REPLY @191  /* ~Remove Lichdom Assistant ability.~*/
		DO ~
			SetGlobal("XA_LD_DisableAssistant", "GLOBAL", 1)
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @102 /* ~Exit.~*/
		EXIT	
		
		IF ~~ THEN REPLY @147 /* ~Dismiss Debugger.~*/
		DO ~
			DestroySelf()
		~
		EXIT
	END

	IF ~~ THEN BEGIN XA_LD_CheckPhylacteries
		SAY @205
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",0)~ THEN REPLY @206
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",1)~ THEN REPLY @207
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",2)~ THEN REPLY @208
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",3)~ THEN REPLY @209
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",4)~ THEN REPLY @210
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",5)~ THEN REPLY @211
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",6)~ THEN REPLY @212
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",7)~ THEN REPLY @213
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",8)~ THEN REPLY @214
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",9)~ THEN REPLY @215
		GOTO XA_DebugInit
		
		IF ~Global("XA_LD_PhylacteriesCreated","GLOBAL",10)~ THEN REPLY @216
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @177
		GOTO XA_DebugInit
	END

	IF ~~ THEN BEGIN XA_UndeadCheck
		SAY @178
		
		IF ~
			General(Player1, UNDEAD)
		~ THEN REPLY @179
		GOTO XA_DebugInit
		
		IF ~
			General(Player2, UNDEAD)
		~ THEN REPLY @180
		GOTO XA_DebugInit
		
		IF ~
			General(Player3, UNDEAD)
		~ THEN REPLY @181
		GOTO XA_DebugInit
		
		IF ~
			General(Player4, UNDEAD)
		~ THEN REPLY @182
		GOTO XA_DebugInit
		
		IF ~
			General(Player5, UNDEAD)
		~ THEN REPLY @183
		GOTO XA_DebugInit
		
		IF ~
			General(Player6, UNDEAD)
		~ THEN REPLY @184
		GOTO XA_DebugInit
		
		IF ~
			!General(Player1, UNDEAD)
		~ THEN REPLY @185
		GOTO XA_DebugInit
		
		IF ~
			!General(Player2, UNDEAD)
		~ THEN REPLY @186
		GOTO XA_DebugInit
		
		IF ~
			!General(Player3, UNDEAD)
		~ THEN REPLY @187
		GOTO XA_DebugInit
		
		IF ~
			!General(Player4, UNDEAD)
		~ THEN REPLY @188
		GOTO XA_DebugInit
		
		IF ~
			!General(Player5, UNDEAD)
		~ THEN REPLY @189
		GOTO XA_DebugInit
		
		IF ~
			!General(Player6, UNDEAD)
		~ THEN REPLY @190
		GOTO XA_DebugInit
	END

	IF ~~ THEN BEGIN XA_LD_AddCharacter
		SAY @155
		
		IF ~~ THEN REPLY @156 /* ~Aerie (AERIE12).~*/
		DO ~
			CreateCreature("AERIE12", [-1.-1], S)
			ActionOverride("Aerie", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @157 /* Anomen */
		DO ~
			CreateCreature("ANOMEN9", [-1.-1], S)
			ActionOverride("Anomen", JoinParty()) 
		~
		GOTO XA_DebugInit
			
		IF ~~ THEN REPLY @158 /* ~Cernd (CERND12.CRE)~ */
		DO ~
			CreateCreature("CERND12", [-1.-1], S)
			ActionOverride("Cernd", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @159 /* @86 = ~Dorn (DORN10.CRE)~*/
		DO ~
			CreateCreature("DORN10", [-1.-1], S)
			ActionOverride("Dorn", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @160 /* @88 = ~Edwin (EDWIN11.CRE)~*/
		DO ~
			CreateCreature("EDWIN11", [-1.-1], S)
			ActionOverride("Edwin", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @161 /* @87 = ~HaerDalis (HAER10.CRE)~*/
		DO ~
			CreateCreature("HAER10", [-1.-1], S)
			ActionOverride("HaerDalis", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @162 /* ~Hexxat (OHHEX15).~*/
		DO ~
			CreateCreature("OHHEX15", [-1.-1], S)
			ActionOverride("Hexxat", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @163 /* ~Imoen (IMOEN10).~*/
		DO ~
			CreateCreature("IMOEN10", [-1.-1], S)
			ActionOverride("Imoen2", JoinParty())
		~
		GOTO XA_DebugInit
			
		IF ~~ THEN REPLY @164 /* ~Jaheira (JAHEIR11).~*/
		DO ~
			CreateCreature("JAHEIR11", [-1.-1], S)
			ActionOverride("Jaheira", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @165 /* ~Jan (JAN12).~*/
		DO ~
			CreateCreature("JAN12", [-1.-1], S)
			ActionOverride("Jan", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @166 /* ~Keldorn (KELDOR12).~*/
		DO ~
			CreateCreature("KELDOR12", [-1.-1], S)
			ActionOverride("Keldorn", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @167 /* ~Korgan (KORGAN11).~*/
		DO ~
			CreateCreature("KORGAN11", [-1.-1], S)
			ActionOverride("Korgan", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @168 /* ~Mazzy (MAZZY11).~*/
		DO ~
			CreateCreature("MAZZY11", [-1.-1], S)
			ActionOverride("Mazzy", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @169 /* ~Minsc (MINSC9).~*/
		DO ~
			CreateCreature("MINSC9", [-1.-1], S)
			ActionOverride("Minsc", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @170 /* ~Nalia (NALIA11).~*/
		DO ~
			CreateCreature("NALIA11", [-1.-1], S)
			ActionOverride("Nalia", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @171 /* ~Neera (NEERA8).~*/
		DO ~
			CreateCreature("NEERA8", [-1.-1], S)
			ActionOverride("Neera", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @172
		DO ~
			CreateCreature("RASAAD9", [-1.-1], S)
			ActionOverride("Rasaad", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @173 /* @503 = ~Sarevok (SAREVOK.CRE)~*/
		DO ~
			CreateCreature("SAREVOK", [-1.-1], S)
			ActionOverride("Sarevok", JoinParty())
		~
		GOTO XA_DebugInit
		
		
		
		IF ~~ THEN REPLY @174 /* ~Valygar (VALYG9.CRE)~*/
		DO ~
			CreateCreature("VALYG9", [-1.-1], S)
			ActionOverride("Valygar", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @175 /* @7 = ~Viconia (VICONI13).~*/
		DO ~
			CreateCreature("VICONI13", [-1.-1], S)
			ActionOverride("Viconia", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @176 /* @84 = ~Yoshimo (YOSHI10.CRE)~*/
		DO ~
			CreateCreature("YOSHI10", [-1.-1], S)
			ActionOverride("Yoshimo", JoinParty())
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @177
		GOTO XA_DebugInit
	END

	IF ~~ THEN BEGIN XA_ReportRace
		SAY @144
		
		IF ~~ THEN
		GOTO XA_DebugInit
	END
	
	IF ~~ THEN BEGIN XA_LaunchDebugger
		SAY @202 /*~WARNING: The debugger is meant to be used for testing purposes only. Improper alterations to the game state can crash the game, or make it so that you cannot complete the game.~ */
		
		IF ~~ THEN REPLY @203 /* ~I understand the risks. Proceed.~*/
		DO ~
			SetGlobal("XA_LD_DebugAcknowledge", "GLOBAL", 1)
		~
		GOTO XA_DebugInit
		
		IF ~~ THEN REPLY @204
		GOTO XA_MainMenu
	END
//}