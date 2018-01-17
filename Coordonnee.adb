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

   end construireCoordonnees;

   ------------------
   -- obtenirLigne --
   ------------------

   function obtenirLigne (c : Type_Coordonnee) return Integer is
      lig : Integer; -- Vakeur a retourner
   begin
      lig := c.ligne;
      return lig;
   end obtenirLigne;

   --------------------
   -- obtenirColonne --
   --------------------

   function obtenirColonne (c : Type_Coordonnee) return Integer is
      col : Integer; -- Valeur a retourner
   begin
      col := c.colonne;
      return col;
   end obtenirColonne;

   ------------------
   -- obtenirCarre --
   ------------------

   function obtenirCarre (c : Type_Coordonnee) return Integer is
   begin

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
