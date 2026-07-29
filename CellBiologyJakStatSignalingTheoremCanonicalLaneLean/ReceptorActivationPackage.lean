import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure ReceptorActivationPackage (R : CytokineReceptorComplex) where
  ligandBinding : Prop
  conformationalChange : Prop
  dimerization : Prop
  activationLoopExposed : Prop

structure ReceptorActivationEvidence {R : CytokineReceptorComplex}
    (P : ReceptorActivationPackage R) where
  ligandBindingClosed : P.ligandBinding
  conformationalChangeClosed : P.conformationalChange
  dimerizationClosed : P.dimerization
  activationLoopExposedClosed : P.activationLoopExposed

def ReceptorActivationClosed {R : CytokineReceptorComplex}
    (P : ReceptorActivationPackage R) : Prop :=
  P.ligandBinding ∧ P.conformationalChange ∧ P.dimerization ∧ P.activationLoopExposed

theorem receptor_activation_closed_from_evidence
    {R : CytokineReceptorComplex} (P : ReceptorActivationPackage R)
    (E : ReceptorActivationEvidence P) : ReceptorActivationClosed P := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.dimerizationClosed E.activationLoopExposedClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse