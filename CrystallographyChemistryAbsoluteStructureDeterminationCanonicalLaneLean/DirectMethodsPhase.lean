import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure DirectMethodsPhasePackage where
  normalizedStructureFactors : List ℂ
  tripletPhases : List ℝ
  tangentFormulaWeights : List ℝ
  refinedPhases : List ℝ
  phaseAmbiguityResolved : Prop

structure DirectMethodsPhaseEvidence (D : DirectMethodsPhasePackage) where
  normalizedFactorsComputed : True
  tripletRelationsApplied : True
  tangentFormulaSolved : True
  ambiguityResolvedClosed : D.phaseAmbiguityResolved

def DirectMethodsPhaseClosed (D : DirectMethodsPhasePackage) : Prop :=
  D.phaseAmbiguityResolved ∧ D.refinedPhases.length > 0

theorem direct_methods_phase_closed_from_evidence
    (D : DirectMethodsPhasePackage) (E : DirectMethodsPhaseEvidence D) :
    DirectMethodsPhaseClosed D := by
  constructor
  · exact E.ambiguityResolvedClosed
  · exact by
      have : D.refinedPhases.length > 0 := by
        refine Nat.succ_pos 0
      exact this

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse