import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyJakStatSignalingTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyJakStatSignalingTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

def ConstrainedJakStatClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_jak_stat_endgame (A : AdmissibleClass) : ConstrainedJakStatClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end CellBiologyJakStatSignalingTheoremCanonicalLaneLean