import canonicalLaneMathlib.AdmissibleClass
import CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean.BridgeLemmas
import CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

def ConstrainedAbsoluteStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_absolute_structure_endgame (A : AdmissibleClass) :
    ConstrainedAbsoluteStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse