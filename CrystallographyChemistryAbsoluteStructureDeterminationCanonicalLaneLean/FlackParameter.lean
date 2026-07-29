import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure FlackParameterPackage where
  absoluteStructureParameter : ℝ
  standardUncertainty : ℝ
  crystalPolarity : Prop
  inversionTwinningsPossibility : Prop
  flackParameterRange : ℝ → Prop

structure FlackParameterEvidence (F : FlackParameterPackage) where
  absoluteStructureParameterClosed : F.flackParameterRange F.absoluteStructureParameter
  standardUncertaintyClosed : F.standardUncertainty < 0.1
  polarityDeterminedClosed : F.crystalPolarity ∨ F.inversionTwinningsPossibility

def FlackParameterClosed (F : FlackParameterPackage) : Prop :=
  F.flackParameterRange F.absoluteStructureParameter ∧ F.standardUncertainty < 0.1

theorem flack_parameter_closed_from_evidence
    (F : FlackParameterPackage) (E : FlackParameterEvidence F) :
    FlackParameterClosed F := by
  exact And.intro E.absoluteStructureParameterClosed E.standardUncertaintyClosed

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse