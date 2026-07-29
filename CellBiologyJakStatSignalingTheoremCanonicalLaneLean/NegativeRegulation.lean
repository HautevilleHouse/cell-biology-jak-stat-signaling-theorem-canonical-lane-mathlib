import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure NegativeRegulationPackage where
  phosphataseAction : Type u
  socsProteins : Prop
  piasProteins : Prop
  statDegradation : Prop
  signalTermination : Prop

structure NegativeRegulationEvidence (R : NegativeRegulationPackage) where
  phosphataseActionClosed : R.phosphataseAction
  socsProteinsClosed : R.socsProteins
  piasProteinsClosed : R.piasProteins
  statDegradationClosed : R.statDegradation
  signalTerminationClosed : R.signalTermination

def NegativeRegulationClosed (R : NegativeRegulationPackage) : Prop :=
  R.phosphataseAction ∧ R.socsProteins ∧ R.piasProteins ∧ R.statDegradation ∧ R.signalTermination

theorem negative_regulation_closed_from_evidence
    (R : NegativeRegulationPackage) (E : NegativeRegulationEvidence R) :
    NegativeRegulationClosed R := by
  exact And.intro E.phosphataseActionClosed
    (And.intro E.socsProteinsClosed
      (And.intro E.piasProteinsClosed
        (And.intro E.statDegradationClosed E.signalTerminationClosed)))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse