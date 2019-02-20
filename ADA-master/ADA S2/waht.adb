with GAda.Text_IO;
with Gada.Integer_Text_IO;
With GAda.Float_Text_IO;
procedure Big is
   type T_Jour_Semaine is (Lun,Mar,Mer,Jeu,Ven,Sam,Dim);
procedure Vec(Jour:T_Jour_Semaine) is 

begin
   case Jour is
      when Lun=> GAda.Text_IO.Put("1");
      when Mar=> GAda.Text_IO.Put("2");
      when Mer=> GAda.Text_IO.Put("3");
      when Jeu=> GAda.Text_IO.Put("4");
      when Ven=> GAda.Text_IO.Put("5");
      when Sam=> GAda.Text_IO.Put("6");
      when Dim=> GAda.Text_IO.Put("7");
	end case;

	    
	    
end Vec;

begin
  Vec(Lun); 
   end Big;







   
		     
		     
		     
			      
			      
		     
			
		   
				 
				 





   

