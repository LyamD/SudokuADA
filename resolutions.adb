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
   begin
      if not caseVide(c) then
         raise CASE_NON_VIDE

         return estChiffreValable (g => g, v => v, c => c);
      end estChiffreValable;

      -------------------------------
      -- obtenirSolutionsPossibles --
      -------------------------------

      function obtenirSolutionsPossibles
        (g : in Type_Grille;
         c : in Type_Coordonnee)
         return Type_Ensemble
      is
         i : Integer; -- Indice tableau
         e : Type_Ensemble; -- Ensemble des valeurs possibles
         possible : Boolean; -- Solution possible

      begin
         -- Exceptions
         if not caseVide(g,c) then
            raise CASE_NON_VIDE;
         end if;
         -- Body
         for i in 1..9 loop
            possible := estChiffreValable(g,i,c);
            if possible then
               e(i) := TRUE;
            end if;
         end loop;
         return e;
      end obtenirSolutionsPossibles;

      ------------------------------------------
      -- rechercherSolutionUniqueDansEnsemble --
      ------------------------------------------

      function rechercherSolutionUniqueDansEnsemble
        (resultats : in Type_Ensemble)
         return Integer
      is
      begin
         --  Generated stub: replace with real body!
         pragma Compile_Time_Warning (Standard.True, "rechercherSolutionUniqueDansEnsemble unimplemented");
         raise Program_Error with "Unimplemented function rechercherSolutionUniqueDansEnsemble";
         return rechercherSolutionUniqueDansEnsemble (resultats => resultats);
      end rechercherSolutionUniqueDansEnsemble;

      --------------------
      -- resoudreSudoku --
      --------------------

      procedure resoudreSudoku
        (g      : in out Type_Grille;
         trouve :    out Boolean)
      is
      begin

      end resoudreSudoku;

   end resolutions;
