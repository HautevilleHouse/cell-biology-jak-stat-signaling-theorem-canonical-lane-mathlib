import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JakStatReceptorPackage where
  cytokineReceptor : Type u
  janusKinaseBound : Prop
  receptorDimerization : Prop
  transPhosphorylation : Prop
  statRecruitment : Prop

structure JakStatReceptorEvidence (P : JakStatReceptorPackage) where
  janusKinaseBoundClosed : P.janusKinaseBound
  receptorDimerizationClosed : P.receptorDimerization
  transPhosphorylationClosed : P.transPhosphorylation
  statRecruitmentClosed : P.statRecruitment

def JakStatReceptorClosed (P : JakStatReceptorPackage) : Prop :=
  P.janusKinaseBound ∧ P.receptorDimerization ∧ P.transPhosphorylation ∧ P.statRecruitment

theorem jak_stat_receptor_closed_from_evidence
    (P : JakStatReceptorPackage) (E : JakStatReceptorEvidence P) :
    JakStatReceptorClosed P := by
  exact And.intro E.janusKinaseBoundClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.transPhosphorylationClosed E.statRecruitmentClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse