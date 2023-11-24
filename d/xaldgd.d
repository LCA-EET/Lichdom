BEGIN ~XALDGD~

//{ Introductions

	IF ~
		NumTimesTalkedTo(0)
		AreaCheck("AR0800")
	~ THEN BEGIN XA_LD_IntroAthkatla_0
		SAY @0 /*~<You see a man in ornate robes whose every motion seems intentional, calm, and slow.  His voice seems wise with a tone that reminds you of Gorion’s voice, but with more crackle and spoken more slowly.  He smells clean despite his nearness to the dead  His demeanor is of one of great importance who seems to be in absolutely no hurry.>~ [xald0000]*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_LD_MetMorrisInAthkatla", "GLOBAL", 1)
		~
		GOTO XA_LD_IntroAthkatla
	END

	IF ~
		NumTimesTalkedTo(0)
		AreaCheck("AR5000")
		Global("XA_LD_MetMorrisInAthkatla", "GLOBAL", 1)
	~ THEN BEGIN XA_LD_IntroSaradush_0
		SAY @39  /* ~(You see a man who looks familiar to you.  His name soon comes to mind - Morris the Gravetender - and you last met him in Athkatla.  He again seems to be in absolutely no hurry.)~  [xald1059]*/
		
		= @40  /* ~"Ah, there you are.  I remember you, CHARNAME."~ [xald1060]*/
		
		COPY_TRANS XALDGD XA_LD_IntroAthkatla
	END

	IF ~
		NumTimesTalkedTo(0)
		AreaCheck("AR5000")
		Global("XA_LD_MetMorrisInAthkatla", "GLOBAL", 0)
	~ THEN BEGIN XA_LD_IntroSaradush_1
		SAY @41  /* ~(You see a man in ornate robes whose every motion seems intentional, calm, and slow.  His voice seems wise with a tone that reminds you of Gorion’s voice, but with more cracks and spoken more slowly.  He smells clean despite his nearness to the dead  His demeanor is of one of great importance who seems to be in absolutely no hurry.)~ [eemor100] */
		
		= @42  /* ~~"Ah, there you are.  You are one of the many people to have been curious about me.  I am Morris, a gravetender in Athkatla and now here in Saradush."~ [xald1076]*/
		
		IF ~~ THEN REPLY @43  /* ~What made you come here?~*/
		GOTO XA_LD_WhyComeToSaradush
		
		COPY_TRANS XALDGD XA_LD_IntroAthkatla
	END

//}

IF ~
	True()
~ THEN BEGIN XA_LD_IntroAthkatla
	SAY @1 /*~Ah, there you are.  I am Morris, and you are one of many people to have been curious about me.~ [xald0001]*/
	
	IF ~~ THEN REPLY @2 /*~I am curious.  Who are you?~*/
	GOTO XA_LD_WhoAreYou
	
	IF ~~ THEN REPLY @4 /*~Why are you here among the dead?~ [xald0002]*/
	GOTO XA_LD_WhyAreYouHere
	
	IF ~~ THEN REPLY @6 /*~What do you think about death?~*/
	GOTO XA_LD_ThoughtsOnDeath
	
	IF ~
		Global("XA_LD_MorrisKilledInAthkatla", "GLOBAL", 1)
	~ THEN REPLY @53 /*~You’re here!  And alive!  I thought you died!~*/
	GOTO XA_LD_Alive
	
	IF ~
		AreaCheck("AR5000")
		GlobalGT("XA_LD_RitualsPerformed", "GLOBAL", 0)
		GlobalLT("XA_LD_ThoughtsOnRitual", "LOCALS", 1)
		OR(6)
			Race(Player1, LICH)
			Race(Player2, LICH)
			Race(Player3, LICH)
			Race(Player4, LICH)
			Race(Player5, LICH)
			Race(Player6, LICH)
	~ THEN REPLY @67 /*~I have some things to say about that lichdom ritual you performed.~*/
	DO ~
		SetGlobal("XA_LD_ThoughtsOnRitual", "LOCALS", 1)
	~
	GOTO XA_LD_ThoughtsOnRitual
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnRitual
	SAY @68 /*~Morris raises his eyebrow at you in curiosity.~ [xald1066]*/
	
	IF ~~ THEN REPLY @69 /*~It was absolutely worth it!  Thank you!~*/
	GOTO XA_LD_ThoughtsOnRitual_1
	
	IF ~~ THEN REPLY @70 /*~I liked being a lich, but can I return to normal now?~*/
	GOTO XA_LD_ThoughtsOnRitual_2
	
	IF ~~ THEN REPLY @71 /*~I already felt regret over becoming a lich.~*/
	GOTO XA_LD_ThoughtsOnRitual_3
	
	IF ~~ THEN REPLY @72 /*~I just wanted to remind you that you did this.  That’s all.~*/
	GOTO XA_LD_ThoughtsOnRitual_4
	
	IF ~~ THEN REPLY @73 /*~Did you find anyone else to lichify after you left Athkatla?~*/
	GOTO XA_LD_ThoughtsOnRitual_5
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnRitual_1
	SAY @74 /*~Morris slowly and proudly smiles at you.~ [xald1067]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnRitual_2
	SAY @75 /*~Morris frowns.  "This is a path you have willingly chosen.  You have paid the fourth price of a decision and the fifth price of trusting me to properly perform this ritual.  I will not aid you in this, nor will I stop you from obtaining this if it is what you truly want."~ [xald1068]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnRitual_3
	SAY @76 /*~Morris sighs and looks at you, his eyes sad.  "I am sorry you feel that way.  Regret is a common emotion among the Undead.  I recommend you counteract that for the sake of your long-term sanity, lest your mind shatter and your emotions drown you in negativity."~ [xald1069]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnRitual_4
	SAY @77 /*~Morris sluggishly shrugs and nods.~ [xald1070]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnRitual_5
	SAY @78 /*~"No," Morris says indifferently.  "No one asked like you did."~ [xald1071]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_Alive
	SAY @54 /*~Morris merely slowly sighs.  "I -did- die and it was by -your- influence.  I offer you forgiveness for your foolishness.  I have already forgiven myself for my foolishness."~*/
	
	IF ~~ THEN REPLY @55 /*~Wait!  You aren’t mad about this?~*/
	GOTO XA_LD_MadAboutBeingKilled
	
	IF ~~ THEN REPLY @57 /*~How did you survive?~*/
	GOTO XA_LD_HowSurvive
	
	IF ~~ THEN REPLY @60 /*~I killed you once and I’ll do it again!~*/
	GOTO XA_LD_KillAgain
END

IF ~~ THEN BEGIN XA_LD_MadAboutBeingKilled
	SAY @56 /* ~Morris sighs and slowly chuckles.  "No, no, and no.  Undeath has given me a new perspective:  I would rather not hold onto regret the rest of eternity.  I advise you do the same."~  [xald1073] */
	
	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_HowSurvive
	SAY @58 /*~Morris slowly snickers.  "My phylactery is positioned -far- from here, and I regenerated and restocked in my safe, -private- place."~ [xald1074]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_KillAgain
	SAY @59 /*~Morris shrugs and sighs.  "If I live, I win.  If I die, I win.  I have planned for these possibilities.  You… seemingly have not.  Will you still test my immortal patience?"~ [xald1075]*/
	
	IF ~~ THEN REPLY @61 /* ~Since you don’t seem threatened at all by this, then we won’t fight.~*/
	GOTO XA_LD_WontFight
	
	IF ~~ THEN REPLY @63 /*~Die!  Again!~*/
	GOTO XA_LD_FightAgain
	
	IF ~~ THEN REPLY @65 /*~I accept your forgiveness.  Thanks.~*/
	GOTO XA_LD_Forgive
END

IF ~~ THEN BEGIN XA_LD_WontFight
	SAY @62 /*~Morris nods and slowly says, "That was a -wise- decision."~ [xald1076]*/
	
	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_FightAgain
	SAY @64 /* ~Morris sighs as the air around him fills quickly and heavily with magical energy!~ [xald1077] */
	
	IF ~~ THEN
	DO ~
		Enemy()
	~
	EXIT
END

IF ~~ THEN BEGIN XA_LD_Forgive
	SAY @65 /*~I accept your forgiveness.  Thanks.~*/
	
	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_WhyComeToSaradush
	SAY @44  /* ~"Wars and rumors of wars," Morris says with a sly smile.  "Death and destruction are at our heels, and the chance to witness death on a massive scale seemed like too rare of an opportunity nowadays."~ [xald1061]*/
	
	IF ~~ THEN REPLY @45 /* ~Where do you plan to go next?~*/
	GOTO XA_LD_WhereToNext
	
END

IF ~~ THEN BEGIN XA_LD_WhereToNext
	SAY @46  /* ~"Wherever my whims carry me - most likely to another warzone, for war never changes."  Morris slyly smiles at you.  "But you, CHARNAME, are going to the Throne of Bhaal.  I -sense- it.  There, you will pay the fourth price - a decision - but one -far- greater than becoming a lich.  I cannot say more."~ [xald1062]*/
	
	IF ~~ THEN REPLY @47  /* ~Wait! What?~*/
	GOTO XA_LD_WhereToNext_End1
	
	IF ~~ THEN REPLY @48 /* ~How do you know this?~*/
	GOTO XA_LD_WhereToNext_End2
	
	IF ~~ THEN REPLY @49 /* ~Thanks, I think.~*/
	GOTO XA_LD_WhereToNext_End3
END


IF ~~ THEN BEGIN XA_LD_WhereToNext_End1
	SAY @50 /*~Morris smugly smiles at you.  "Reflect on what I have said, CHARNAME."~ [xald1063] */

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_WhereToNext_End2
	SAY @51 /* ~Morris smiles at you as he says, "-I- am a -Wizard.-  Knowledge is my duty."~ [xald1064]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_WhereToNext_End3
	SAY @52 /* ~Morris kindly nods.~ [xald1065]*/

	COPY_TRANS XALDGD XA_LD_IntroAthkatla
END

IF ~~ THEN BEGIN XA_LD_WhoAreYou
	SAY @3 /*~"Morris, a gravetender," he says, grateful that you asked.~ [xald0002]*/
	
	IF ~~ THEN REPLY @4 /*~Why are you here among the dead?~ [xald0002]*/
	GOTO XA_LD_WhyAreYouHere
	
	IF ~~ THEN REPLY @6 /*~What do you think about death?~*/
	GOTO XA_LD_ThoughtsOnDeath
END

IF ~~ THEN BEGIN XA_LD_WhyAreYouHere
	SAY @5 /*~He says with a plain smile, "I have chosen to keep the dead - and the Undead - that should not be in the city out of it.  I ensure those who bring their dead here or who mourn for their dead here head in the right direction."~ [xald0003]*/
	
	IF ~~ THEN REPLY @2 /*~I am curious.  Who are you?~*/
	GOTO XA_LD_WhoAreYou
	
	IF ~~ THEN REPLY @6 /*~What do you think about death?~*/
	GOTO XA_LD_ThoughtsOnDeath
	
	IF ~
		Global("XA_LD_RitualsPerformed", "GLOBAL", 0)
	~ THEN REPLY @38 /*~You seem like a necromancer -and- Undead!  Are you?~*/
	GOTO XA_LD_AreYouUndead1
	
	IF ~
		GlobalGT("XA_LD_RitualsPerformed", "GLOBAL", 0)
	~ THEN REPLY @38 /*~You seem like a necromancer -and- Undead!  Are you?~*/
	GOTO XA_LD_AreYouUndead2
	
	IF ~
		AreaCheck("AR0800")
	~ THEN REPLY @27 /* ~What do you think about killing the Undead here and looting these tombs?~ */
	GOTO XA_LD_Looting
	
	IF ~
		AreaCheck("AR5000")
	~ THEN REPLY @31 /* ~What do you think about this city being under siege?~*/
	GOTO XA_LD_Siege
END

IF ~~ THEN BEGIN XA_LD_Siege
	SAY @32 /*~Morris shrugs.  “I will leave it by some means when the time is right.”~ [xald0017]*/
	
	IF ~~ THEN REPLY @33 /*~Leave how?  When?  To where?~*/
	GOTO XA_HowWillYouLeave

END

IF ~~ THEN BEGIN XA_HowWillYouLeave
	SAY @34 /*~Morris gives you an icy stare.  “I leave -that- to your imagination.”~ [xald0018]*/
	
	COPY_TRANS XALDGD XA_LD_WhyAreYouHere
END

IF ~~ THEN BEGIN XA_LD_Looting
	SAY @28 /*~Morris sighs and shrugs.  “Destroyed Undead do not enter the rest of the city.  You have helped me do my job.”~ [xald0015]*/
	
	IF ~~ THEN REPLY @29 /*~Why are you so concerned about Undead?~*/
	GOTO XA_LD_Concerned
END

IF ~~ THEN BEGIN XA_LD_Concerned
	SAY @30 /*~Morris gives you a blank stare.  “Undead are not inherently the problem.  Unwanted -destruction- is the problem which -certain- Undead cause.”~ [xald0016]*/
	
	COPY_TRANS XALDGD XA_LD_WhyAreYouHere
END

IF ~~ THEN BEGIN XA_LD_AreYouUndead1
	SAY @19 /* ~Morris raises his eyebrows at you.  “I leave -that-... to your imagination.”~ [xald0010]*/
	
	COPY_TRANS XALDGD XA_LD_WhyAreYouHere
END

IF ~~ THEN BEGIN XA_LD_AreYouUndead2
	SAY @20 /*~Morris slowly smirks, as if to avoid cracking his face.  “The lichdom ritual I performed for you was the same one I did on myself, many years ago.”~ [xald0011]*/
	
	IF ~~ THEN REPLY @21 /*Why did you become Undead?~*/
	GOTO XA_LD_WhyDidYouBecomeUndead
	
	IF ~~ THEN REPLY @23 /*~Any regrets about becoming Undead?~*/
	GOTO XA_LD_Regrets
END

IF ~~ THEN BEGIN XA_LD_Regrets
	SAY @24 /* ~The smirk on Morris’s face turns to a frown.  “I… have learned Undeath can be a curse that overwhelms one in regret.  There are too many things I wish I had not done in pursuit of lichdom.  I have since learned the necessity of forgiveness and its power to unburden me from guilt, regret, shame, and the like.”~ [xald0013] */
	
	IF ~~ THEN REPLY @25 /*~What sorts of things did you regret?~ */
	GOTO XA_LD_Regrets2
	
END

IF ~~ THEN BEGIN XA_LD_Regrets2
	SAY @26 /*~Morris sighs, trying not to frown.  “I leave -that- to your imagination, lest I remember them too well.”~ [xald0014]*/
	
	COPY_TRANS XALDGD XA_LD_WhyAreYouHere
END

IF ~~ THEN BEGIN XA_LD_WhyDidYouBecomeUndead
	SAY @22 /*~Morris smirks more widely.  “It was likely the same reason as you:  Death was an inconvenient -interruption- and lichdom provided -power- that I desired.  I paid the prices you paid.”~ [xald0012]*/
	
	COPY_TRANS XALDGD XA_LD_WhyAreYouHere
END

IF ~~ THEN BEGIN XA_LD_ThoughtsOnDeath
	SAY @7 /* ~“Death,” he says, seemingly with a quiet sigh, “is a transition from this state called ‘life’ to another called ‘death.’  Some are able to call things beyond death back to life, and all are able to put that which can die to death.”~ [xald0004]*/
	
	IF ~~ THEN REPLY @8 /*~Then are you fond of death?~*/
	GOTO XA_LD_FondOfDeath
	
END

IF ~~ THEN BEGIN XA_LD_FondOfDeath
	SAY @9 /*~He blinks and stares at you blankly.  “I have devoted my life to the understanding of death.  I believe all life wishes to live forever, to expand in this reality, to -dominate- this reality, but is cursed with this -interruption- called ‘death.’  And so I found a way to solve death.”~ [xald0005]*/
	
	IF ~~ THEN REPLY @10 /*~Do you mean -undeath?-~*/
	GOTO XA_LD_Undeath
END

IF ~~ THEN BEGIN XA_LD_Undeath
	SAY @11 /*~“Yes,” he says with a blank smile, “since you insisted.  It is a way to accomplish -more- in life with less chance of this irksome -interruption.-  I am willing to share it - for a price.”~ [xald0006]*/
	
	IF ~~ THEN REPLY @12 /*~What sort of price?~*/
	GOTO XA_LD_Price
END

IF ~~ THEN BEGIN XA_LD_Price
	SAY @13 /*~He clearly and eagerly smiles at a pace that is fast for him.  “The first price is your peace.  Are you at peace with your god?  Many would disdain such a transformation, and I shall not be held accountable should your ‘transgressions’ result in harm toward you.  Merely considering this option without pursuing it should not count as a stain upon your soul.”~ [xald0007]*/
	
	IF ~~ THEN REPLY @14 /* ~I am willing.  Proceed!~ */
	GOTO XA_LD_Proceed
	
	IF ~~ THEN REPLY @16 /* ~Perhaps later.~*/
	GOTO XA_LD_Later
END

IF ~~ THEN BEGIN XA_LD_Proceed
	SAY @15 /*~He silently nods at you.  “The second price is understanding.  Go find 3 liches or demiliches in any combination, slay them, and bring their lich dust to me.  We shall talk further then.”  Morris promptly stands up straight and looks you very intently in the eyes.~ [xald0008]*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_LD_Later
	SAY @17 /*~“Ah,” he says with a long sigh.  “So be it.  Talk with me should your decision change.  I have… long enough.”~ [xald0009] */
	
	IF ~~ THEN
	EXIT
END