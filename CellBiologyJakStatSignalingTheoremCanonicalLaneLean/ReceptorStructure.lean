import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure CytokineReceptorPackage where
  receptorSubunitAlpha : Type
  receptorSubunitBeta : Type
  extracellularDomain : Prop
  transmembraneDomain : Prop
  cytoplasmicDomain : Prop
  jakBindingSite : Prop
  receptorDimerization : Prop

theorem receptor_dimerization_condition (R : CytokineReceptorPackage) :
    R.receptorDimerization ↔ (R.jakBindingSite ∧ R.cytoplasmicDomain) := by
  simp

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse