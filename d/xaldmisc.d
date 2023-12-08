APPEND DORNJ
	IF ~~ THEN BEGIN XA_LD_ChooseDorn
		SAY @0 /*~You offer me an eternal life of death and conquest?  When we first met, I never -dreamed- such a proposal was within your means!~*/
		
		IF ~~ THEN REPLY @1 /*~Is that a “Thanks, yes?” or a “Thanks, no?”~*/
		GOTO XA_LD_ChooseDorn2
		
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseDorn2
		SAY @2 /*~<CHARNAME>, that is a “Thanks, yes,” if your offer is true.~*/
		
		IF ~~ THEN REPLY @3 /*~Deal.~*/
		EXTERN XALDGD XA_LD_DornLich
		
		IF ~~ THEN REPLY @4 /*~No deal.  I don’t like wishy-washy.~*/
		GOTO XA_LD_ChooseDorn3
		
	END
	
	IF ~~ THEN BEGIN XA_LD_ChooseDorn3
		SAY @5 /*~<Dorn snarls at <CHARNAME>.~*/
		
		IF ~~ THEN
		EXTERN XALDGD XA_LD_ChooseAnother
	END
END