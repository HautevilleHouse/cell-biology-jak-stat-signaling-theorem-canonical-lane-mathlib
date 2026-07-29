import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JAKSTATReceptorPackage where
  receptorType : Type u
  ligandBindingDomain : Prop
  transmembraneDomain : Prop
  intracellularDomain : Prop
  kinaseActivity : Prop
  ligandBindingDomainClosed : ligandBindingDomain
  transmembraneDomainClosed : transmembraneDomain
  intracellularDomainClosed : intracellularDomain
  kinaseActivityClosed : kinaseActivity

structure JAKSTATReceptorEvidence (R : JAKSTATReceptorPackage) where
  ligandBindingDomainClosed : R.ligandBindingDomain
  transmembraneDomainClosed : R.transmembraneDomain
  intracellularDomainClosed : R.intracellularDomain
  kinaseActivityClosed : R.kinaseActivity

def JAKSTATReceptorClosed (R : JAKSTATReceptorPackage) : Prop :=
  R.ligandBindingDomain ∧ R.transmembraneDomain ∧ R.intracellularDomain ∧ R.kinaseActivity

theorem jakstat_receptor_closed_from_evidence
    (R : JAKSTATReceptorPackage) (E : JAKSTATReceptorEvidence R) :
    JAKSTATReceptorClosed R := by
  exact And.intro E.ligandBindingDomainClosed
    (And.intro E.transmembraneDomainClosed
      (And.intro E.intracellularDomainClosed E.kinaseActivityClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse