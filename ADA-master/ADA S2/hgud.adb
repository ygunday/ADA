with GAda.Text_IO;
with GAda.Integer_Text_IO;

procedure Tracer_Quadrillage is 
   
   A:Integer;
   B:Integer;
   
begin
   
    GAda.Text_IO.Put("Give me a number(Long):");
    GAda.Integer_Text_IO.Get(A);
    GAda.Text_IO.Put("Give me a number(Hauteur):");
    GAda.Integer_Text_IO.Get(B);
    for T in 1..(B) loop    
        for Q in  1..(A) loop
	   GAda.Text_IO.Put("#");
	end loop;
	GAda.Text_IO.New_Line;
	 for C in 1..(A) loop
	    if (C mod 2) = 0 then 
	       GAda.Text_IO.Put(" ");
	    else 
		 GAda.Text_IO.Put("#");
		 end if;

	 end loop;
	      GAda.Text_IO.New_Line;
    end loop;
    end Tracer_Quadrillage;
