-- bibliothèques d'entrée sortie
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
-- TAD
with Coordonnee;          use Coordonnee;
with ensemble;            use ensemble;
with grilleSudoku; use grilleSudoku;
with affichage; use affichage;
-- Résolutions de sudoku
with affichage;           use affichage;
with resolutions;         use resolutions;
with remplirGrille;       use remplirGrille;

package body a_tester is

   -----------------------
   -- tests coordonnees --
   -----------------------

   -- c : case;
   -- test obtenirLigne
   function test_Coordonnees_P1 return Boolean is
      c : Type_Coordonnee;
   begin
      c := construireCoordonnees (1, 2);
      return (obtenirLigne (c) = 1);
   end test_Coordonnees_P1;

   -- test obtenirColonne
   function test_Coordonnees_P2 return Boolean is
      c : Type_Coordonnee;
   begin
      c := construireCoordonnees (1, 2);
      return (obtenirColonne (c) = 2);
   end test_Coordonnees_P2;

   -- test obtenirCarre
   -- cas n° 1 : carre n°1
   function test_Coordonnees_P3a return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 1 .. 3 loop
	 for j in 1 .. 3 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 1) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3a;

   -- test obtenirCarre
   -- cas n° 2 : carre n°2
   function test_Coordonnees_P3b return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 1 .. 3 loop
	 for j in 4 .. 6 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 2) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3b;

   -- test obtenirCarre
   -- cas n° 3 : carre n°3
   function test_Coordonnees_P3c return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 1 .. 3 loop
	 for j in 7 .. 9 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 3) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3c;

   -- test obtenirCarre
   -- cas n° 4 : carre n°4
   function test_Coordonnees_P3d return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 4 .. 6 loop
	 for j in 1 .. 3 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 4) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3d;

   -- test obtenirCarre
   -- cas n° 5 : carre n°5
   function test_Coordonnees_P3e return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 4 .. 6 loop
	 for j in 4 .. 6 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 5) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3e;

   -- test obtenirCarre
   -- cas n° 6 : carre n°6
   function test_Coordonnees_P3f return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 4 .. 6 loop
	 for j in 7 .. 9 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 6) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3f;

   -- test obtenirCarre
   -- cas n° 7 : carre n°7
   function test_Coordonnees_P3g return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 7 .. 9 loop
	 for j in 1 .. 3 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 7) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3g;

   -- test obtenirCarre
   -- cas n° 8 : carre n°8
   function test_Coordonnees_P3h return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 7 .. 9 loop
	 for j in 4 .. 6 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 8) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3h;

   -- test obtenirCarre
   -- cas n° 9 : carre n°9
   function test_Coordonnees_P3i return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      for i in 7 .. 9 loop
	 for j in 7 .. 9 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 9) then
	       K := False;
	    end if;
	 end loop;
      end loop;
      return (K);
   end test_Coordonnees_P3i;

   -- test obtenirCarre
   function test_Coordonnees_P3 return Boolean is
      c : Type_Coordonnee;
      K : Boolean := True;
   begin
      -- carre 1
      for i in 1 .. 3 loop
	 for j in 1 .. 3 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 1) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 2
      for i in 1 .. 3 loop
	 for j in 4 .. 6 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 2) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 3
      for i in 1 .. 3 loop
	 for j in 7 .. 9 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 3) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 4
      for i in 4 .. 6 loop
	 for j in 1 .. 3 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 4) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 5
      for i in 4 .. 6 loop
	 for j in 4 .. 6 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 5) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 6
      for i in 4 .. 6 loop
	 for j in 7 .. 9 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 6) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 7
      for i in 7 .. 9 loop
	 for j in 1 .. 3 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 7) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 8
      for i in 7 .. 9 loop
	 for j in 4 .. 6 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 8) then
	       return False;
	    end if;
	 end loop;
      end loop;
      -- carre 9
      for i in 7 .. 9 loop
	 for j in 7 .. 9 loop
	    c := construireCoordonnees (i, j);
	    if (obtenirCarre (c) /= 9) then
	       return False;
	    end if;
	 end loop;
      end loop;
      return True;
   end test_Coordonnees_P3;

   -- test obtenirCoordonneesCarre
   function test_Coordonnees_P4 return Boolean is
      carre : Integer;
   begin
      -- iMin de carre 1
      for carre in 1 .. 3 loop
	 if (obtenirLigne (obtenirCoordonneeCarre (carre)) /= 1) then
	    return False;
	 end if;
      end loop;
      -- iMin de carre 2
      for carre in 4 .. 6 loop
	 if (obtenirLigne (obtenirCoordonneeCarre (carre)) /= 4) then
	    return False;
	 end if;
      end loop;
      -- iMin de carre 3
      for carre in 7 .. 9 loop
	 if (obtenirLigne (obtenirCoordonneeCarre (carre)) /= 7) then
	    return False;
	 end if;
      end loop;
      -- jMin des carre 1, 3 et 7
      carre := 1;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 1) then
	 return False;
      end if;
      carre := 4;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 1) then
	 return False;
      end if;
      carre := 7;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 1 ) then
	 return False;
      end if;
      -- jMin des carre 2, 5 et 8
      carre := 2;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 4) then
	 put_line("7");
	 return False;
      end if;
      carre := 5;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 4) then
	 put_line("8");
	 return False;
      end if;
      carre := 8;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 4) then
	 put_line("9");
	 return False;
      end if;
      -- jMin des carre 3, 6 et 9
      carre := 3;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 7) then
	 put_line("10");
	 return False;
      end if;
      carre := 6;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 7) then
	 put_line("11");
	 return False;
      end if;
      carre := 9;
      if (obtenirColonne (obtenirCoordonneeCarre (carre)) /= 7) then
	 put_line("12");
	 return False;
      end if;
      return True;
   end test_Coordonnees_P4;

begin
   null;
end a_tester;
