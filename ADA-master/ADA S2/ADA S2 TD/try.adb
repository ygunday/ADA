with Gada.Text_IO ;
with Gada.Integer_Text_IO;

procedure Try is
   

   type T_Intervalle is array ( Integer range <>) of Integer;
   function Intervalle_Image(C:T_Intervalle) return Integer is 
      Result: T_Intervalle(C'Range);
   begin
 for I in C'Range loop
      Result(I) := C (C'First + C'Last - I);
   end loop;
   return Result;
    
	
	return Result;
	end Intervalle_Image;

begin

end Try;

		     procedure To_Show_Matrix is
		     begin
			for T in 0..(Tmax) loop
			   for J in 1..(2*N+1) loop
			      Ada.Float_Text_IO.Put(Matrix(T,J)); for=>1,Aft=>6,Exp=>0);
			      Ada.Text_IO.Put("_");
			      GAda.Text_IO.New_Line;
			   end loop;
			end loop;
			end To_Show_Matrix;






