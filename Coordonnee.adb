with ada.Integer_Text_IO, ada.Text_IO;
use ada.Integer_Text_IO, ada.Text_IO;
package body Coordonnee is

   ---------------------------
   -- construireCoordonnees --
   ---------------------------

   function construireCoordonnees
     (ligne   : Integer;
      colonne : Integer)
      return Type_Coordonnee
   is
      c : Type_Coordonnee; -- Valeur à retourner
   begin
      c.ligne := ligne;
      c.colonne := colonne;
      return c;
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
      nbCarre : Integer;
   begin
      if c.ligne <= 3 and c.ligne > 0 and c.colonne <= 3 and c.colonne > 0 then
         nbCarre := 1;
      elsif c.ligne <= 3 and c.ligne > 0 and c.colonne <= 6 and c.colonne > 3 then
         nbCarre := 2;
      elsif c.ligne <= 3 and c.ligne > 0 and c.colonne <= 9 and c.colonne > 6 then
         nbCarre := 3;
      elsif c.ligne <= 6 and c.ligne > 3 and c.colonne <= 3 and c.colonne > 0 then
         nbCarre := 4;
      elsif c.ligne <= 6 and c.ligne > 3 and c.colonne <= 6 and c.colonne > 3 then
         nbCarre := 5;
      elsif c.ligne <= 6 and c.ligne > 3 and c.colonne <= 9 and c.colonne > 6 then
         nbCarre := 6;
      elsif c.ligne <= 9 and c.ligne > 6 and c.colonne <= 3 and c.colonne > 0 then
         nbCarre := 7;
      elsif c.ligne <= 9 and c.ligne > 6 and c.colonne <= 6 and c.colonne > 3 then
         nbCarre := 8;
      elsif c.ligne <= 9 and c.ligne > 6 and c.colonne <= 9 and c.colonne > 6 then
         nbCarre := 9;
      end if;
      return nbCarre;
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

      return Coord;
   end obtenirCoordonneeCarre;

end Coordonnee;
