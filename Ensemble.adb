package body ensemble is

   ------------------------
   -- construireEnsemble --
   ------------------------

   function construireEnsemble return Type_Ensemble is
      e : Type_Ensemble;
   begin
      for i in 1 .. 9 loop
         e(i) := False;
      end loop;
      return e;
   end construireEnsemble;

   ------------------
   -- ensembleVide --
   ------------------

   function ensembleVide (e : in Type_Ensemble) return Boolean is
   begin
      if e(1) = False and
        e(2) = False and
        e(3) = False and
        e(4) = False and
        e(5) = False and
        e(6) = False and
        e(7) = False and
        e(8) = False and
        e(9) = False then
         return True;
      else
         return False;
      end if;
   end ensembleVide;

   -----------------------
   -- appartientChiffre --
   -----------------------

   function appartientChiffre
     (e : in Type_Ensemble;
      v :    Integer)
      return Boolean
   is
   begin
      if e(v) = True then
         return True;
      else
         return False;
      end if;
   end appartientChiffre;

   --------------------
   -- nombreChiffres --
   --------------------

   function nombreChiffres (e : in Type_Ensemble) return Integer is
      k : Integer; -- nombre d'éléments retournés
   begin
      k := 0;
      for i in 1 .. 9 loop
         if e(i) = True then
            k := k + 1;
         end if;
      end loop;
      return k;
   end nombreChiffres;

   --------------------
   -- ajouterChiffre --
   --------------------

   procedure ajouterChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if appartientChiffre(e, v) then
         raise APPARTIENT_ENSEMBLE;
      end if;
      e(v) := True;
   end ajouterChiffre;

   --------------------
   -- retirerChiffre --
   --------------------

   procedure retirerChiffre (e : in out Type_Ensemble; v : in Integer) is
   begin
      if not appartientChiffre(e, v) then
         raise NON_APPARTIENT_ENSEMBLE;
      end if;
      e(v) := False;
   end retirerChiffre;

end ensemble;
