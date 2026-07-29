import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JakKinasePackage where
  kinaseDomain : Prop
  pseudokinaseDomain : Prop
  transphosphorylation : Prop
  activationLoopPhosphorylation : Prop
  jakActivated : Prop
  statRecruitmentSite : Prop

structure JakActivationEvidence (J : JakKinasePackage) where
  transphosphorylationClosed : J.transphosphorylation
  activationLoopPhosphorylationClosed : J.activationLoopPhosphorylation
  jakActivatedClosed : J.jakActivated

def JakActivationClosed (J : JakKinasePackage) : Prop :=
  J.transphosphorylation ∧ J.activationLoopPhosphorylation ∧ J.jakActivated

theorem jak_activation_closed_from_evidence (J : JakKinasePackage)
    (E : JakActivationEvidence J) : JakActivationClosed J := by
  exact And.intro E.transphosphorylationClosed
    (And.intro E.activationLoopPhosphorylationClosed E.jakActivatedClosed)

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse