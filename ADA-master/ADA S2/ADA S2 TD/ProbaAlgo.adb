with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with GAda.Text_IO;
   procedure Proba is
   Tmax: Integer:= 10;
   N: Integer:= 2;
   Matrix: array(0..Tmax,1..(2*N+1)) of Float:= (others=>(others=>0.0));
begin
   	     Matrix(0,(N+1)):= 1.0;
			for T in 1..(Tmax) loop
			   for J in 1..(2*N+1) loop
			      if J=1 then
				 Matrix(T,J):=(1.0/3.0)*(2.0*Matrix(T-1,J)+Matrix(T-1,J+1));
			      else if J=(2*N+1) then
				 Matrix(T,J):=(1.0/3.0)*(2.0*Matrix(T-1,J)+Matrix(T-1,J-1));
			      else if T>0 then
				 Matrix(T,J):=(1.0/3.0)*(Matrix(T-1,J)+Matrix(T-1,J-1)+Matrix(T-1,J+1));				 
			      end if;
			    end if;
			      end if;
			   end loop;
			end loop;
			
     for T in 0..(Tmax) loop
      for J in 1..(2*N+1) loop
	 Put(Matrix(T,J), for=>1,Aft=>6,Exp=>0); Put("-");
	 GAda.Text_IO.New_Line;
      end loop;
   end loop;
end Proba;













   
		     
		     
		     
			      
			      
		     
			
		   
				 
				 





   

