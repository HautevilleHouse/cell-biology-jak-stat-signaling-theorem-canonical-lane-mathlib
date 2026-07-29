import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse