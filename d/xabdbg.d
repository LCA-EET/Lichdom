BEGIN ~xabdbg~

IF ~
	True()
~ THEN BEGIN XA_DebugInit
	SAY @0
	
	IF ~~ THEN REPLY @8
	DO ~
		ActionOverride(Player1, ReallyForceSpellRES("xaldlich", Myself))
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
		ActionOverride(Player1, PolymorphCopy("lich01"))
	~
	EXIT
	
	IF ~~ THEN REPLY @2
	EXIT	
END