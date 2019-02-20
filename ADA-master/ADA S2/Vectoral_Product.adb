with GAda.Text_IO;
with Gada.Integer_Text_IO;
With GAda.Float_Text_IO;

procedure Vec is 
   A: Float;
   Matrix: array(1..2,1..3) of Float;
   Product: array(1..3) of Float;
begin
   for X in 1..2 loop
      if X=1 then
	    GAda.Text_IO.Put("FIRST VECTOR");
	 else if X=2 then
	    GAda.Text_IO.Put("SECOND VECTOR");
	 end if;
	 end if;
	 GAda.Text_IO.New_Line;      
      for Y in 1..3 loop
	 if Y=1 then
	    GAda.Text_IO.Put("x component:");
	      GAda.Float_Text_IO.Get(A);
	      Matrix(X,Y):= A;
	 else if Y=2 then
	     GAda.Text_IO.Put("y component:");
	      GAda.Float_Text_IO.Get(A);
	      Matrix(X,Y):= A;
	 else if Y=3 then
	     GAda.Text_IO.Put("z component:");
	      GAda.Float_Text_IO.Get(A);
	      Matrix(X,Y):= A;
	 end if;
	 end if;
	 end if;
	 end loop;
   end loop;
   
   for X in 1..2 loop
      for Y in 1..3 loop
	    GAda.Float_Text_IO.Put(Matrix(X,Y));
	    GAda.Text_IO.Put("_");
      end loop;
      GAda.Text_IO.New_Line;
   end loop;
   
      GAda.Text_IO.New_Line;   
      GAda.Text_IO.Put_Line("Vectoral Product"); 
      Product(1):= ((Matrix(1,2)*Matrix(2,3))-(Matrix(1,3)*Matrix(2,2)));
      Product(2):= ((Matrix(1,1)*Matrix(2,3))-(Matrix(1,3)*Matrix(2,1)));
      Product(3):= ((Matrix(1,1)*Matrix(2,2))-(Matrix(1,2)*Matrix(2,1)));
      for D in 1..3 loop
	 GAda.Float_Text_IO.Put(Product(D));
	 GAda.Text_IO.New_Line;
      end loop;
      
	    
	    
    end Vec;







   
		     
		     
		     
			      
			      
		     
			
		   
				 
				 





   

