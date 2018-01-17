package body Coordonnee is

   ---------------------------
   -- construireCoordonnees --
   ---------------------------

   function construireCoordonnees
     (ligne   : Integer;
      colonne : Integer)
      return Type_Coordonnee
   is
      c : Type_Coordonnee; -- Valeur a retourner
   begin

      return c;
   end construireCoordonnees;

   ------------------
   -- obtenirLigne --
   ------------------

   function obtenirLigne (c : Type_Coordonnee) return Integer is
      lig: Integer; -- Valeur à retourner
   begin
      lig := c.ligne;
      return lig;
   end obtenirLigne;

   --------------------
   -- obtenirColonne --
   --------------------

   function obtenirColonne (c : Type_Coordonnee) return Integer is
      col : Integer; -- Valeur à retourner
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
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "obtenirCoordonneeCarre unimplemented");
      raise Program_Error with "Unimplemented function obtenirCoordonneeCarre";
      return obtenirCoordonneeCarre (numCarre => numCarre);
   end obtenirCoordonneeCarre;

end Coordonnee;
