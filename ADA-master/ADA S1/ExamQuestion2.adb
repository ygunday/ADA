with GAda.Text_IO ;
with Avion_Sol;
with Train;
with INSA_AIR;
with Assert ;
with Carburant;
with Tour;
with Pilote_Automatique;
with Cartographie;
with GAda.Integer_Text_IO;

procedure Sort is
   
   		function Distance_Modified(Code:String) return Float is 
		     A1:Float;
		     A2:Float;
		     A3:Float;
		     A4:Float;
		     Distance:Float;
                  begin
		       
		A1:=Float(Cartographie.Coords_Aeroport(Code).Long);

		A2:=Float(Cartographie.Coords_Aeroport(Code).Lat);

		A3:=Float(Cartographie.Coords_Avion.Long);

		A4:=Float(Cartographie.Coords_Avion.Lat);
		
		Distance:= Cartographie.SQRT((A1-A3)*(A1-A3)+(A2-A4)*(A2-A4))*111.6;
		
		return Distance;
		
		  end Distance_Modified;
		  
	       procedure Info_Aeroport(Code:String) is

	     begin

		GAda.Text_IO.Put_Line(Cartographie.Nom_Aeroport (Code));
		GAda.Text_IO.Put_Line(Float'Image(Distance_Modified(Code)));
		
	     end Info_Aeroport; 
	     
	     
	     procedure Looop is 
		A:Float;
		B:Float;
		C:Float;
		D:String:="dssd";
		E:String:="dfdf";
		F:String:="wewr";
		G:Float;
		
	     begin
		A:= Distance_Modified(Cartographie.Code_Aeroport(1));
		
		for T in 1..(Cartographie.Nb_Aeroports) loop
		   if Distance_Modified(Cartographie.Code_Aeroport(T))<A then
		      D:= Cartographie.Code_Aeroport(T);
		      A:= Distance_Modified(Cartographie.Code_Aeroport(T));
		      end if;
		end loop;
		
		Info_Aeroport(D);
		C:=A;
		B:=A;
		
		for T in 1..(Cartographie.Nb_Aeroports) loop
		   if Distance_Modified(Cartographie.Code_Aeroport(T))>B   then
		     E:= Cartographie.Code_Aeroport(T);
		     B:= Distance_Modified(Cartographie.Code_Aeroport(T));
		   end if;
		end loop;
		
		G:=B;
		
		for T in 1..((Cartographie.Nb_Aeroports)-1) loop
		      for T in 1..(Cartographie.Nb_Aeroports) loop
			 if Distance_Modified(Cartographie.Code_Aeroport(T))>=C and Cartographie.Code_Aeroport(T)/=D 
			       and Distance_Modified(Cartographie.Code_Aeroport(T))<=B   then
		            F:= Cartographie.Code_Aeroport(T);
			    B:= Distance_Modified(Cartographie.Code_Aeroport(T));
			    end if;
		      end loop;
		      
		      Info_Aeroport(F);
		      D:=F;
		      C:=B;
		      B:=G;
		end loop;
		
	     end Looop;

   
		  
begin 
 Looop; 		       
end Sort;

   
