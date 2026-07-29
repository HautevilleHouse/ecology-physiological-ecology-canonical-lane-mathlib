import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure MetabolicTheoryNew where
  bodyMass : ℝ
  metabolicRate : ℝ
  temperatureKelvin : ℝ
  activationEnergy : ℝ
  boltzmannConstant : ℝ
  metabolicScalingExponent : ℝ
  metabolicTheoryEquation : Prop
  metabolicTheoryEquationClosed : metabolicTheoryEquation

structure MetabolicTheoryNewEvidence (M : MetabolicTheoryNew) where
  bodyMassPositive : real_positive M.bodyMass
  metabolicRatePositive : real_positive M.metabolicRate
  temperaturePositive : real_positive M.temperatureKelvin
  activationEnergyPositive : real_positive M.activationEnergy
  theoryEquationHolds : M.metabolicTheoryEquation

def MetabolicTheoryNewClosed (M : MetabolicTheoryNew) : Prop :=
  M.metabolicTheoryEquation

theorem metabolic_theory_new_closed_from_evidence
    (M : MetabolicTheoryNew) (E : MetabolicTheoryNewEvidence M) :
    MetabolicTheoryNewClosed M :=
  E.theoryEquationHolds

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse