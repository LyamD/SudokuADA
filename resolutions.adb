package body resolutions is

   -----------------------
   -- estChiffreValable --
   -----------------------

   function estChiffreValable
     (g : in Type_Grille;
      v :    Integer;
      c :    Type_Coordonnee)
      return Boolean
   is
      esb_Ligne : Type_Ensemble;
      esb_Colonne : Type_Ensemble;
      esb_Carre : Type_Ensemble;
      valable : Boolean;
   begin
      --Exception
      if not caseVide(g,c) then
         raise CASE_NON_VIDE;
      end if;
      --Début code
      --Vérification Ligne
         esb_Ligne := obtenirChiffresDUneLigne( g , obtenirLigne(c) );
         esb_Colonne := obtenirChiffresDUneColonne( g , obtenirColonne(c) );
         esb_Carre := obtenirChiffresDUnCarre( g , obtenirCarre(c) );
         valable := appartientChiffre( esb_Carre , v);
         valable := appartientChiffre( esb_Colonne , v);
         valable := appartientChiffre( esb_Ligne , v);
      return not valable;
   end estChiffreValable;

   -------------------------------
   -- obtenirSolutionsPossibles --
   -------------------------------

   function obtenirSolutionsPossibles

   ------------------------------------------
   -- rechercherSolutionUniqueDansEnsemble --
   ------------------------------------------

   function rechercherSolutionUniqueDansEnsemble
     (resultats : in Type_Ensemble)
      return Integer
      is
         indice : Integer;
   begin
         if nombreChiffres(resultats) > 1 then
            raise PLUS_DE_UN_CHIFFRE;
         else if ENSEMBLE_VIDE(resultats) then
               raise ENSEMBLE_VIDE;
            end if;
         end if;
         for i in 1..9 loop
            if appartientChiffre(resultats,i) then
               indice := i;
            end if;
         end loop;
         return indice;
   end rechercherSolutionUniqueDansEnsemble;

   --------------------
   -- resoudreSudoku --
   --------------------

   procedure resoudreSudoku
     (g      : in out Type_Grille;
      trouve :    out Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "resoudreSudoku unimplemented");
      raise Program_Error with "Unimplemented procedure resoudreSudoku";
   end resoudreSudoku;

end resolutions;
