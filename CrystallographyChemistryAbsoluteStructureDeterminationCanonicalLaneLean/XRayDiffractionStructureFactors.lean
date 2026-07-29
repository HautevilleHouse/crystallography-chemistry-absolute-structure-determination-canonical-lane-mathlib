import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure XRayDiffractionStructureFactorsPackage where
  unitCellVolume : ℝ
  atomicPositions : List (ℝ × ℝ × ℝ)
  atomicScatteringFactors : List ℝ
  structureFactorComputed : ℝ
  structureFactorFormula : Prop
  diffractionPatternSimulated : Prop

structure XRayDiffractionStructureFactorsEvidence (P : XRayDiffractionStructureFactorsPackage) where
  unitCellVolumeClosed : P.unitCellVolume > 0
  atomicPositionsClosed : P.atomicPositions.length ≥ 1
  atomicScatteringFactorsClosed : P.atomicScatteringFactors.length = P.atomicPositions.length
  structureFactorFormulaClosed : P.structureFactorFormula
  diffractionPatternSimulatedClosed : P.diffractionPatternSimulated

def XRayDiffractionStructureFactorsClosed (P : XRayDiffractionStructureFactorsPackage) : Prop :=
  P.unitCellVolume > 0 ∧ P.atomicPositions.length ≥ 1 ∧ P.atomicScatteringFactors.length = P.atomicPositions.length ∧ P.structureFactorFormula ∧ P.diffractionPatternSimulated

theorem xray_diffraction_structure_factors_closed_from_evidence (P : XRayDiffractionStructureFactorsPackage) (E : XRayDiffractionStructureFactorsEvidence P) : XRayDiffractionStructureFactorsClosed P := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.atomicPositionsClosed (And.intro E.atomicScatteringFactorsClosed (And.intro E.structureFactorFormulaClosed E.diffractionPatternSimulatedClosed)))

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
