--
-- Programme à compléter
--
with Simulation ;

procedure Mission1 is
   procedure Rouler_KA is
      begin
   Simulation.Attendre_Autorisation_Roulage;
   Simulation.Rouler_Vers(Dest=>'L');
   Simulation.Rouler_Vers(Dest=>'M');
   Simulation.Rouler_Vers(Dest=>'H');
   Simulation.Rouler_Vers(Dest=>'G');
   Simulation.Rouler_Vers(Dest=>'F');
   Simulation.Rouler_Vers(Dest=>'E');
   Simulation.Rouler_Vers(Dest=>'A');
end Rouler_KA;

procedure Rouler_DK is
begin 
   Simulation.Attendre_Autorisation_Decollage;
   Simulation.Parcourir_Piste ;
   Simulation.Rouler_Vers(Dest=>'N');
   Simulation.Rouler_Vers(Dest=>'P');
   Simulation.Rouler_Vers(Dest=>'R');
   Simulation.Rouler_Vers(Dest=>'S');
   Simulation.Rouler_Vers(Dest=>'T');
   Simulation.Rouler_Vers(Dest=>'M');
   Simulation.Rouler_Vers(Dest=>'L');
   Simulation.Rouler_Vers(Dest=>'K');
end Rouler_DK;

   procedure Tester_Roulage is
begin
      Rouler_KA;
      Rouler_DK;
      end Tester_Roulage;
      
      
begin
 Tester_Roulage;


end Mission1 ;




