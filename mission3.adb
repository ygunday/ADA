with GAda.Text_IO ;
with Avion_Sol;
with Train;
with INSA_AIR;
with Assert ;
with Carburant;
with Tour;
with Pilote_Automatique;
with Cartographie;

procedure Mission3b is


   --
   -- Mission 2, partie 1 : fonction Delta_Cap
   --
   -- Cette fonction Delta_Cap est incorrecte.
   -- À vous de corriger son algorithme.
   --
   function Delta_Cap(Cap_Actuel : Float ;  Cap_Voulu : Float) return Float is
      Ecart_Angle : Float ;
            begin
      Ecart_Angle := Cap_Voulu-Cap_Actuel ;

     if Ecart_Angle < -180.0 then
	Ecart_Angle:= Ecart_Angle + 360.0;
    elsif Ecart_Angle > 180.0 then
       Ecart_Angle:= Ecart_Angle - 360.0;
     end if;
	 
	      

      return Ecart_Angle ;
   end Delta_Cap ;
   
   function Caps_Egaux(Ecart_Angle:Float) return Boolean is 
   begin
   if abs(Ecart_Angle) < 5.0 then
      return True;
   else
      return False;
      end if;
	
   end Caps_Egaux;

   procedure Tester_CAPSEGAUX(Ecart_Angle:Float) is 
	begin
	  GAda.Text_IO.Put_Line(Aff=>Boolean'Image(Caps_Egaux(Ecart_Angle)));
	  end Tester_CAPSEGAUX;
				
   
   procedure Tester_Delta_Cap(CapA : Float ; CapV : Float) is
   begin
      GAda.Text_IO.Put (Aff => "CapA" & Float'Image(CapA) ) ;
      GAda.Text_IO.Put_Line(Aff => "        CapB " & Float'Image(CapV) ) ;
      GAda.Text_IO.Put_Line (Aff => "Le cap actuel vaut " & Float'Image(Delta_Cap(CapA,CapV ))) ;
      
   end Tester_Delta_Cap ;
 
   --
   -- Mission 2, partie 2 : fonction Caps_Egaux
   --
   
   
   --
   -- Mission 2, partie 2 : procédure de test de Caps_Egaux
   --
   
   --
   -- Mission 2, parties 1 et 2 : réalisation de plusieurs tests
   --


   procedure Tests_Unitaires is
   begin
      Tester_Delta_Cap (CapA => 0.0,   CapV => 45.0) ;
      Tester_Delta_Cap (CapA => 45.0,  CapV => 0.0) ;
      Tester_Delta_Cap (CapA => 350.0, CapV => 10.0) ;
      Tester_Delta_Cap (CapA => 10.0,  CapV => 350.0) ;
      Tester_Delta_Cap (CapA => 30.0,  CapV => 285.0) ;
      Tester_CAPSEGAUX(Ecart_Angle=>10.0);
      Tester_CAPSEGAUX(Ecart_Angle=>-3.0);
      
      -- Ajouter vos propres tests unitaires
   end Tests_Unitaires ;
   

   --
   -- Mission 2, partie 3 : procédure Orienter_au_sol
   
   procedure Orienter_Au_Sol(Cap_Voulu:Float) is
       
            
   begin
      INSA_AIR.Regler_Reacteur(Force=>1) ;
      while  abs(Delta_Cap( INSA_AIR.Cap_Courant,  Cap_Voulu)) >5.0 loop
	 if Delta_Cap( INSA_AIR.Cap_Courant,  Cap_Voulu)<0.0 then
	    Train.Positionner_A_Gauche ;
	    end if;
	 if Delta_Cap( INSA_AIR.Cap_Courant,  Cap_Voulu)>0.0 then
	    Train.Positionner_A_Droite;
	    end if;
	 end loop;
      Train.Positionner_A_Zero ;
      Avion_Sol.Freiner ;
      Avion_Sol.Attendre_Entree;
      
      
      
    
      
   end Orienter_Au_Sol;
   
   --
   
   
   --
   -- Mission 2, partie 3 : procédure Tester_Cap
   --
   procedure Tester_Cap is 
   
   begin
      Avion_Sol.Rouler_Vers(Dest=>'L');
      Avion_Sol.Rouler_Vers(Dest=>'M');
      Avion_Sol.Freiner;
      Avion_Sol.Attendre_Entree;
      Orienter_Au_Sol(0.0);
      Orienter_Au_Sol(90.0);
      Orienter_Au_Sol(180.0);
      Orienter_Au_Sol(270.0);
      Avion_Sol.Rouler_Vers(Dest=>'K');
      
      

      end Tester_Cap;
      
	
   
   --
   -- Mission 2, partie 4 : procédure Orienter_en_vol
   --
      procedure Orienter_En_Vol(Cap_Voulu:Float) is
      begin
	  while  abs(Delta_Cap( INSA_AIR.Cap_Courant,  Cap_Voulu)) >5.0 loop
	 if Delta_Cap( INSA_AIR.Cap_Courant,  Cap_Voulu)<0.0 then
	    INSA_AIR.Positionner_Gouverne_A_Gauche;
	 elsif Delta_Cap( INSA_AIR.Cap_Courant,  Cap_Voulu)>0.0 then
	    INSA_AIR.Positionner_Gouverne_A_Droite; 
	 end if;
	  INSA_AIR.Positionner_Gouverne_A_Zero; 
	  end loop;
	  
	  end Orienter_En_Vol;
   
   
   --
   -- Mission 2, partie 4 : procédure Realiser_Vol_Demo
   --
	  procedure Realiser_Vol_Demo is
	  begin
	     Carburant.Faire_Le_Plein ;
	      Tour.Attendre_Autorisation_Roulage;
              Avion_Sol.Rouler_Vers(Dest=>'L');
              Avion_Sol.Rouler_Vers(Dest=>'M');
              Avion_Sol.Rouler_Vers(Dest=>'H');
              Avion_Sol.Rouler_Vers(Dest=>'G');
              Avion_Sol.Rouler_Vers(Dest=>'F');
              Avion_Sol.Rouler_Vers(Dest=>'E');
              Avion_Sol.Rouler_Vers(Dest=>'A');
	      Tour.Attendre_Autorisation_Decollage;
	      INSA_AIR.Regler_Reacteur(Force=>8);
	      Pilote_Automatique.Decoller;
	      Train.Deplacer_Train(FALSE);
	      INSA_AIR.Regler_Reacteur(Force=>6);
	      Orienter_En_Vol(295.0);
	      INSA_AIR.Attendre(1200.0);
	      Orienter_En_Vol(115.0);
	      INSA_AIR.Attendre(900.0);
	      INSA_AIR.Regler_Reacteur(Force=>3);
	      Train.Deplacer_Train(TRUE);
	      Tour.Attendre_Autorisation_Atterrissage ;
	      Pilote_Automatique.Atterrir;
	      Avion_Sol.Freiner ; 
	      Avion_Sol.Rouler_Vers(Dest=>'N');
              Avion_Sol.Rouler_Vers(Dest=>'P');
              Avion_Sol.Rouler_Vers(Dest=>'R');
              Avion_Sol.Rouler_Vers(Dest=>'S');
              Avion_Sol.Rouler_Vers(Dest=>'T');
              Avion_Sol.Rouler_Vers(Dest=>'M');
              Avion_Sol.Rouler_Vers(Dest=>'L');
              Avion_Sol.Rouler_Vers(Dest=>'K');

	      
	      
	     


	     
	     
	     end Realiser_Vol_Demo;
	     
	     procedure Info_Aeroport(Code:String) is

	     begin

		GAda.Text_IO.Put_Line(Cartographie.Nom_Aeroport (Code));
		GAda.Text_IO.Put_Line(Float'Image(Cartographie.Coords_Aeroport(Code).Long));
		GAda.Text_IO.Put_Line(Float'Image(Cartographie.Coords_Aeroport(Code).Lat));
	     end Info_Aeroport; 
	    
	     
	     function Distance(Code:String;Code2:String) return Float is
		P1:Float;
		P2:Float;
		P3:Float;
		P4:Float;
		Dis:Float;
		begin
		P1:=Float(Cartographie.Coords_Aeroport(Code).Long);
		P2:=Float(Cartographie.Coords_Aeroport(Code).Lat);
		P3:=Float(Cartographie.Coords_Aeroport(Code2).Long);
		P4:=Float(Cartographie.Coords_Aeroport(Code2).Lat);
		Dis:= Cartographie.SQRT((P1-P3)*(P1-P3)+(P2-P4)*(P2-P4))*111.6;
		
		return Dis;
		end Distance;
		
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
	     
	     function Cap_Cible(Code:String) return Float is
		A1:Float;
		A2:Float;
		Angle:Float;
		A3:Float;
		A4:Float;
		begin
		A1:=Float(Cartographie.Coords_Aeroport(Code).Long);
		A2:=Float(Cartographie.Coords_Aeroport(Code).Lat);
		A3:=Float(Cartographie.Coords_Avion.Long);
		A4:=Float(Cartographie.Coords_Avion.Lat);
		Angle:=Cartographie.Cap_Vecteur (A1-A3,A2-A4);

		
		return Angle;
                end Cap_Cible;		
		
		
		  procedure Tester_Carto is  
	     begin
		Info_Aeroport("LFBO");
		Info_Aeroport(Code=>"EGLL");
		Info_Aeroport(Code=>"LFPG");
		GAda.Text_IO.Put_Line(Float'Image(Distance("EGLL","LFBO")));
		GAda.Text_IO.Put_Line(Float'Image(Cap_Cible("EGLL")));		
		
	     end Tester_Carto;
	     
	     
	     procedure Atterir is
	     begin
	      INSA_AIR.Regler_Reacteur(Force=>3);
	      Train.Deplacer_Train(TRUE);
	      Tour.Attendre_Autorisation_Atterrissage ;
	      Pilote_Automatique.Atterrir;
	      Avion_Sol.Freiner ; 
	      Avion_Sol.Rouler_Vers(Dest=>'N');
              Avion_Sol.Rouler_Vers(Dest=>'P');
              Avion_Sol.Rouler_Vers(Dest=>'R');
              Avion_Sol.Rouler_Vers(Dest=>'S');
              Avion_Sol.Rouler_Vers(Dest=>'T');
              Avion_Sol.Rouler_Vers(Dest=>'M');
              Avion_Sol.Rouler_Vers(Dest=>'L');
              Avion_Sol.Rouler_Vers(Dest=>'K');
	      end Atterir;

	     
	     procedure Decollage is 
	     begin
	      Carburant.Faire_Le_Plein ;
	      Tour.Attendre_Autorisation_Roulage;
              Avion_Sol.Rouler_Vers(Dest=>'L');
              Avion_Sol.Rouler_Vers(Dest=>'M');
              Avion_Sol.Rouler_Vers(Dest=>'H');
              Avion_Sol.Rouler_Vers(Dest=>'G');
              Avion_Sol.Rouler_Vers(Dest=>'F');
              Avion_Sol.Rouler_Vers(Dest=>'E');
              Avion_Sol.Rouler_Vers(Dest=>'A');
	      Tour.Attendre_Autorisation_Decollage;
	      INSA_AIR.Regler_Reacteur(Force=>8);
	      Pilote_Automatique.Decoller;
	      Train.Deplacer_Train(FALSE);
	      INSA_AIR.Regler_Reacteur(Force=>6);
	     end Decollage;
	     
	     
	     
	      procedure Marqueur is 
		R1:Float;
		R2:Float:=100000000.0;
		C:Integer;
		F:Integer:=0;

	      begin
		 for T  in 1..Cartographie.Nb_Aeroports loop
		    R1:=Distance_Modified(Cartographie.Code_Aeroport(T));
		    F:=F+1;
		    if R1<R2 then
		       C:=F;
		       R2:=R1;
		       end if;
		   

		 end loop;
		Cartographie.Placer_Marque(Cartographie.Coords_Aeroport(Cartographie.Code_Aeroport(C)));

       
		
		
		
	      end Marqueur;
	      
	            procedure Marqueur_Hors_France is 
		R1:Float;
		R2:Float:=100000000.0;
		C:Integer;
		F:Integer:=20;

		 begin
		 for T  in 21..Cartographie.Nb_Aeroports loop
		    R1:=Distance_Modified(Cartographie.Code_Aeroport(T));
		    F:=F+1;
		    if R1<R2 then
		       C:=F;
		       R2:=R1;
		       end if;
		   

		 end loop;
		 Cartographie.Placer_Marque(Cartographie.Coords_Aeroport(Cartographie.Code_Aeroport(C)));

       
		
		
		
	     end Marqueur_Hors_France;
	     

	     

	      
	      
	     procedure Naviguer_Vers(Code:String) is
	     begin
		while Distance_Modified(Code)>100.0 loop
		   Marqueur_Hors_France;
		   Orienter_En_Vol(Cap_Cible(Code));		   
	   
		end loop;
	     end Naviguer_Vers;
	     

	     procedure Voler_F is
	     begin
		Decollage;
		Naviguer_Vers("EGLL");
		Naviguer_Vers("LFST");
		Naviguer_Vers("LFBO");
		Atterir;
		
		end Voler_F;
		
		
		
		
		
		
		


begin
   
   -- Effectuer tous les tests unitaires de Delta_Cap et Caps_Egaux
   -- Tests_Unitaires ;
 -- Orienter_Au_Sol(0.0);--
 --Tester_Cap;
 -- Realiser_Vol_Demo;
-- Tester_Carto;
Voler_F;

   
   
   
   

end Mission3b ;


