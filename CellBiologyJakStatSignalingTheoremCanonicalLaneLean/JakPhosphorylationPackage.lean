import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JakPhosphorylationPackage (R : CytokineReceptorComplex) (J : JakKinase) where
  receptorAssociated : Prop
  transPhosphorylation : Prop
  activationLoopPhosphorylated : Prop
  kinaseActivity : Prop

structure JakPhosphorylationEvidence {R : CytokineReceptorComplex} {J : JakKinase}
    (P : JakPhosphorylationPackage R J) where
  receptorAssociatedClosed : P.receptorAssociated
  transPhosphorylationClosed : P.transPhosphorylation
  activationLoopPhosphorylatedClosed : P.activationLoopPhosphorylated
  kinaseActivityClosed : P.kinaseActivity

def JakPhosphorylationClosed {R : CytokineReceptorComplex} {J : JakKinase}
    (P : JakPhosphorylationPackage R J) : Prop :=
  P.receptorAssociated ∧ P.transPhosphorylation ∧ P.activationLoopPhosphorylated ∧ P.kinaseActivity

theorem jak_phosphorylation_closed_from_evidence
    {R : CytokineReceptorComplex} {J : JakKinase} (P : JakPhosphorylationPackage R J)
    (E : JakPhosphorylationEvidence P) : JakPhosphorylationClosed P := by
  exact And.intro E.receptorAssociatedClosed
    (And.intro E.transPhosphorylationClosed
      (And.intro E.activationLoopPhosphorylatedClosed E.kinaseActivityClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse