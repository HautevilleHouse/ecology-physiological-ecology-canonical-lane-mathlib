import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure NutrientUptakeKinetics where
  ionConcentration : ℝ
  maximumUptakeRate : ℝ
  michaelisConstant : ℝ
  uptakeRate : ℝ
  michaelisMentenEquation : Prop
  michaelisMentenEquationClosed : michaelisMentenEquation

structure NutrientUptakeKineticsEvidence (N : NutrientUptakeKinetics) where
  concentrationPositive : real_positive N.ionConcentration
  maxRatePositive : real_positive N.maximumUptakeRate
  michaelisConstantPositive : real_positive N.michaelisConstant
  uptakeKineticsHolds : N.michaelisMentenEquation

def NutrientUptakeKineticsClosed (N : NutrientUptakeKinetics) : Prop :=
  N.michaelisMentenEquation

theorem nutrient_uptake_kinetics_closed_from_evidence
    (N : NutrientUptakeKinetics) (E : NutrientUptakeKineticsEvidence N) :
    NutrientUptakeKineticsClosed N :=
  E.uptakeKineticsHolds

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse