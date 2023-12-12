//{ Minsc
ADD_STATE_TRIGGER MINSCP 1
~
	!Race(Player1, LICH)
~
6 8 9

APPEND MINSCP
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_MinscLeft_Lich
		SAY @6 /* ~Boo sniffs out -stinking evil- within you, <CHARNAME>!  You smell Undead, and not the happy, laughing kind!~*/
		
		= @7 /* ~<CHARNAME>, you were once the Hero of Baldur’s Gate and the Savior of Minsc and Boo from that mad mage’s rotting prison!  How quickly you have switched sides!~*/
		
		= @8 /* ~We shall journey together no more!  Boo and I shall be -legends- to be remembered for -decades- to come!  You?~*/
		
		= @9 /* ~Boo sheds a tear thinking about how you’ll be known as a -villain- whose butt we may need to kick into oblivion!~*/
		
		= @10 /* ~But we are merciful.  We shall simply -exile- you!  We won’t try to kill you - yet.~*/
		
		= @11 /* ~If you ask for a butt kicking, we will be happy to oblige!  And maybe with my manliest of tears thrown at you!~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END

//}

//{ Keldorn
ADD_STATE_TRIGGER KELDORP 0
~
	!Race(Player1, LICH)
~
6 11 15 19 23 30

APPEND KELDORP
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_KeldornLeft_Lich
		SAY @3 /*~<CHARNAME>, what a sad day it is when you chose this wicked path of Lichdom instead of being the trustworthy ally I once thought you were.~*/
		
		= @4 /* You, <CHARNAME>, have made me consider my path in life.  I have helped slay Liches and many Undead before and can smell it on you, but when someone I wanted to respect chooses that path, however willingly, I feel pity for your misstep.*/
		
		= @5 /* May you find rest for your soul somehow, <CHARNAME>.  We shall associate no longer.*/
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END
//}

//{ Valygar
ADD_STATE_TRIGGER VALYGARP 12
~
	!Race(Player1, LICH)
~
16 19

APPEND VALYGARP
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_ValygarLeft_Lich
		SAY @1 /*~The taint of the dark magic surrounding you is too great! Begone!~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END
//}

//{ Mazzy
ADD_STATE_TRIGGER MAZZYP 14
~
	!Race(Player1, LICH)
~
16 19 20 33 35

APPEND MAZZYP
	IF ~
		Race(Player1, LICH)
	~ THEN BEGIN XA_MazzyLeft_Lich
		SAY @2 /*~Begone from my sight. You have proven yourself unworthy of my friendship.~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END
//}