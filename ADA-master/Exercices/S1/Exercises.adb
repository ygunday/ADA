with GAda.Text_IO;
with GAda.Integer_Text_IO;
with Cartographie;
procedure Exercices is
     package T renames GAda.Text_IO ;
     package I renames GAda.Integer_Text_IO;
     package Ctg renames Cartographie;
  procedure Factorielle is
     S:Integer:=1;
  begin
     T.Put("Give me a number:");
     for X in 1..(I.FGet) loop
	S:= X*S;
     end loop;
     I.Put(S);
	
  end Factorielle;
  
  procedure Somme_N is
     A:Integer:=0;
  begin
     T.Put("Give me a number:");
     for X in 1..(I.FGet) loop
	A:= A+X;
     end loop;
     I.Put(A);
  end Somme_N;
  
  procedure Analysis is 
     A:Integer:=0;
     B:Integer;
     C:Integer:=0;
     D:Integer;
     E:Float;
     F:Integer:=0;
  begin

     T.Put_Line("Bonjour, entrez des nombres et terminez par 0.");
     T.New_Line;
     T.Put("Votre Nombre:");
     D:=I.FGet;
     T.New_Line;
     B:=D;
     while D/= 0 loop
	T.Put("Votre Numero:");
	if D>=A then
	   A:=D;
	end if;
	if D<=B then
	   B:=D;
	end if;
	F:=F+1;
	C:=C+D;
	E:=Float(C)/Float(A);
	D:=I.FGet;
	T.New_Line;
     end loop;
     T.Put_Line("Valeur Maximale:"&Integer'Image(A));
     T.Put_Line("Valeur Minimale:"&Integer'Image(B));
     T.Put_Line("Moyenne des Nombres:"&Float'Image(E));
     
  end Analysis;
  
  procedure Racine is
     A:Integer;
     B:Integer;
     C:Integer;
     D:Float;
  begin
     T.Put_Line("AX^2 + BX + C");
     T.Put("A:");
     A:= I.FGet;
     T.Put("B:");
     B:= I.FGet;     
     T.Put("C:");
     C:= I.FGet;     
     
     D:= Float((B*B)-(4*A*C));
     if D<0.0 then
	T.Put("No real answers");
     else
	T.Put_Line(Float'Image(((Float(-1*B))-(Ctg.SQRT(D)))/Float(2*A)));
	T.Put(Float'Image(((Float(-1*B))+(Ctg.SQRT(D)))/Float(2*A)));
	
	end if;
     end Racine;
  
  begin    
  -- Factorielle;
  --Somme_N;
  --Analysis;
     Racine;
   end Exercices;
     
     
     
