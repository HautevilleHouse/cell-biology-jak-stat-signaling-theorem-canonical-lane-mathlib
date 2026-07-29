import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingTheoremCanonicalLaneLean

structure TargetGeneExpressionPackage where
  statDnaBinding : Type u
  coactivatorRecruitment : Prop
  chromatinRemodeling : Prop
  transcriptionalInitiation : Prop
  mrnaSplicingExport : Prop

structure TargetGeneExpressionEvidence (T : TargetGeneExpressionPackage) where
  statDnaBindingClosed : T.statDnaBinding
  coactivatorRecruitmentClosed : T.coactivatorRecruitment
  chromatinRemodelingClosed : T.chromatinRemodeling
  transcriptionalInitiationClosed : T.transcriptionalInitiation
  mrnaSplicingExportClosed : T.mrnaSplicingExport

def TargetGeneExpressionClosed (T : TargetGeneExpressionPackage) : Prop :=
  T.statDnaBinding ∧ T.coactivatorRecruitment ∧ T.chromatinRemodeling ∧ T.transcriptionalInitiation ∧ T.mrnaSplicingExport

theorem target_gene_expression_closed_from_evidence
    (T : TargetGeneExpressionPackage) (E : TargetGeneExpressionEvidence T) :
    TargetGeneExpressionClosed T := by
  exact And.intro E.statDnaBindingClosed
    (And.intro E.coactivatorRecruitmentClosed
      (And.intro E.chromatinRemodelingClosed
        (And.intro E.transcriptionalInitiationClosed E.mrnaSplicingExportClosed)))

end CellBiologyJakStatSignalingTheoremCanonicalLaneLean
end HautevilleHouse