BEGIN ~xabdbg~

IF ~
	True()
~ THEN BEGIN XA_DebugInit
	SAY @0
	
	IF ~~ THEN REPLY @43
	GOTO XA_ReportRace
	
	IF ~~ THEN REPLY @78
	GOTO XA_UndeadCheck
	
	IF ~~ THEN REPLY @54
	DO ~
		CreateCreature("XALDGD", [-1.-1], N)
	~
	EXIT
	
	IF ~~ THEN REPLY @52
	DO ~
		SetGlobal("XA_LD_AR0800", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @53
	DO ~
		SetGlobal("XA_LD_AR5000", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @49
	DO ~
		GiveItemCreate("xalddust", Player1, 0,0,0)
	~
	EXIT
	
	IF ~~ THEN REPLY @50
	DO ~
		GiveItemCreate("xalddust", Player1, 0,0,0)
		GiveItemCreate("xalddust", Player1, 0,0,0)
	~
	EXIT
	
	IF ~~ THEN REPLY @51
	DO ~
		GiveItemCreate("xalddust", Player1, 0,0,0)
		GiveItemCreate("xalddust", Player1, 0,0,0)
		GiveItemCreate("xalddust", Player1, 0,0,0)
	~
	EXIT
	
	IF ~~ THEN REPLY @55
	GOTO XA_LD_AddCharacter
	
	IF ~~ THEN REPLY @45
	DO ~
		CreateCreature("xaldgd", [-1.-1], S)
	~
	EXIT
	
	IF ~~ THEN REPLY @37
	DO ~
		ChangeRace(Player1, LICH)
		SetGlobal("XA_LD_Player1IsLich", "GLOBAL", 1)
	~
	EXIT
	
	IF ~~ THEN REPLY @38
	DO ~
		ChangeRace(Player2, LICH)
	~
	EXIT
	
	IF ~~ THEN REPLY @39
	DO ~
		ChangeRace(Player3, LICH)
	~
	EXIT
	
	IF ~~ THEN REPLY @40
	DO ~
		ChangeRace(Player4, LICH)
	~
	EXIT
	
	IF ~~ THEN REPLY @41
	DO ~
		ChangeRace(Player5, LICH)
	~
	EXIT
	
	IF ~~ THEN REPLY @42
	DO ~
		ChangeRace(Player6, LICH)
	~
	EXIT
	
	IF ~~ THEN REPLY @36
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldanim", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @31
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldsi01", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @32
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldsi02", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @33
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldsi03", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @34
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldsi04", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @35
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldsi05", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @14
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldiwc0", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @15
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldiwc1", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @9
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldac00", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @10
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldac01", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @11
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldac02", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @12
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldac03", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @13
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldac04", Myself))
	~
	EXIT
	
	IF ~~ THEN REPLY @1
	DO ~
		ReallyForceSpellRES("xaplich", Player1)
	~
	EXIT
	
	IF ~~ THEN REPLY @3
	DO ~
		GiveItemCreate("xaphyl", LastTalkedToBy(Myself),1,0,0)
	~
	EXIT
	
	IF ~~ THEN REPLY @4
	DO ~
		ActionOverride(Player1, ChangeAnimationNoEffect("LICH01"))
	~
	EXIT
	
	IF ~~ THEN REPLY @5
	DO ~
		ActionOverride(Player1, ChangeAnimation("LICH01"))
	~
	EXIT
	
	IF ~~ THEN REPLY @6
	DO ~
		ActionOverride(Player1, Polymorph(BEHOLDER))
	~
	EXIT
	
	IF ~~ THEN REPLY @7
	DO ~
		ActionOverride(Player1, Polymorph(LICH))
	~
	EXIT
	
	IF ~~ THEN REPLY @46
	DO ~
		GiveItemCreate("xaldcrwn", LastTalkedToBy(Myself),1,0,0)
	~
	EXIT
	
	IF ~~ THEN REPLY @48
	DO ~
		AdvanceTime(EIGHT_HOURS)
	~
	EXIT
	
	IF ~~ THEN REPLY @2
	EXIT	
	
	IF ~~ THEN REPLY @47
	DO ~
		DestroySelf()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_UndeadCheck
	SAY @78
	
	IF ~
		General(Player1, UNDEAD)
	~ THEN REPLY @79
	GOTO XA_DebugInit
	
	IF ~
		General(Player2, UNDEAD)
	~ THEN REPLY @80
	GOTO XA_DebugInit
	
	IF ~
		General(Player3, UNDEAD)
	~ THEN REPLY @81
	GOTO XA_DebugInit
	
	IF ~
		General(Player4, UNDEAD)
	~ THEN REPLY @82
	GOTO XA_DebugInit
	
	IF ~
		General(Player5, UNDEAD)
	~ THEN REPLY @83
	GOTO XA_DebugInit
	
	IF ~
		General(Player6, UNDEAD)
	~ THEN REPLY @84
	GOTO XA_DebugInit
	
	IF ~
		!General(Player1, UNDEAD)
	~ THEN REPLY @85
	GOTO XA_DebugInit
	
	IF ~
		!General(Player2, UNDEAD)
	~ THEN REPLY @86
	GOTO XA_DebugInit
	
	IF ~
		!General(Player3, UNDEAD)
	~ THEN REPLY @87
	GOTO XA_DebugInit
	
	IF ~
		!General(Player4, UNDEAD)
	~ THEN REPLY @88
	GOTO XA_DebugInit
	
	IF ~
		!General(Player5, UNDEAD)
	~ THEN REPLY @89
	GOTO XA_DebugInit
	
	IF ~
		!General(Player6, UNDEAD)
	~ THEN REPLY @90
	GOTO XA_DebugInit
END

IF ~~ THEN BEGIN XA_LD_AddCharacter
	SAY @55
	
	IF ~~ THEN REPLY @56 /* ~Aerie (AERIE12).~*/
	DO ~
		CreateCreature("AERIE12", [-1.-1], S)
		ActionOverride("Aerie", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @57 /* Anomen */
	DO ~
		CreateCreature("ANOMEN9", [-1.-1], S)
		ActionOverride("Anomen", JoinParty()) 
	~
	GOTO XA_DebugInit
		
	IF ~~ THEN REPLY @58 /* ~Cernd (CERND12.CRE)~ */
	DO ~
		CreateCreature("CERND12", [-1.-1], S)
		ActionOverride("Cernd", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @59 /* @86 = ~Dorn (DORN10.CRE)~*/
	DO ~
		CreateCreature("DORN10", [-1.-1], S)
		ActionOverride("Dorn", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @60 /* @88 = ~Edwin (EDWIN11.CRE)~*/
	DO ~
		CreateCreature("EDWIN11", [-1.-1], S)
		ActionOverride("Edwin", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @61 /* @87 = ~HaerDalis (HAER10.CRE)~*/
	DO ~
		CreateCreature("HAER10", [-1.-1], S)
		ActionOverride("HaerDalis", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @62 /* ~Hexxat (OHHEX15).~*/
	DO ~
		CreateCreature("OHHEX15", [-1.-1], S)
		ActionOverride("Hexxat", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @63 /* ~Imoen (IMOEN10).~*/
	DO ~
		CreateCreature("IMOEN10", [-1.-1], S)
		ActionOverride("Imoen2", JoinParty())
	~
	GOTO XA_DebugInit
		
	IF ~~ THEN REPLY @64 /* ~Jaheira (JAHEIR11).~*/
	DO ~
		CreateCreature("JAHEIR11", [-1.-1], S)
		ActionOverride("Jaheira", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @65 /* ~Jan (JAN12).~*/
	DO ~
		CreateCreature("JAN12", [-1.-1], S)
		ActionOverride("Jan", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @66 /* ~Keldorn (KELDOR12).~*/
	DO ~
		CreateCreature("KELDOR12", [-1.-1], S)
		ActionOverride("Keldorn", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @67 /* ~Korgan (KORGAN11).~*/
	DO ~
		CreateCreature("KORGAN11", [-1.-1], S)
		ActionOverride("Korgan", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @68 /* ~Mazzy (MAZZY11).~*/
	DO ~
		CreateCreature("MAZZY11", [-1.-1], S)
		ActionOverride("Mazzy", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @69 /* ~Minsc (MINSC9).~*/
	DO ~
		CreateCreature("MINSC9", [-1.-1], S)
		ActionOverride("Minsc", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @70 /* ~Nalia (NALIA11).~*/
	DO ~
		CreateCreature("NALIA11", [-1.-1], S)
		ActionOverride("Nalia", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @71 /* ~Neera (NEERA8).~*/
	DO ~
		CreateCreature("NEERA8", [-1.-1], S)
		ActionOverride("Neera", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @72
	DO ~
		CreateCreature("RASAAD9", [-1.-1], S)
		ActionOverride("Rasaad", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @73 /* @503 = ~Sarevok (SAREVOK.CRE)~*/
	DO ~
		CreateCreature("SAREVOK", [-1.-1], S)
		ActionOverride("Sarevok", JoinParty())
	~
	GOTO XA_DebugInit
	
	
	
	IF ~~ THEN REPLY @74 /* ~Valygar (VALYG9.CRE)~*/
	DO ~
		CreateCreature("VALYG9", [-1.-1], S)
		ActionOverride("Valygar", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @75 /* @7 = ~Viconia (VICONI13).~*/
	DO ~
		CreateCreature("VICONI13", [-1.-1], S)
		ActionOverride("Viconia", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @76 /* @84 = ~Yoshimo (YOSHI10.CRE)~*/
	DO ~
		CreateCreature("YOSHI10", [-1.-1], S)
		ActionOverride("Yoshimo", JoinParty())
	~
	GOTO XA_DebugInit
	
	IF ~~ THEN REPLY @77
	GOTO XA_DebugInit
END

IF ~~ THEN BEGIN XA_ReportRace
	SAY @44
	
	IF ~~ THEN
	GOTO XA_DebugInit
END