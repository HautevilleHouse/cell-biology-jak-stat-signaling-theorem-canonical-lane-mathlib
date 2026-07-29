import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure SOCSInhibitionPackage where
  socsProteinInduction : Prop
  jakBindingInhibition : Prop
  ubiquitinationDegradation : Prop
  signalTermination : Prop

structure SOCSInhibitionEvidence (S : SOCSInhibitionPackage) where
  socsProteinInductionClosed : S.socsProteinInduction
  jakBindingInhibitionClosed : S.jakBindingInhibition
  ubiquitinationDegradationClosed : S.ubiquitinationDegradation
  signalTerminationClosed : S.signalTermination

def SOCSInhibitionClosed (S : SOCSInhibitionPackage) : Prop :=
  S.socsProteinInduction ∧ S.jakBindingInhibition ∧
  S.ubiquitinationDegradation ∧ S.signalTermination

theorem socs_inhibition_closed_from_evidence (S : SOCSInhibitionPackage)
    (E : SOCSInhibitionEvidence S) : SOCSInhibitionClosed S := by
  exact And.intro E.socsProteinInductionClosed
    (And.intro E.jakBindingInhibitionClosed
      (And.intro E.ubiquitinationDegradationClosed E.signalTerminationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse