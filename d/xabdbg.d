BEGIN ~xabdbg~

IF ~
	True()
~ THEN BEGIN XA_DebugInit
	SAY @0
	
	IF ~~ THEN REPLY @1
	DO ~
		ReallyForceSpellRES("xaplich", Player1)
	~
	EXIT
	
	IF ~~ THEN REPLY @2
	EXIT	
END