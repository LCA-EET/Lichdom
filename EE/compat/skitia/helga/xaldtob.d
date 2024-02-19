EXTEND_BOTTOM XALDGD2 15
	IF ~
		IsValidForPartyDialogue("X3Hel")
		!General("X3Hel", UNDEAD)
		LevelGT("X3Hel", 11)
	~
	THEN REPLY @0 /*@0 = ~(Choose Helga.)~*/
	EXTERN X3Hel25J XA_LD_ChooseHelga
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("X3Hel")
		!General("X3Hel", UNDEAD)
		LevelGT("X3Hel", 11)
	~
	THEN REPLY @0 /*@0 = ~(Choose Helga.)~*/
	EXTERN X3Hel25J XA_LD_ChooseHelga
END

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_X3Hel25J_75
	== X3Hel25J
	IF ~
		IsValidForPartyDialogue("X3Hel")
	~
	@1 /*~As much as I don’t like it, at least ye ain’t forcin’ it on -me.-~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_X3Hel25J_76
	== X3Hel25J
	IF ~
		IsValidForPartyDialogue("X3Hel")
	~
	@2 /*~You as some necromantic bone <PRO_MANWOMAN>?  Ya really think Bhaal’s gonna notice the difference?~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_X3Hel25J_77
	== X3Hel25J
	IF ~
		IsValidForPartyDialogue("X3Hel")
	~
	@2 /*~You as some necromantic bone <PRO_MANWOMAN>?  Ya really think Bhaal’s gonna notice the difference?~*/
END

APPEND X3Hel25J
	IF ~~ THEN BEGIN XA_LD_ChooseHelga
		SAY @3 /*~Me?  A Lich?  M’ lady Haela Brightaxe would ne’er stand for it!~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 18
	END
END


