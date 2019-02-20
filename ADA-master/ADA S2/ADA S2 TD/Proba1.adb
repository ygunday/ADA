with GAda.Text_IO;
with Gada.Integer_Text_IO;
With Ada.Float_Text_IO;

procedure Proba1 is 
   Tmax: Integer:= 100;
   N: Integer:= 2;
   Matrix: array(0..Tmax,1..(2*N+1)) of Integer:= (others=>(others=>0));
begin
   	     Matrix(0,(N+1)):= 1;
			for T in 0..(Tmax) loop
			   for J in 1..(2*N+1) loop
			      if T=0 then 
				 GAda.Text_IO.Put("");
			      else if J=1 then
				 Matrix(T,J):=(2*Matrix(T-1,J)+Matrix(T-1,J+1));
			      else if J=(2*N+1) then
				 Matrix(T,J):=(2*Matrix(T-1,J)+Matrix(T-1,J-1));
			      else if T>0 then
				 Matrix(T,J):=(Matrix(T-1,J)+Matrix(T-1,J-1)+Matrix(T-1,J+1));				 
			      end if;
			      end if;
			      end if;
			      end if;
			      GAda.Integer_Text_IO.Put(Matrix(T,J));
			      GAda.Text_IO.Put("_");
			   end loop;
			   GAda.Text_IO.New_Line;
			end loop;
end Proba1;







   
		     
		     
		     
			      
			      
		     
			
		   
				 
				 





   

