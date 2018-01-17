package body Coordonnee is

   ---------------------------
   -- construireCoordonnees --
   ---------------------------

   function construireCoordonnees
     (ligne   : Integer;
      colonne : Integer)
      return Type_Coordonnee
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "construireCoordonnees unimplemented");
      raise Program_Error with "Unimplemented function construireCoordonnees";
      return construireCoordonnees (ligne => ligne, colonne => colonne);
   end construireCoordonnees;

   ------------------
   -- obtenirLigne --
   ------------------

   function obtenirLigne (c : Type_Coordonnee) return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "obtenirLigne unimplemented");
      raise Program_Error with "Unimplemented function obtenirLigne";
      return obtenirLigne (c => c);
   end obtenirLigne;

   --------------------
   -- obtenirColonne --
   --------------------

   function obtenirColonne (c : Type_Coordonnee) return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "obtenirColonne unimplemented");
      raise Program_Error with "Unimplemented function obtenirColonne";
      return obtenirColonne (c => c);
   end obtenirColonne;

   ------------------
   -- obtenirCarre --
   ------------------

   function obtenirCarre (c : Type_Coordonnee) return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "obtenirCarre unimplemented");
      raise Program_Error with "Unimplemented function obtenirCarre";
      return obtenirCarre (c => c);
   end obtenirCarre;

   ----------------------------
   -- obtenirCoordonneeCarre --
   ----------------------------

   function obtenirCoordonneeCarre
     (numCarre : Integer)
      return Type_Coordonnee
   is
      Coord : Type_Coordonnee;
   begin
      case numCarre is
      when 1 => Coord.ligne := 1; Coord.colonne := 1;
      when 2 => Coord.ligne := 1; Coord.colonne := 4;
      when 3 => Coord.ligne := 1; Coord.colonne := 7;
      when 4 => Coord.ligne := 4; Coord.colonne := 1;
      when 5 => Coord.ligne := 4; Coord.colonne := 4;
      when 6 => Coord.ligne := 4; Coord.colonne := 7;
      when 7 => Coord.ligne := 7; Coord.colonne := 1;
      when 8 => Coord.ligne := 7; Coord.colonne := 4;
      when 9 => Coord.ligne := 7; Coord.colonne := 7;
      end case;
      return Coord;
   end obtenirCoordonneeCarre;

end Coordonnee;
