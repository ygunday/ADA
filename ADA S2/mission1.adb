with GAda.Text_IO;
with GAda.Integer_Text_IO;

procedure Mission1 is 

procedure Tracer_Ligne is
   A:Integer;
   begin

       GAda.Text_IO.Put("Give me a number(Long):");
       GAda.Integer_Text_IO.Get(A);
       for T in 1..(A) loop
         GAda.Text_IO.Put("#");
       end loop;
      
end Tracer_Ligne;

procedure Tracer_Rectangle is --1X1 ne marche pas
   A:Integer;
   B:Integer;
begin
    GAda.Text_IO.Put("Give me a number(Long):");
    GAda.Integer_Text_IO.Get(A);
    GAda.Text_IO.Put("Give me a number(Hauteur):");
    GAda.Integer_Text_IO.Get(B);
    
    
    for T in  1..(A) loop
       GAda.Text_IO.Put("#");
    end loop;  
    for T in 1..(B-2) loop
    GAda.Text_IO.New_Line;
    GAda.Text_IO.Put("#");
    for T in 1..(A-2) loop
       GAda.Text_IO.Put(" ");
    end loop;
    GAda.Text_IO.Put("#");
    end loop;
     GAda.Text_IO.New_Line;   
     for T in  1..(A) loop
	GAda.Text_IO.Put("#");
	end loop;
end Tracer_Rectangle;

procedure Tracer_Quadrillage is 
   
   A:Integer;
   B:Integer;
   
begin              -----check with one if
   
    GAda.Text_IO.Put("Give me a number(Long):");
    GAda.Integer_Text_IO.Get(A);
    GAda.Text_IO.Put("Give me a number(Hauteur):");
    GAda.Integer_Text_IO.Get(B);
    for T in 1..(Integer((B/2 + 0.3))) loop
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
    
    procedure Tracer_Damier is 
   A:Integer;
   B:Integer;
   
   begin
   
    GAda.Text_IO.Put("Give me a number(Long):");
    GAda.Integer_Text_IO.Get(A);
    GAda.Text_IO.Put("Give me a number(Hauteur):");
    GAda.Integer_Text_IO.Get(B);
    
    for T in 1..(B) loop
       	 for C in 1..(A) loop
	    if (C mod 2) = 0 then 
	       GAda.Text_IO.Put(" ");  
	    else
	       GAda.Text_IO.Put("#");
	    end if;
	 end loop;
	 GAda.Text_IO.New_Line;
	 for Y in 1..(A+1) loop
	    if (Y mod 2)= 0 then 
	       GAda.Text_IO.Put("#");  
	    else
	       GAda.Text_IO.Put(" ");
	    end if;
	 end loop;
	 GAda.Text_IO.New_Line;
    end loop;
    
type T_Intervalle       
        
    end Tracer_Damier;
   
 
begin
   -- Tracer_Ligne;
   -- Tracer_Rectangle;
    Tracer_Quadrillage;
  -- Tracer_Damier;
   
   
   end Mission1;
