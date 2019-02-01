with GAda.Graphics;
with GAda.Plus;
with JPG;
with GAda.Text_IO;

procedure Mission2 is
   procedure Afficher_Image(Img:JPG.T_Image) is
      
   begin
      for Z in  1..(Img'Length(1)) loop
	 for K in  1..(Img'Length(2)) loop
	    GAda.Graphics.ColorPoint(Z,K,Img(Z,K));
	    
	 end loop;
      end loop;
      
      
      
    
   end Afficher_Image;
   
   
begin
   Afficher_Image;
   end Mission2;
      
      
