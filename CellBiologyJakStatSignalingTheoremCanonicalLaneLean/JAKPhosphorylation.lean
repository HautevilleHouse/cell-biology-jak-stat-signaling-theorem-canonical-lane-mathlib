import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JAKPhosphorylationPackage where
  jakKinase : Type
  phosphorylationSites : Prop
  activationLoop : Prop
  transphosphorylation : Prop

structure JAKPhosphorylationEvidence (J : JAKPhosphorylationPackage) where
  phosphorylationSitesClosed : J.phosphorylationSites
  activationLoopClosed : J.activationLoop
  transphosphorylationClosed : J.transphosphorylation

def JAKPhosphorylationClosed (J : JAKPhosphorylationPackage) : Prop :=
  J.phosphorylationSites ∧ J.activationLoop ∧ J.transphosphorylation

theorem jak_phosphorylation_closed_from_evidence (J : JAKPhosphorylationPackage) (E : JAKPhosphorylationEvidence J) : JAKPhosphorylationClosed J := by
  exact And.intro E.phosphorylationSitesClosed (And.intro E.activationLoopClosed E.transphosphorylationClosed)

end HautevilleHouse
end CellBiologyJakStatSignalingTheoremCanonicalLaneLean