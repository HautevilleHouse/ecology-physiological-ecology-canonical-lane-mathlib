import EcologyPhysiologicalEcologyCanonicalLaneLean.EcoPhysiologicalAdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure WaterBalancePackage where
  transpirationRate : ℝ
  stomatalConductance : ℝ
  waterPotential : ℝ
  rootUptakeRate : ℝ
  atmosphericDemand : ℝ
  hydraulicConductivity : ℝ
  stomatalRegulationModel : Prop
  cavitationThreshold : Prop
  waterUseEfficiency : Prop

structure WaterBalanceEvidence (W : WaterBalancePackage) where
  stomatalRegulationModelClosed : W.stomatalRegulationModel
  cavitationThresholdClosed : W.cavitationThreshold
  waterUseEfficiencyClosed : W.waterUseEfficiency

def WaterBalanceClosed (W : WaterBalancePackage) : Prop :=
  W.stomatalRegulationModel ∧ W.cavitationThreshold ∧ W.waterUseEfficiency

theorem water_balance_closed_from_evidence (W : WaterBalancePackage) (E : WaterBalanceEvidence W) :
    WaterBalanceClosed W := by
  exact And.intro E.stomatalRegulationModelClosed
    (And.intro E.cavitationThresholdClosed E.waterUseEfficiencyClosed)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse


