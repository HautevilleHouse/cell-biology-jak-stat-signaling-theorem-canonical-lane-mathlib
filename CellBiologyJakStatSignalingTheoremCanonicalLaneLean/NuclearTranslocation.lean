import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure NuclearTranslocationPackage where
  importinAlpha : Prop
  importinBeta : Prop
  nlsRecognition : Prop
  nuclearPoreBinding : Prop
  ranGtpDependence : Prop
  statDimerTranslocated : Prop

structure NuclearTranslocationEvidence (N : NuclearTranslocationPackage) where
  nlsRecognitionClosed : N.nlsRecognition
  importinBinding : N.importinAlpha ∧ N.importinBeta
  statDimerTranslocatedClosed : N.statDimerTranslocated

def NuclearTranslocationClosed (N : NuclearTranslocationPackage) : Prop :=
  N.nlsRecognition ∧ N.importinAlpha ∧ N.importinBeta ∧ N.statDimerTranslocated

theorem nuclear_translocation_closed_from_evidence (N : NuclearTranslocationPackage)
    (E : NuclearTranslocationEvidence N) : NuclearTranslocationClosed N := by
  rcases E.importinBinding with ⟨hAlpha, hBeta⟩
  exact And.intro E.nlsRecognitionClosed
    (And.intro hAlpha (And.intro hBeta E.statDimerTranslocatedClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse