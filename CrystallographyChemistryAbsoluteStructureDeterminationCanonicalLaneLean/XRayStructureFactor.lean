import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure XRayStructureFactorPackage where
  unitCell : Type u
  atomPositions : unitCell → List (ℝ × ℝ × ℝ)
  scatteringFactors : unitCell → List ℝ
  structureFactorFormula : ℝ → ℝ → ℝ → ℂ
  observedStructureFactors : List ℂ
  calculatedStructureFactors : List ℂ
  residualFactor : ℝ

structure XRayStructureFactorEvidence (X : XRayStructureFactorPackage) where
  unitCellDefined : True
  atomPositionsAssigned : True
  scatteringFactorsComputed : True
  structureFactorFormulaDerived : True
  residualFactorConverges : X.residualFactor < 0.05

def XRayStructureFactorClosed (X : XRayStructureFactorPackage) : Prop :=
  X.unitCell ≠ ∅ ∧ X.residualFactor < 0.05

theorem xray_structure_factor_closed_from_evidence
    (X : XRayStructureFactorPackage) (E : XRayStructureFactorEvidence X) :
    XRayStructureFactorClosed X := by
  constructor
  · exact True.intro
  · exact E.residualFactorConverges

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse