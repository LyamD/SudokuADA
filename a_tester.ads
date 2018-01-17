with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package a_tester is

   type Pt_Fonction is access function return Boolean;

   type Test_Unitaire is limited record
      function_Of_Test : Pt_Fonction;
      error_Test       : Unbounded_String;
   end record;

   -- tests TAD Coordonnees
   function test_Coordonnees_P1 return Boolean; --1
   function test_Coordonnees_P2 return Boolean; --2
   function test_Coordonnees_P3a return Boolean; --3
   function test_Coordonnees_P3b return Boolean; --4
   function test_Coordonnees_P3c return Boolean; --5
   function test_Coordonnees_P3d return Boolean; --6
   function test_Coordonnees_P3e return Boolean; --7
   function test_Coordonnees_P3f return Boolean; --8
   function test_Coordonnees_P3g return Boolean; --9
   function test_Coordonnees_P3h return Boolean; --10
   function test_Coordonnees_P3i return Boolean; --11
   function test_Coordonnees_P3 return Boolean; --12
   function test_Coordonnees_P4 return Boolean; --13

   les_Tests : constant array (Positive range <>) of Test_Unitaire :=

   -- tests TAD Coordonnees
     ((test_Coordonnees_P1'Access,
       To_Unbounded_String ("echec de la propriete 1 Coordonnees")),
      (test_Coordonnees_P2'Access,
       To_Unbounded_String ("echec de la propriete 2 Coordonnees")),
      (test_Coordonnees_P3a'Access,
       To_Unbounded_String ("echec de la propriete 3a Coordonnees")),
      (test_Coordonnees_P3b'Access,
       To_Unbounded_String ("echec de la propriete 3b Coordonnees")),
      (test_Coordonnees_P3c'Access,
       To_Unbounded_String ("echec de la propriete 3c Coordonnees")),
      (test_Coordonnees_P3d'Access,
       To_Unbounded_String ("echec de la propriete 3d Coordonnees")),
      (test_Coordonnees_P3e'Access,
       To_Unbounded_String ("echec de la propriete 3e Coordonnees")),
      (test_Coordonnees_P3f'Access,
       To_Unbounded_String ("echec de la propriete 3f Coordonnees")),
      (test_Coordonnees_P3g'Access,
       To_Unbounded_String ("echec de la propriete 3g Coordonnees")),
      (test_Coordonnees_P3h'Access,
       To_Unbounded_String ("echec de la propriete 3h Coordonnees")),
      (test_Coordonnees_P3h'Access,
       To_Unbounded_String ("echec de la propriete 3i Coordonnees")),
      (test_Coordonnees_P3'Access,
       To_Unbounded_String ("echec de la propriete 3 Coordonnees")),
      (test_Coordonnees_P4'Access,
       To_Unbounded_String ("echec de la propriete 4 Coordonnees")));

   resultats : array (les_Tests'Range) of Boolean;

end a_tester;
