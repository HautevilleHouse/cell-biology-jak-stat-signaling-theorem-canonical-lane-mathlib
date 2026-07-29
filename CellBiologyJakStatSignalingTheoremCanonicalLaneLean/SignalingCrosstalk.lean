import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure SignalingCrosstalkPackage where
  mapkPathwayInteraction : Prop
  pi3kAktPathwayInteraction : Prop
  nfκBPathwayInteraction : Prop
  transcriptionalRegulation : Prop
  mapkPathwayInteractionClosed : mapkPathwayInteraction
  pi3kAktPathwayInteractionClosed : pi3kAktPathwayInteraction
  nfκBPathwayInteractionClosed : nfκBPathwayInteraction
  transcriptionalRegulationClosed : transcriptionalRegulation

structure SignalingCrosstalkEvidence (C : SignalingCrosstalkPackage) where
  mapkPathwayInteractionClosed : C.mapkPathwayInteraction
  pi3kAktPathwayInteractionClosed : C.pi3kAktPathwayInteraction
  nfκBPathwayInteractionClosed : C.nfκBPathwayInteraction
  transcriptionalRegulationClosed : C.transcriptionalRegulation

def SignalingCrosstalkClosed (C : SignalingCrosstalkPackage) : Prop :=
  C.mapkPathwayInteraction ∧ C.pi3kAktPathwayInteraction ∧ C.nfκBPathwayInteraction ∧ C.transcriptionalRegulation

theorem signaling_crosstalk_closed_from_evidence
    (C : SignalingCrosstalkPackage) (E : SignalingCrosstalkEvidence C) :
    SignalingCrosstalkClosed C := by
  exact And.intro E.mapkPathwayInteractionClosed
    (And.intro E.pi3kAktPathwayInteractionClosed
      (And.intro E.nfκBPathwayInteractionClosed E.transcriptionalRegulationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse