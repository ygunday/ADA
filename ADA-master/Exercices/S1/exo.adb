with Rois;
with GAda.Text_IO;
procedure Mission is
  package Txt renames GAda.Text_IO;   
procedure Sort is

  begin
  for T in 1..(Rois.Nb_Rois) loop
     Txt.Put_Line(Rois.Nom(T) & Integer'Image(Rois.Debut(T)) & "-"& Integer'Image(Rois.Fin(T)));
  end loop;
  end Sort;
  
  function Sortmin return Integer is
     C:Integer:=1000;
     F:Integer;
  begin
     for A in 1..(Rois.Nb_Rois) loop
	if Rois.Fin(A)-Rois.Debut(A)<C then
	   C:=Rois.Fin(A)-Rois.Debut(A);
	   F:=A;
	end if;
     end loop;
     return F;
  end Sortmin;
  
  function Sortmax return Integer is
     B:Integer:=0;
     X:Integer;
     begin
	for A in 1..(Rois.Nb_Rois) loop
	if (Rois.Fin(A))-(Rois.Debut(A))>B then
	   B:=(Rois.Fin(A))-(Rois.Debut(A));
	   X:=A;
	end if;
	end loop; 
	return X;
     end Sortmax;




	
  
begin
   Sort;
   Txt.Put_Line(Rois.Nom(Sortmax));
   Txt.Put_Line(Rois.Nom(Sortmin));   
end Mission;

     
