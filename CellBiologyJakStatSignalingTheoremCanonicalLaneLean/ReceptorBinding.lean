import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure ReceptorBindingPackage where
  ligand : Type
  receptor : Type
  bindingAffinity : Prop
  dimerization : Prop
  conformationalChange : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  dimerizationClosed : R.dimerization
  conformationalChangeClosed : R.conformationalChange

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.dimerization ∧ R.conformationalChange

theorem receptor_binding_closed_from_evidence (R : ReceptorBindingPackage) (E : ReceptorBindingEvidence R) : ReceptorBindingClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.dimerizationClosed E.conformationalChangeClosed)

end HautevilleHouse
end CellBiologyJakStatSignalingTheoremCanonicalLaneLean