with GAda.Text_IO ;
with Avion_Sol;
with Train;
with INSA_AIR;
with Assert ;

procedure Mission2b is


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
   
   
   --
   -- Mission 2, partie 4 : procédure Realiser_Vol_Demo
   --


begin
   
   -- Effectuer tous les tests unitaires de Delta_Cap et Caps_Egaux
   -- Tests_Unitaires ;
 -- Orienter_Au_Sol(0.0);
Tester_Cap;

   
   
   
   

end Mission2b ;


