import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure ReceptorDimerizationPackage where
  ligandBinding : Prop
  receptorPairActivation : Prop
  janusKinaseRecruitment : Prop
  phosphorylationEvents : Prop

structure ReceptorDimerizationEvidence (R : ReceptorDimerizationPackage) where
  ligandBindingClosed : R.ligandBinding
  receptorPairActivationClosed : R.receptorPairActivation
  janusKinaseRecruitmentClosed : R.janusKinaseRecruitment
  phosphorylationEventsClosed : R.phosphorylationEvents

def ReceptorDimerizationClosed (R : ReceptorDimerizationPackage) : Prop :=
  R.ligandBinding ∧ R.receptorPairActivation ∧ R.janusKinaseRecruitment ∧ R.phosphorylationEvents

theorem receptor_dimerization_closed_from_evidence (R : ReceptorDimerizationPackage)
    (E : ReceptorDimerizationEvidence R) : ReceptorDimerizationClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorPairActivationClosed
      (And.intro E.janusKinaseRecruitmentClosed E.phosphorylationEventsClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse