with GAda.Text_IO;
with Gada.Integer_Text_IO;
With GAda.Float_Text_IO;

procedure Tracer_Ligne is 
   Coordinate_System: array(-10..10,-10..10) of Character ;
begin
   for Z in -10..10 loop
      for T in -20..20 loop
	 if Z=0 then
	    Coordinate_System(Z,T):= "+";
	 else if T=0 then
	    GAda.Text_IO.Put("|");
	 else
	    GAda.Text_IO.Put(".");
	 end if;
	 end if;
      end loop;
      GAda.Text_IO.New_Line;
      end loop;

      
	    
	    
    end Tracer_Ligne;







   
		     
		     
		     
			      
			      
		     
			
		   
				 
				 





   

