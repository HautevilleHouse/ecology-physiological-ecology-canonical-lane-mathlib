import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure OrganismalEnergyBudget where
  assimilationRate : ℝ
  respirationRate : ℝ
  excretionRate : ℝ
  growthRate : ℝ
  reproductionAllocation : ℝ
  energyBalanceEquation : Prop
  energyBalanceEquationClosed : energyBalanceEquation

structure OrganismalEnergyBudgetEvidence (B : OrganismalEnergyBudget) where
  assimilationRatePositive : real_positive B.assimilationRate
  respirationRatePositive : real_positive B.respirationRate
  growthRateNonnegative : real_nonnegative B.growthRate
  balanceEquationHolds : B.energyBalanceEquation

def OrganismalEnergyBudgetClosed (B : OrganismalEnergyBudget) : Prop :=
  B.energyBalanceEquation

theorem organismal_energy_budget_closed_from_evidence
    (B : OrganismalEnergyBudget) (E : OrganismalEnergyBudgetEvidence B) :
    OrganismalEnergyBudgetClosed B :=
  E.balanceEquationHolds

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse