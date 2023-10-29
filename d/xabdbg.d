BEGIN ~xabdbg~

IF ~
	True()
~ THEN BEGIN XA_DebugInit
	SAY @0
	
	IF ~~ THEN REPLY @43
	GOTO XA_ReportRace
	
	IF ~~ THEN REPLY @45
	DO ~
		CreateCreature("xaldgd", [-1.-1], S)
	~
	EXIT
	
	IF ~~ THEN REPLY @37
	DO ~
		ChangeRace(Player1, LICH)
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
	
	IF ~~ THEN REPLY @2
	EXIT	
END

IF ~~ THEN BEGIN XA_ReportRace
	SAY @44
	
	IF ~~ THEN
	GOTO XA_DebugInit
END