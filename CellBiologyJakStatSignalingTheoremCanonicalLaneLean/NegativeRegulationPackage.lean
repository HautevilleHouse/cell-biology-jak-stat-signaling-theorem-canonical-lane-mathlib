import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure NegativeRegulationPackage (R : CytokineReceptorComplex) (J : JakKinase) (S : StatProtein) where
  phosphataseAction : Prop
  socsProteinInduction : Prop
  piasProteinInhibition : Prop
  receptorInternalization : Prop

structure NegativeRegulationEvidence {R : CytokineReceptorComplex} {J : JakKinase} {S : StatProtein}
    (P : NegativeRegulationPackage R J S) where
  phosphataseActionClosed : P.phosphataseAction
  socsProteinInductionClosed : P.socsProteinInduction
  piasProteinInhibitionClosed : P.piasProteinInhibition
  receptorInternalizationClosed : P.receptorInternalization

def NegativeRegulationClosed {R : CytokineReceptorComplex} {J : JakKinase} {S : StatProtein}
    (P : NegativeRegulationPackage R J S) : Prop :=
  P.phosphataseAction ∧ P.socsProteinInduction ∧ P.piasProteinInhibition ∧ P.receptorInternalization

theorem negative_regulation_closed_from_evidence
    {R : CytokineReceptorComplex} {J : JakKinase} {S : StatProtein} (P : NegativeRegulationPackage R J S)
    (E : NegativeRegulationEvidence P) : NegativeRegulationClosed P := by
  exact And.intro E.phosphataseActionClosed
    (And.intro E.socsProteinInductionClosed
      (And.intro E.piasProteinInhibitionClosed E.receptorInternalizationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse