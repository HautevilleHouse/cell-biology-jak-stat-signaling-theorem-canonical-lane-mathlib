import CellBiologyJakStatSignalingTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure JakStatAdmittedObject where
  cellType : Type
  receptorActivation : Prop
  statPhosphorylation : Prop
  nuclearTranslocation : Prop
  transcriptionalResponse : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : JakStatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse
