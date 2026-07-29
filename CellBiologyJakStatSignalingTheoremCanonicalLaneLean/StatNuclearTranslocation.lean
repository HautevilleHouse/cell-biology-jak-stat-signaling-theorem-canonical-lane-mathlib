import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure StatNuclearTranslocationPackage where
  statDimers : Type u
  importinAlphaBinding : Prop
  nuclearPoreDocking : Prop
  ranGTPDependentRelease : Prop
  nuclearAccumulation : Prop

structure StatNuclearTranslocationEvidence (N : StatNuclearTranslocationPackage) where
  importinAlphaBindingClosed : N.importinAlphaBinding
  nuclearPoreDockingClosed : N.nuclearPoreDocking
  ranGTPDependentReleaseClosed : N.ranGTPDependentRelease
  nuclearAccumulationClosed : N.nuclearAccumulation

def StatNuclearTranslocationClosed (N : StatNuclearTranslocationPackage) : Prop :=
  N.importinAlphaBinding ∧ N.nuclearPoreDocking ∧ N.ranGTPDependentRelease ∧ N.nuclearAccumulation

theorem stat_nuclear_translocation_closed_from_evidence
    (N : StatNuclearTranslocationPackage) (E : StatNuclearTranslocationEvidence N) :
    StatNuclearTranslocationClosed N := by
  exact And.intro E.importinAlphaBindingClosed
    (And.intro E.nuclearPoreDockingClosed
      (And.intro E.ranGTPDependentReleaseClosed E.nuclearAccumulationClosed))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse