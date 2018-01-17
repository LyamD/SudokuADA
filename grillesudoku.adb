with Coordonnee; use Coordonnee;

package body grilleSudoku is

   ----------------------
   -- construireGrille --
   ----------------------

   function construireGrille return Type_Grille is
      grille : Type_Grille;
   begin
      for i in 1..9 loop
         for j in 1..9 loop
            grille(i,j) := 0;
         end loop;
      end loop;
      return grille;
   end construireGrille;

   --------------
   -- caseVide --
   --------------

   function caseVide (g : in Type_Grille; c : in Type_Coordonnee) return Boolean
   is
   begin
      return g(obtenirLigne(c),obtenirColonne(c)) = 0;
   end caseVide;

   --------------------
   -- obtenirChiffre --
   --------------------

   function obtenirChiffre
     (g : in Type_Grille;
      c : in Type_Coordonnee)
      return Integer
   is
   begin
      if caseVide(g,c) then
         raise OBTENIR_CHIFFRE_NUL;
      end if;

      return g(obtenirLigne(c),obtenirColonne(c));
   end obtenirChiffre;

   --------------------
   -- nombreChiffres --
   --------------------

   function nombreChiffres (g : in Type_Grille) return Integer is
      compteur : Integer := 0; -- valeur permettant de compter le nb de cases pleines
   begin
      for i in 1..9 loop
         for j in 1..9 loop
            if g(i,j) /= 0 then
               compteur := compteur + 1;
            end if;
         end loop;
      end loop;
      return compteur;
   end nombreChiffres;

   ------------------
   -- fixerChiffre --
   ------------------

   procedure fixerChiffre
     (g : in out Type_Grille;
      c : in     Type_Coordonnee;
      v : in     Integer)
   is
   begin
      if caseVide(g,c) then
         raise FIXER_CHIFFRE_NON_NUL;
      end if;

      g(obtenirLigne(c),obtenirColonne(c)) := v;
   end fixerChiffre;

   ---------------
   -- viderCase --
   ---------------

   procedure viderCase (g : in out Type_Grille; c : in out Type_Coordonnee) is
   begin
      if caseVide(g,c) then
         raise VIDER_CASE_VIDE;
      end if;

      g(obtenirLigne(c),obtenirColonne(c)) := 0;
   end viderCase;

   ----------------
   -- estRemplie --
   ----------------

   function estRemplie (g : in Type_Grille) return Boolean is
   begin
      return (nombreChiffres(g) = 81);
   end estRemplie;

   ------------------------------
   -- obtenirChiffresDUneLigne --
   ------------------------------

   function obtenirChiffresDUneLigne
     (g        : in Type_Grille;
      numLigne : in Integer)
      return Type_Ensemble
   is
      ligne : Type_Ensemble;
   begin
      ligne := construireEnsemble;
      for i in 1 .. 9 loop
         ajouterChiffre(ligne,g(i,numLigne));
      end loop;
      return ligne;
   end obtenirChiffresDUneLigne;

   --------------------------------
   -- obtenirChiffresDUneColonne --
   --------------------------------

   function obtenirChiffresDUneColonne
     (g          : in Type_Grille;
      numColonne : in Integer)
      return Type_Ensemble
   is
      colonne : Type_Ensemble;
   begin
      colonne := construireEnsemble;
      for i in 1..9 loop
         ajouterChiffre(colonne,g(numColonne,i));
      end loop;
      return colonne;
   end obtenirChiffresDUneColonne;

   -----------------------------
   -- obtenirChiffresDUnCarre --
   -----------------------------

   function obtenirChiffresDUnCarre
     (g        : in Type_Grille;
      numCarre : in Integer)
      return Type_Ensemble
   is
      carre : Type_Ensemble;
      c : Type_Coordonnee;
   begin
      carre := construireEnsemble;
      c := obtenirCoordonneeCarre(numCarre);
      for i in obtenirColonne(c)..obtenirColonne(c)+2 loop
         for j in obtenirLigne(c)..obtenirLigne(c)+2 loop
            ajouterChiffre(carre,g(i,j));
         end loop;
      end loop;
      return carre;
   end obtenirChiffresDUnCarre;

end grilleSudoku;
