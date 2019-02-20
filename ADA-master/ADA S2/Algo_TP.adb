with GAda.Text_IO;
with Gada.Integer_Text_IO;
With Caracteres;
procedure Big is
procedure Mission1 is
   A:Integer;
begin
   GAda.Text_IO.Put("Give me a number:");
   GAda.Integer_Text_IO.Get(A);
   GAda.Integer_Text_IO.Put(A);
   GAda.Text_IO.New_Line;
   GAda.Text_IO.Put(Caracteres.Table(A).Car);
end Mission1;

procedure Afficher_Trame(U:Caracteres.T_Trame) is

begin
   for T in 1..13 loop
      for H in 1..6 loop
	 case U(T,H) is
	    when Caracteres.Eteint => GAda.Text_IO.Put(" ");
	    when Caracteres.Allume => GAda.Text_IO.Put("#");
	 end case;
      end loop;
      GAda.Text_IO.New_Line;
   end loop;
end Afficher_Trame;

procedure Afficher_Mot(U:String) is
begin
   for T in 1..5 loop
      for J in 1..91 loop
	 case U(T) is
	    when Caracteres.Table(J).Car => GAda.Text_IO.Put("good");
	 end case;
      end loop;
      GAda.Text_IO.New_Line;
      end loop;
   end Afficher_Mot;

begin
  -- Mission1;
   Afficher_Trame(Caracteres.Table(32).Trame);
   end Big;





   
		     
		     
		     
			      
			      
		     
			
		   
				 
				 





   

