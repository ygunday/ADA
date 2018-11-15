--
-- Programme à compléter
--
with Simulation; 
with Avion_Sol;
with Tour;

procedure Mission2 is
   procedure Rouler_KA is
      begin
   Tour.Attendre_Autorisation_Roulage;
   Avion_Sol.Rouler_Vers(Dest=>'L');
   Avion_Sol.Rouler_Vers(Dest=>'M');
   Avion_Sol.Rouler_Vers(Dest=>'H');
   Avion_Sol.Rouler_Vers(Dest=>'G');
   Avion_Sol.Rouler_Vers(Dest=>'F');
   Avion_Sol.Rouler_Vers(Dest=>'E');
   Avion_Sol.Rouler_Vers(Dest=>'A');
end Rouler_KA;

procedure Rouler_DK is
begin 
   Tour.Attendre_Autorisation_Decollage;
   Avion_Sol.Parcourir_Piste ;
   Avion_Sol.Rouler_Vers(Dest=>'N');
   Avion_Sol.Rouler_Vers(Dest=>'P');
   Avion_Sol.Rouler_Vers(Dest=>'R');
   Avion_Sol.Rouler_Vers(Dest=>'S');
   Avion_Sol.Rouler_Vers(Dest=>'T');
   Avion_Sol.Rouler_Vers(Dest=>'M');
   Avion_Sol.Rouler_Vers(Dest=>'L');
   Avion_Sol.Rouler_Vers(Dest=>'K');
end Rouler_DK;

   procedure Tester_Roulage is
begin
      Rouler_KA;
      Rouler_DK;
      end Tester_Roulage;
      
      
begin
 Tester_Roulage;


end Mission2 ;




