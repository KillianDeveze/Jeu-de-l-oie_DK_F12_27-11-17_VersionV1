PROGRAM  jeu_de_l_oie;

USES crt;
//but : voir ci-dessus 
// entrée : 
//sortie : résultat du dé, position  du joueur


VAR
	Position, mouv :INTEGER;
             //Mouv = mouvement 
BEGIN
	
		Position:=0;
		mouv:=0;

		REPEAT
		BEGIN

				WHILE (mouv<2) OR (mouv>12) DO
					BEGIN
				

				 			Writeln ('Saisir resultat de ');
							Readln (mouv);
				END;



			

						Position:=Position+mouv;

				
			

				IF (Position MOD 9 = 0) AND (Position <> 63) AND (Position <> 0) THEN
					BEGIN
						Position:=Position + mouv ;
				
					END;
				
				
				IF (Position>66) THEN 
					BEGIN
		 				Position:=66-(Position-66);
				END;

				IF  (Position = 58) THEN 
					BEGIN
						Position:=0;
						Writeln('Vous retournez à la case depart');
				END;
				
				Writeln ('Vous etes a la case  ', Position);
				mouv:=0;
				
		End;

	UNTIL Position=66;

		
	 
		Writeln('bravo vous avez gagner');
		Readln;


END.


