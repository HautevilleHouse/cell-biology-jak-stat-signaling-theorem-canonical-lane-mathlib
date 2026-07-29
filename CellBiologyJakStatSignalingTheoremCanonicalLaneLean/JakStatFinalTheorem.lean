import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

def ConstrainedJakStatClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_jak_stat_endgame (A : AdmissibleClass) :
    ConstrainedJakStatClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse