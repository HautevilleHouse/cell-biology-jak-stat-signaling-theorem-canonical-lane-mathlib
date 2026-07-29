import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure STATDimerizationPackage where
  statProtein : Type
  phosphorylatedSTAT : Prop
  dimerFormation : Prop
  nuclearTranslocation : Prop

structure STATDimerizationEvidence (S : STATDimerizationPackage) where
  phosphorylatedSTATClosed : S.phosphorylatedSTAT
  dimerFormationClosed : S.dimerFormation
  nuclearTranslocationClosed : S.nuclearTranslocation

def STATDimerizationClosed (S : STATDimerizationPackage) : Prop :=
  S.phosphorylatedSTAT ∧ S.dimerFormation ∧ S.nuclearTranslocation

theorem stat_dimerization_closed_from_evidence (S : STATDimerizationPackage) (E : STATDimerizationEvidence S) : STATDimerizationClosed S := by
  exact And.intro E.phosphorylatedSTATClosed (And.intro E.dimerFormationClosed E.nuclearTranslocationClosed)

end HautevilleHouse
end CellBiologyJakStatSignalingTheoremCanonicalLaneLean