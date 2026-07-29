import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure CrystallographicRefinementPackage where
  leastSquaresRefinement : Prop
  weightSchemeApplied : Prop
  anisotropicDisplacementModeled : Prop
  residualReduced : Prop
  fittingQuality : ℝ
  refinementConverged : Prop

structure CrystallographicRefinementEvidence (P : CrystallographicRefinementPackage) where
  residualReducedClosed : P.residualReduced
  fittingQualityClosed : P.fittingQuality < 1.0
  refinementConvergedClosed : P.refinementConverged

def CrystallographicRefinementClosed (P : CrystallographicRefinementPackage) : Prop :=
  P.residualReduced ∧ P.fittingQuality < 1.0 ∧ P.refinementConverged

theorem crystallographic_refinement_closed_from_evidence (P : CrystallographicRefinementPackage) (E : CrystallographicRefinementEvidence P) : CrystallographicRefinementClosed P := by
  exact And.intro E.residualReducedClosed (And.intro E.fittingQualityClosed E.refinementConvergedClosed)

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
