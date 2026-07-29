import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure QuasicrystalAdmissibilityPackage where
  diffractionPatternNonperiodic : Prop
  penroseTilingModel : Prop
  higherDimensionalEmbedding : Prop
  quasicrystalClassAccepted : Prop
  symmetryGroup : String

structure QuasicrystalAdmissibilityEvidence (P : QuasicrystalAdmissibilityPackage) where
  diffractionPatternNonperiodicClosed : P.diffractionPatternNonperiodic
  penroseTilingModelClosed : P.penroseTilingModel
  higherDimensionalEmbeddingClosed : P.higherDimensionalEmbedding
  quasicrystalClassAcceptedClosed : P.quasicrystalClassAccepted

def QuasicrystalAdmissibilityClosed (P : QuasicrystalAdmissibilityPackage) : Prop :=
  P.diffractionPatternNonperiodic ∧ P.penroseTilingModel ∧ P.higherDimensionalEmbedding ∧ P.quasicrystalClassAccepted

theorem quasicrystal_admissibility_closed_from_evidence (P : QuasicrystalAdmissibilityPackage) (E : QuasicrystalAdmissibilityEvidence P) : QuasicrystalAdmissibilityClosed P := by
  exact And.intro E.diffractionPatternNonperiodicClosed (And.intro E.penroseTilingModelClosed (And.intro E.higherDimensionalEmbeddingClosed E.quasicrystalClassAcceptedClosed))

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
