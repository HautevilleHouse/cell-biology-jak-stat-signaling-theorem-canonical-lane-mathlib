import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JakStatAdmittedObject where
  receptorDimerization : Prop
  jakActivation : Prop
  statPhosphorylation : Prop
  geneTranscription : Prop
  socsInhibition : Prop
  conclusion : jakActivation ∧ statPhosphorylation ∧ geneTranscription

def JakStatWitnessClosed (O : JakStatAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse