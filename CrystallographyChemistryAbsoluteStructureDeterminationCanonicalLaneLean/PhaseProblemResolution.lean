import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure PhaseProblemResolutionPackage where
  directMethodsApplied : Prop
  pattersonMethodsApplied : Prop
  dualSpaceIterativeApplied : Prop
  phaseDetermined : Prop
  structureSolved : Prop
  reliabilityIndex : ℝ

structure PhaseProblemResolutionEvidence (P : PhaseProblemResolutionPackage) where
  phaseDeterminedClosed : P.phaseDetermined
  structureSolvedClosed : P.structureSolved
  reliabilityIndexClosed : P.reliabilityIndex < 0.1

def PhaseProblemResolutionClosed (P : PhaseProblemResolutionPackage) : Prop :=
  P.phaseDetermined ∧ P.structureSolved ∧ P.reliabilityIndex < 0.1

theorem phase_problem_resolution_closed_from_evidence (P : PhaseProblemResolutionPackage) (E : PhaseProblemResolutionEvidence P) : PhaseProblemResolutionClosed P := by
  exact And.intro E.phaseDeterminedClosed (And.intro E.structureSolvedClosed E.reliabilityIndexClosed)

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
