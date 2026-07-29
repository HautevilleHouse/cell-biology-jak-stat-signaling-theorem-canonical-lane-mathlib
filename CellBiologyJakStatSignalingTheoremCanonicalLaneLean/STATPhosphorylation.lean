import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure STATPhosphorylationPackage where
  statRecruitmentToReceptor : Prop
  jakMediatedPhosphorylation : Prop
  statDimerization : Prop
  nuclearTranslocation : Prop

structure STATPhosphorylationEvidence (S : STATPhosphorylationPackage) where
  statRecruitmentToReceptorClosed : S.statRecruitmentToReceptor
  jakMediatedPhosphorylationClosed : S.jakMediatedPhosphorylation
  statDimerizationClosed : S.statDimerization
  nuclearTranslocationClosed : S.nuclearTranslocation

def STATPhosphorylationClosed (S : STATPhosphorylationPackage) : Prop :=
  S.statRecruitmentToReceptor ∧ S.jakMediatedPhosphorylation ∧
  S.statDimerization ∧ S.nuclearTranslocation

theorem stat_phosphorylation_closed_from_evidence (S : STATPhosphorylationPackage)
    (E : STATPhosphorylationEvidence S) : STATPhosphorylationClosed S := by
  exact And.intro E.statRecruitmentToReceptorClosed
    (And.intro E.jakMediatedPhosphorylationClosed
      (And.intro E.statDimerizationClosed E.nuclearTranslocationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse