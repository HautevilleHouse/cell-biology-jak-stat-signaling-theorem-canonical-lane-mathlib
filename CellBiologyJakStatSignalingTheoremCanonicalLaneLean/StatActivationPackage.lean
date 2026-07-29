import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure StatActivationPackage (J : JakKinase) (S : StatProtein) where
  jakRecruitment : Prop
  phosphorylationAtSite : Prop
  sh2DomainDimerization : Prop
  nuclearTranslocation : Prop
  dnaBinding : Prop
  geneTranscription : Prop

structure StatActivationEvidence {J : JakKinase} {S : StatProtein}
    (P : StatActivationPackage J S) where
  jakRecruitmentClosed : P.jakRecruitment
  phosphorylationAtSiteClosed : P.phosphorylationAtSite
  sh2DomainDimerizationClosed : P.sh2DomainDimerization
  nuclearTranslocationClosed : P.nuclearTranslocation
  dnaBindingClosed : P.dnaBinding
  geneTranscriptionClosed : P.geneTranscription

def StatActivationClosed {J : JakKinase} {S : StatProtein}
    (P : StatActivationPackage J S) : Prop :=
  P.jakRecruitment ∧ P.phosphorylationAtSite ∧ P.sh2DomainDimerization ∧
  P.nuclearTranslocation ∧ P.dnaBinding ∧ P.geneTranscription

theorem stat_activation_closed_from_evidence
    {J : JakKinase} {S : StatProtein} (P : StatActivationPackage J S)
    (E : StatActivationEvidence P) : StatActivationClosed P := by
  exact And.intro E.jakRecruitmentClosed
    (And.intro E.phosphorylationAtSiteClosed
      (And.intro E.sh2DomainDimerizationClosed
        (And.intro E.nuclearTranslocationClosed
          (And.intro E.dnaBindingClosed E.geneTranscriptionClosed))))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse