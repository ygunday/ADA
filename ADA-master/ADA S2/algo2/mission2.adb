with GAda.Graphics;
with GAda.Plus;
with JPG;
with GAda.Text_IO;
with GAda.Integer_Text_IO;

procedure Mission2 is
   procedure Afficher_Image(Img:JPG.T_Image;X:Integer;Y:Integer) is
      H:Integer;
   begin
      H:=Img'length(1);
        GAda.Graphics.Resize(2*Img'Length(2),2*Img'length(1));
	for Z in  (Img'First(2))..(Img'Last(2)) loop
	   for K in  (Img'First(1))..(Img'Last(1)) loop
	   GAda.Graphics.ColorPoint(Z+X,H-K+Y,Img(K,Z));
	   end loop;
	end loop;
	
   end Afficher_Image;
   
      	 
procedure Afficher_Image2(Img:JPG.T_Image;X:Integer;Y:Integer) is
   H:Integer;
   A:Integer;
   begin
      H:=Img'length(1);
      A:=Img'Length(2);
      GAda.Graphics.Resize(2*Img'Length(2),2*Img'length(1));
      
	for Z in  (Img'First(2))..(Img'Last(2)) loop
	   for K in  (Img'First(1))..(Img'Last(1)) loop
	   GAda.Graphics.ColorPoint(Z+X,H-K+Y,Img(Z,K));
	   end loop;
	end loop;
	
	for Z in  (Img'First(2))..(Img'Last(2)) loop
	   for K in  (Img'First(1))..(Img'Last(1)) loop
	   GAda.Graphics.ColorPoint(Z+X,H-K+Y+H,Img(Z,K));
	   end loop;
	end loop;
	
	
	
	for Z in  (Img'First(2))..(Img'Last(2)) loop
	   for K in  (Img'First(1))..(Img'Last(1)) loop
	   GAda.Graphics.ColorPoint(Z+X,H-K+Y+H,Img(K,Z));
	   end loop;
	end loop;
	
      
	for Z in  (Img'First(2))..(Img'Last(2)) loop
	   for K in  (Img'First(1))..(Img'Last(1)) loop
	   GAda.Graphics.ColorPoint(Z+X+A,H-K+Y+H,Img(K,Z));
	   end loop;
	end loop;	
    
   end Afficher_Image2;
   
   procedure Tester_Image is 
   begin
      Afficher_Image2(JPG.Lire_Image(GAda.Plus.Choisir_Fichier),0,0);
      --GAda.Integer_Text_IO.Put(JPG.Lire_Image(GAda.Plus.Choisir_Fichier)'Length(1));      
      --GAda.Integer_Text_IO.Put(JPG.Lire_Image(GAda.Plus.Choisir_Fichier)'Length(2));
      --GAda.Graphics.Resize(300,400);  

      end Tester_Image;
begin
   Tester_Image;
   end Mission2;
      
      
