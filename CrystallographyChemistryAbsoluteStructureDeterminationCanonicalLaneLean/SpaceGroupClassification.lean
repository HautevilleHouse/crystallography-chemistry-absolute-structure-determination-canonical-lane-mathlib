import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure SpaceGroupClassificationPackage where
  spaceGroupNumber : ℕ
  pointGroup : String
  latticeType : String
  symmetryOperations : List (ℝ × ℝ × ℝ → ℝ × ℝ × ℝ)
  centeringType : String
  spaceGroupDetermined : Prop
  spaceGroupConsistent : Prop

structure SpaceGroupClassificationEvidence (P : SpaceGroupClassificationPackage) where
  spaceGroupDeterminedClosed : P.spaceGroupDetermined
  spaceGroupConsistentClosed : P.spaceGroupConsistent

def SpaceGroupClassificationClosed (P : SpaceGroupClassificationPackage) : Prop :=
  P.spaceGroupDetermined ∧ P.spaceGroupConsistent

theorem space_group_classification_closed_from_evidence (P : SpaceGroupClassificationPackage) (E : SpaceGroupClassificationEvidence P) : SpaceGroupClassificationClosed P := by
  exact And.intro E.spaceGroupDeterminedClosed E.spaceGroupConsistentClosed

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
