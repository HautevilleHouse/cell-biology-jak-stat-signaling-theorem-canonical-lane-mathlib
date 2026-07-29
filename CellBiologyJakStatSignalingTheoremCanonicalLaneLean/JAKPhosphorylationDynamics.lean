import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure JAKPhosphorylationPackage where
  ligandBinding : Prop
  receptorDimerization : Prop
  JAKPhosphorylation : Prop
  activeJAKConformation : Prop
  ligandBindingClosed : ligandBinding
  receptorDimerizationClosed : receptorDimerization
  JAKPhosphorylationClosed : JAKPhosphorylation
  activeJAKConformationClosed : activeJAKConformation

structure JAKPhosphorylationEvidence (P : JAKPhosphorylationPackage) where
  ligandBindingClosed : P.ligandBinding
  receptorDimerizationClosed : P.receptorDimerization
  JAKPhosphorylationClosed : P.JAKPhosphorylation
  activeJAKConformationClosed : P.activeJAKConformation

def JAKPhosphorylationClosed (P : JAKPhosphorylationPackage) : Prop :=
  P.ligandBinding ∧ P.receptorDimerization ∧ P.JAKPhosphorylation ∧ P.activeJAKConformation

theorem jak_phosphorylation_closed_from_evidence
    (P : JAKPhosphorylationPackage) (E : JAKPhosphorylationEvidence P) :
    JAKPhosphorylationClosed P := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.JAKPhosphorylationClosed E.activeJAKConformationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse