import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean

structure AnomalousScatteringPackage where
  anomalousScatteringFactors : (ℝ × ℝ × ℝ) → ℂ
  friedelsLaw : Prop
  intensityDifferences : List ℝ
  absoluteConfiguration : Prop

structure AnomalousScatteringEvidence (A : AnomalousScatteringPackage) where
  anomalousFactorsComputed : True
  friedelsLawViolationDetected : ¬ A.friedelsLaw
  intensityDiffSignificant : A.intensityDifferences ≠ []
  configurationClosed : A.absoluteConfiguration

def AnomalousScatteringClosed (A : AnomalousScatteringPackage) : Prop :=
  A.absoluteConfiguration ∧ A.intensityDifferences.length > 0

theorem anomalous_scattering_closed_from_evidence
    (A : AnomalousScatteringPackage) (E : AnomalousScatteringEvidence A) :
    AnomalousScatteringClosed A := by
  constructor
  · exact E.configurationClosed
  · exact by
      simpa [List.length_pos] using E.intensityDiffSignificant

end CrystallographyChemistryAbsoluteStructureDeterminationCanonicalLaneLean
end HautevilleHouse