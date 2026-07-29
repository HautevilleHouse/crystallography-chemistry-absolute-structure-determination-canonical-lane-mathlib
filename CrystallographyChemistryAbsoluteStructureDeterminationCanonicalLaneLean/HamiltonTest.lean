import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure HamiltonTestPackage where
  modelRfactors : ℝ → ℝ
  numberOfParameters : ℕ
  numberOfReflections : ℕ
  significanceLevel : ℝ
  testStatistic : ℝ
  nullHypothesisRejected : Prop

structure HamiltonTestEvidence (H : HamiltonTestPackage) where
  rFactorRatioComputed : True
  degreesOfFreedomCorrect : H.numberOfParameters ≤ H.numberOfReflections
  criticalValueExceeded : H.testStatistic > 1.0
  rejectionClosed : H.nullHypothesisRejected

def HamiltonTestClosed (H : HamiltonTestPackage) : Prop :=
  H.nullHypothesisRejected ∧ H.testStatistic > 1.0

theorem hamilton_test_closed_from_evidence
    (H : HamiltonTestPackage) (E : HamiltonTestEvidence H) :
    HamiltonTestClosed H := by
  exact And.intro E.rejectionClosed E.criticalValueExceeded

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse