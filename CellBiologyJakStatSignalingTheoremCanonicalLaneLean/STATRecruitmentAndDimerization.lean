import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure STATRecruitmentPackage where
  statRecruitment : Prop
  phosphorylationByJAK : Prop
  statDimerization : Prop
  nuclearTranslocation : Prop
  statRecruitmentClosed : statRecruitment
  phosphorylationByJAKClosed : phosphorylationByJAK
  statDimerizationClosed : statDimerization
  nuclearTranslocationClosed : nuclearTranslocation

structure STATRecruitmentEvidence (S : STATRecruitmentPackage) where
  statRecruitmentClosed : S.statRecruitment
  phosphorylationByJAKClosed : S.phosphorylationByJAK
  statDimerizationClosed : S.statDimerization
  nuclearTranslocationClosed : S.nuclearTranslocation

def STATRecruitmentClosed (S : STATRecruitmentPackage) : Prop :=
  S.statRecruitment ∧ S.phosphorylationByJAK ∧ S.statDimerization ∧ S.nuclearTranslocation

theorem stat_recruitment_closed_from_evidence
    (S : STATRecruitmentPackage) (E : STATRecruitmentEvidence S) :
    STATRecruitmentClosed S := by
  exact And.intro E.statRecruitmentClosed
    (And.intro E.phosphorylationByJAKClosed
      (And.intro E.statDimerizationClosed E.nuclearTranslocationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse