import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure AbsoluteStructureParameterDeterminationPackage where
  flackParameter : ℝ
  hooftParameter : ℝ
  bayesianProbability : ℝ
  absoluteStructureAssigned : Prop
  parameterSignificant : Prop
  assignmentValidated : Prop

structure AbsoluteStructureParameterDeterminationEvidence (P : AbsoluteStructureParameterDeterminationPackage) where
  absoluteStructureAssignedClosed : P.absoluteStructureAssigned
  parameterSignificantClosed : P.parameterSignificant
  assignmentValidatedClosed : P.assignmentValidated

def AbsoluteStructureParameterDeterminationClosed (P : AbsoluteStructureParameterDeterminationPackage) : Prop :=
  P.absoluteStructureAssigned ∧ P.parameterSignificant ∧ P.assignmentValidated

theorem absolute_structure_parameter_determination_closed_from_evidence (P : AbsoluteStructureParameterDeterminationPackage) (E : AbsoluteStructureParameterDeterminationEvidence P) : AbsoluteStructureParameterDeterminationClosed P := by
  exact And.intro E.absoluteStructureAssignedClosed (And.intro E.parameterSignificantClosed E.assignmentValidatedClosed)

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
