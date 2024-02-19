EXTEND_BOTTOM XALDGD 15
	//{ Ajantis
	IF ~
		IsValidForPartyDialogue("7XAJAN")
		!General("7XAJAN", UNDEAD)
		LevelGT("7XAJAN", 11)
	~
	THEN REPLY @10 /*~(Choose Ajantis.)~*/
	EXTERN 7XAJA25J XA_LD_ChooseAjantis
	//}
	
END

EXTEND_BOTTOM XALDGD 18
	//{ Ajantis
	IF ~
		IsValidForPartyDialogue("7XAJAN")
		!General("7XAJAN", UNDEAD)
		LevelGT("7XAJAN", 11)
	~
	THEN REPLY @10 /*~(Choose Ajantis.)~*/
	EXTERN 7XAJA25J XA_LD_ChooseAjantis
	//}
	
END

INTERJECT_COPY_TRANS2 XALDGD 75 XA_LD_7XAJA25J_75
	== 7XAJA25J
	IF ~
		IsValidForPartyDialogue("7XAJAN")
	~
	@9  /* ~What trickery is this?!  I should have known all you sought was unholy power!~*/
END

INTERJECT_COPY_TRANS2 XALDGD 76 XA_LD_7XAJA25J_76
	== 7XAJA25J
	IF ~
		!IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@12 /*~A thinly-veiled excuse for embracing a lust for power!  I cannot allow this!~*/
	DO ~
		SetGlobal("XA_LD_AjantisWillLeave", "GLOBAL", 1)
	~
	
	== 7XAJA25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@12  /*~A thinly-veiled excuse for embracing a lust for power!  I cannot allow this!~*/
	
	== KELDO25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@13  /*~<CHARNAME>, I do not deny the pain of the past when you felt helpless.  If you truly want to help others as you claim, there are -better- ways.~ */
	= @14  /* ~It is ultimately your choice, <CHARNAME>, but if you go through with this, I shall not stay.  For the sake of our friendship, I shall not slay you this day.  Do not provoke those of my order to wrath, for if you do, we WILL hunt you down and slay you, as painful to us as it may be!~*/
	
	== 7XAJA25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@15 /* ~(Ajantis sighs.)~*/
	= @16 /* ~Wise words, sir.~*/
	
	== KELDO25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@17  /*~Come, Ajantis.  Let us head where we are needed.~ */
	DO ~
		SetGlobal("XA_LD_AjantisWillLeave", "GLOBAL", 1)
		SetGlobal("XA_LD_KeldornWillLeave", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS2 XALDGD 77 XA_LD_7XAJA25J_77
	== 7XAJA25J
	IF ~
		!IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@12 /*~A thinly-veiled excuse for embracing a lust for power!  I cannot allow this!~*/
	DO ~
		SetGlobal("XA_LD_AjantisWillLeave", "GLOBAL", 1)
	~
	
	== 7XAJA25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@12  /*~A thinly-veiled excuse for embracing a lust for power!  I cannot allow this!~*/
	
	== KELDO25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@18  /*~Patience, Ajantis, patience.  I do not like the notion of a trusted companion becoming undead, but the return of an evil god is -far- more than -any- in our order can handle!  If <CHARNAME>’s decision offends your sensibilities, you may leave us.~*/
	
	== 7XAJA25J
	IF ~
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("7XAJAN")
	~
	@15 /* ~(Ajantis sighs.)~*/
	= @16 /* ~Wise words, sir.~*/
END

APPEND 7XAJA25J
	IF ~~ THEN BEGIN XA_LD_ChooseAjantis
		SAY @11 /*~~I -surely- hope you jest, <CHARNAME>!  I’ll not accept -any- such necromancy!~~*/
		
		IF ~~ THEN 
		EXTERN XALDGD 18
	END
END

ADD_STATE_TRIGGER 7XAJAN 0
~
	!Race(Player1, LICH)
~

ADD_STATE_TRIGGER 7XAJAN 5
~
	!Race(Player1, LICH)
~

ADD_STATE_TRIGGER 7XAJA25P 0
~
	!Race(Player1, LICH)
~

ADD_STATE_TRIGGER 7XAJA25P 4
~
	!Race(Player1, LICH)
~

APPEND 7XAJA25P
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_LD_WontJoin
		SAY @19  /* ~I expected -more- from you, <CHARNAME>.  You were the -hero- of Baldur’s Gate!  Out of mere respect for you, I pray for your redemption, but I’ll have NOTHING more to do with you!  Begone!~*/
		
		IF ~~ THEN
		EXIT
	END
END

APPEND 7XAJAN
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_LD_WontJoin
		SAY @19  /* ~I expected -more- from you, <CHARNAME>.  You were the -hero- of Baldur’s Gate!  Out of mere respect for you, I pray for your redemption, but I’ll have NOTHING more to do with you!  Begone!~*/
		
		IF ~~ THEN
		EXIT
	END
END


