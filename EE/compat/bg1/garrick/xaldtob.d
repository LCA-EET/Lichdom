EXTEND_BOTTOM XALDGD2 15
	IF ~
		IsValidForPartyDialogue("7XGAR")
		!General("7XGAR", UNDEAD)
		LevelGT("7XGAR", 11)
	~
	THEN REPLY @20 /*~(Choose Garrick.)~*/
	EXTERN 7XGAR25J XA_LD_ChooseGarrick
END

EXTEND_BOTTOM XALDGD2 18
	IF ~
		IsValidForPartyDialogue("7XGAR")
		!General("7XGAR", UNDEAD)
		LevelGT("7XGAR", 11)
	~
	THEN REPLY @20 /*~(Choose Garrick.)~*/
	EXTERN 7XGAR25J XA_LD_ChooseGarrick	
END

INTERJECT_COPY_TRANS2 XALDGD2 75 XA_LD_7XGAR25J_75
	== 7XGAR25J
	IF ~
		IsValidForPartyDialogue("7XGAR")
	~
	@21  /*  ~Garrick sings, “Necromance if you want to.  You can bring your friends to life.  If that is your stance then there is a chance that they’ll be back in no time.”~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 76 XA_LD_7XGAR25J_76
	== 7XGAR25J
	IF ~
		IsValidForPartyDialogue("7XGAR")
	~
	@22 /*~Garrick sings, “Necromance if you want to.  You can leave the world behind.  If they’re not rot and if they are dead then things should turn out fine.”~*/
END

INTERJECT_COPY_TRANS2 XALDGD2 77 XA_LD_7XGAR25J_77
	== 7XGAR25J
	IF ~
		IsValidForPartyDialogue("7XGAR")
	~
	@22 /*~Garrick sings, “Necromance if you want to.  You can leave the world behind.  If they’re not rot and if they are dead then things should turn out fine.”~*/
END

APPEND 7XGAR25J
	IF ~~ THEN BEGIN XA_LD_ChooseGarrick
		SAY @23 /*~Garrick sings, “Necromance.  Necromance.  Everybody, recite your chants!”~*/
		
		= @24 /* ~Ahem.~*/
		
		= @25 /* ~Eternal life, you say?  More magical power?  Protection from angry mobs with torches, pitchforks, and rotten vegetables?  I agree to your terms, for the show must go on!~*/
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 74
	END
END
