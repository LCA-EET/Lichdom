//{ Keldorn
ADD_STATE_TRIGGER KELDORP 0
~
	GlobalLT("XA_LD_KeldornLeft", "GLOBAL", 1)
~
6 11 15 19 23 30

APPEND KELDORP
	IF ~
		Global("XA_LD_KeldornLeft", "GLOBAL", 1)
	~ THEN BEGIN XA_KeldornLeft_Lich
		SAY @0 /*~For the sake of our former friendship, lich, I shall not slay you this day.  Do not provoke those of my order to wrath, for if you do, we WILL hunt you down and slay you!~*/
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ Valygar
ADD_STATE_TRIGGER VALYGARP 12
~
	GlobalLT("XA_LD_ValygarLeft", "GLOBAL", 1)
~
16 19

APPEND VALYGARP
	IF ~
		Global("XA_LD_ValygarLeft", "GLOBAL", 1)
	~ THEN BEGIN XA_ValygarLeft_Lich
		SAY @1 /*~The taint of the dark magic surrounding you is too great! Begone!~*/
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ Mazzy
ADD_STATE_TRIGGER MAZZYP 14
~
	GlobalLT("XA_LD_MazzyLeft", "GLOBAL", 1)
~
16 19 20 33 35

APPEND MAZZYP
	IF ~
		Global("XA_LD_MazzyLeft", "GLOBAL", 1)
	~ THEN BEGIN XA_MazzyLeft_Lich
		SAY @2 /*~Begone from my sight. You have proven yourself unworthy of my friendship.~*/
		
		IF ~~ THEN
		EXIT
	END
END
//}