with GAda.Graphics;
with GAda.Plus;
with JPG;
with Caracteres;
with GAda.Text_IO;

procedure Mission3 is
   
   procedure Array_Lum is 
    
    Lum_C:Integer:=0;  
   begin
      for T in 1..13 loop
       for H in 1..6 loop
        case U(T,H) is
        when Caracteres.Eteint => Lum_C:=Lum_C+0;
        when Caracteres.Allume => Lum_C:=Lum_C+1;
        end case;
       end loop;
      end loop;
      
      end Array_Lum
      
   
   
   
   
   
begin
   

   
   
   
end Mission3;

