with GAda.Graphics;
with GAda.Plus;
with JPG;
with GAda.Text_IO;
with GAda.Integer_Text_IO;

procedure Mission2 is
   procedure Afficher_Image(Img:JPG.T_Image) is
      
   begin
        GAda.Graphics.Resize(Img'Length(2),Img'length(1));
	for Z in  0..(Img'length(2)) loop
	   GAda.Text_IO.Put("Z");
	   for K in  0..(Img'length(1)) loop
	   GAda.Text_IO.Put("K");
	   GAda.Graphics.ColorPoint(K,Z,Img(K,Z));
	   end loop;
	   GAda.Text_IO.New_Line;
      end loop;
      	 
      
      
      
    
   end Afficher_Image;
   
   procedure Tester_Image is 
   begin
      Afficher_Image(JPG.Lire_Image(GAda.Plus.Choisir_Fichier));
      --GAda.Integer_Text_IO.Put(JPG.Lire_Image(GAda.Plus.Choisir_Fichier)'Length(1));      
      --GAda.Integer_Text_IO.Put(JPG.Lire_Image(GAda.Plus.Choisir_Fichier)'Length(2));
      --GAda.Graphics.Resize(300,400);  

      end Tester_Image;
begin
   Tester_Image;
   end Mission2;
      
      
