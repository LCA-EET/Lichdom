APPEND DORN25J
	IF ~~ THEN BEGIN XA_LD_ChooseDorn
		SAY @0 /*~You offer me an eternal life of death and conquest?  When we first met, I never -dreamed- such a proposal was within your means!~*/
		
		IF ~~ THEN REPLY @1 /*~Is that a “Thanks, yes?” or a “Thanks, no?”~*/
		GOTO XA_LD_ChooseDorn2
		
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseDorn2
		SAY @2 /*~<CHARNAME>, that is a “Thanks, yes,” if your offer is true.~*/
		
		IF ~~ THEN REPLY @3 /*~Deal.~*/
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 XA_LD_Transform
		
		IF ~~ THEN REPLY @4 /*~No deal.  I don’t like wishy-washy.~*/
		GOTO XA_LD_ChooseDorn3
		
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseDorn3
		SAY @5 /*~<Dorn snarls at <CHARNAME>.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 XA_LD_ChooseAnother
	END
END

APPEND IMOEN25J
	IF ~~ THEN BEGIN XA_LD_ChooseImoen
		SAY @6 /*~You want me to... do this?  I could, but... this is the sorta magic Gorion warned us about.~*/
		
		IF ~~ THEN REPLY @7 /*~Gorion knew all about this and chose to die rather than use it.~*/
		GOTO XA_LD_ChooseImoen2
		
		IF ~~ THEN REPLY @9 /*~What would persuade you to accept this?~*/
		GOTO XA_LD_ChooseImoen3
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseImoen2
		SAY @8 /*~Yeah, but that’s the way of the world, isn’t it?  You do the best you can for the ones you love, even if it hurts.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 XA_LD_ChooseAnother
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseImoen3
		SAY @10 /*~I... I don’t know.  It’s all creepy to me.  Losing my mind to become eternal just seems wrong, y’know?~*/
		
		IF ~~ THEN REPLY @11 /*~I get it.  It isn’t every day that people can choose to become undead.~*/
		GOTO XA_LD_ChooseImoen4A
		
		IF ~~ THEN REPLY @13 /*~I wanted to let you know that becoming a lich means you keep your mind - or it becomes even sharper!  No bone puns intended.~*/
		GOTO XA_LD_ChooseImoen4B
		
		IF ~~ THEN REPLY @16 /*~Sis, we still lost Gorion and I don’t want to lose you.  Whatever we’re facing is likely only getting more difficult from here.  Will you please accept this gift?~*/
		GOTO XA_LD_ChooseImoen4C
		
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseImoen4A
		SAY @12 /*~Yeah.  Let’s just say ‘no’ to this lich thing for me.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 XA_LD_ChooseAnother
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseImoen4B
		SAY @14 /* ~(Imoen looks uncomfortably at <CHARNAME>.)~ */
		
		= @15 /*~My suspicion for the undead is showing, isn’t it?~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 XA_LD_ChooseAnother
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseImoen4C
		SAY @17 /*~Well, <PRO_BROTHERSISTER>, when you put it -that- way...  I’ll do it.~*/
	
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 XA_LD_Transform
	END
END

APPEND NALIA25J
	IF ~~ THEN BEGIN XA_LD_ChooseNalia
		SAY @18 /*~A lich?  But... isn’t that disgusting, evil, and -expensive?-  Wouldn’t I be a hypocrite if I did it?~*/
		
		IF ~~ THEN REPLY @19 /*~Nalia, you want to help your people.  You can’t do that if you’re -dead.-~ */
		GOTO XA_LD_ChooseNalia2A
		
		IF ~~ THEN REPLY @22 /* ~What do you think about living forever?~*/
		GOTO XA_LD_ChooseNalia2B
		
		IF ~~ THEN REPLY @25 /*~So, what do you say?~ */
		GOTO XA_LD_ChooseNalia2C
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseNalia2A
		SAY @20 /*~(Nalia sighs.)~*/
		
		= @21 /*~I know.~*/
		
		IF ~~ THEN REPLY @22 /* ~What do you think about living forever?~*/
		GOTO XA_LD_ChooseNalia2B
		
		IF ~~ THEN REPLY @25 /*~So, what do you say?~ */
		GOTO XA_LD_ChooseNalia2C
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseNalia2B
		SAY @23 /*~(Nalia sighs.)~*/
		
		= @24 /*~I think it’s fine until you see all your friends and loved ones die.  Then what’s there to live for?  Serving your people who just keep dying of old age or famine or war?~*/
		
		IF ~~ THEN REPLY @19 /*~Nalia, you want to help your people.  You can’t do that if you’re -dead.-~ */
		GOTO XA_LD_ChooseNalia2A
		
		IF ~~ THEN REPLY @25 /*~So, what do you say?~ */
		GOTO XA_LD_ChooseNalia2C
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseNalia2C
		SAY @26 /*~<CHARNAME>, I know you’re trying to convince me, and I -know- you’re trying to be helpful, but I still say no.  There are other ways to help you, help me, and help my people.~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 XA_LD_ChooseAnother
	END
END

APPEND VICON25J
	IF ~~ THEN BEGIN XA_LD_ChooseViconia
		SAY @36 /*~<CHARNAME>, consider me grateful for your offer, but I am torn.  I -know- how my kind have treated the undead.~*/
		
		= @27 /*~However, lichdom is power, and a power -worthy- of respect!  If you truly mean it, <CHARNAME>, I shall -embrace- this power!~*/
		
		IF ~~ THEN REPLY @28 /* ~Viconia, receive this power!~*/
		GOTO XA_LD_ChooseViconia2A
		
		IF ~~ THEN REPLY @30 /* ~Your hesitation made -me- hesitate!~*/
		GOTO XA_LD_ChooseViconia2B		
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseViconia2A
		SAY @29 /*~(Viconia grins a sly, determined grin!)~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 XA_LD_Transform
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseViconia2B
		SAY @31 /*~Let me assure you, <CHARNAME>, that I -know- from -experience- what to expect, and it is a power for -me- to control!~*/
		
		IF ~~ THEN REPLY @32 /*~You seem -too- eager for this.  Not yet.~*/
		GOTO XA_LD_ChooseViconia3A
		
		IF ~~ THEN REPLY @34 /*~Enjoy your undeath.  May it be worth it.~*/
		GOTO XA_LD_ChooseViconia3B
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseViconia3A
		SAY @33 /*~(Viconia snarls at <CHARNAME>!)~*/
		
		IF ~~ THEN
		EXTERN XALDGD2 XA_LD_ChooseAnother
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseViconia3B
		SAY @35 /*~You have my appreciation, <CHARNAME>.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_TransformLich", "LOCALS", 1)
		~
		EXTERN XALDGD2 XA_LD_Transform
	END
END