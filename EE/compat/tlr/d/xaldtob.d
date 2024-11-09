EXTEND_BOTTOM XALDGD2 15
	IF ~
		IsValidForPartyDialogue("lrIrenic")
		!General("lrIrenic", UNDEAD)
		LevelGT("lrIrenic", 11)
	~
	THEN REPLY @5 /*~(Choose Irenicus.)~*/
	EXTERN XALDGD2 XA_LD_ChooseIrenicus_Chain
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("lrIrenic")
		!General("lrIrenic", UNDEAD)
		LevelGT("lrIrenic", 11)
	~
	THEN REPLY @5 /*~(Choose Irenicus.)~*/
	EXTERN XALDGD2 XA_LD_ChooseIrenicus_Chain
END

CHAIN XALDGD2 XA_LD_ChooseIrenicus_Chain
	@3 /*~Morris looks inquisitively at Irenicus.  “Is this not what you wanted - your immortality returned?”~ [xald1037]*/
	== JONEL25J
	@4 /*~I see you possess at least a basic repertoire of useful knowledge.  This is an offer I -will- accept!~ [xald1098]*/
	DO ~
		SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
	~
END XALDGD2 74

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_JONEL25J_75
	== JONEL25J
	IF ~
		IsValidForPartyDialogue("lrIrenic")
	~
	@0 /*~You are the child of a god, <CHARNAME>.  It is your -right- to rule!~ [xald1096]*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_JONEL25J_76
	== JONEL25J
	IF ~
		IsValidForPartyDialogue("lrIrenic")
	~
	@2 /*~<CHARNAME>, it is time that you -embraced- that which is your birthright.~ [xald1097]*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_JONEL25J_77
	== JONEL25J
	IF ~
		IsValidForPartyDialogue("lrIrenic")
	~
	@2 /*~<CHARNAME>, it is time that you -embraced- that which is your birthright.~ [xald1097]*/
END