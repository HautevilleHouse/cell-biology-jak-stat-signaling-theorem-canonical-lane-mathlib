import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure GeneTranscriptionPackage where
  dnaElement : Type
  statBindingElement : Prop
  transcriptionalActivation : Prop
  targetGeneExpression : Prop

structure GeneTranscriptionEvidence (G : GeneTranscriptionPackage) where
  statBindingElementClosed : G.statBindingElement
  transcriptionalActivationClosed : G.transcriptionalActivation
  targetGeneExpressionClosed : G.targetGeneExpression

def GeneTranscriptionClosed (G : GeneTranscriptionPackage) : Prop :=
  G.statBindingElement ∧ G.transcriptionalActivation ∧ G.targetGeneExpression

theorem gene_transcription_closed_from_evidence (G : GeneTranscriptionPackage) (E : GeneTranscriptionEvidence G) : GeneTranscriptionClosed G := by
  exact And.intro E.statBindingElementClosed (And.intro E.transcriptionalActivationClosed E.targetGeneExpressionClosed)

end HautevilleHouse
end CellBiologyJakStatSignalingTheoremCanonicalLaneLean