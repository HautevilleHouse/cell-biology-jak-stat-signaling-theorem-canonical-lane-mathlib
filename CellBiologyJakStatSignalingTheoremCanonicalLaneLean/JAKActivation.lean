import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JAKActivationPackage where
  janusKinaseConformationalChange : Prop
  transPhosphorylation : Prop
  catalyticDomainActivation : Prop
  dockingSiteExposure : Prop

structure JAKActivationEvidence (J : JAKActivationPackage) where
  janusKinaseConformationalChangeClosed : J.janusKinaseConformationalChange
  transPhosphorylationClosed : J.transPhosphorylation
  catalyticDomainActivationClosed : J.catalyticDomainActivation
  dockingSiteExposureClosed : J.dockingSiteExposure

def JAKActivationClosed (J : JAKActivationPackage) : Prop :=
  J.janusKinaseConformationalChange ∧ J.transPhosphorylation ∧
  J.catalyticDomainActivation ∧ J.dockingSiteExposure

theorem jak_activation_closed_from_evidence (J : JAKActivationPackage)
    (E : JAKActivationEvidence J) : JAKActivationClosed J := by
  exact And.intro E.janusKinaseConformationalChangeClosed
    (And.intro E.transPhosphorylationClosed
      (And.intro E.catalyticDomainActivationClosed E.dockingSiteExposureClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse