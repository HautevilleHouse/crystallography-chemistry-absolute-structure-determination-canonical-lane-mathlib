import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure BravaisLatticeDeterminationPackage where
  unitCellParameters : ℝ × ℝ × ℝ
  unitCellAngles : ℝ × ℝ × ℝ
  latticeSystem : String
  bravaisLatticeType : String
  metricSymmetry : Prop
  latticeDetermined : Prop

structure BravaisLatticeDeterminationEvidence (P : BravaisLatticeDeterminationPackage) where
  metricSymmetryClosed : P.metricSymmetry
  latticeDeterminedClosed : P.latticeDetermined

def BravaisLatticeDeterminationClosed (P : BravaisLatticeDeterminationPackage) : Prop :=
  P.metricSymmetry ∧ P.latticeDetermined

theorem bravais_lattice_determination_closed_from_evidence (P : BravaisLatticeDeterminationPackage) (E : BravaisLatticeDeterminationEvidence P) : BravaisLatticeDeterminationClosed P := by
  exact And.intro E.metricSymmetryClosed E.latticeDeterminedClosed

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse
