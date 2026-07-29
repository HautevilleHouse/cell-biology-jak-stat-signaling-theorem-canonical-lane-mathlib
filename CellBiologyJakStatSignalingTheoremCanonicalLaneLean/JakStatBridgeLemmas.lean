import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse