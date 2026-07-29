import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure WaterUseEfficiencyBalancePackage where
  transpirationRate : Float
  carbonGain : Float
  rootDepth : Float
  soilWaterPotential : Float
  evaporativeDemand : Float

structure WaterUseEfficiencyBalanceEvidence (W : WaterUseEfficiencyBalancePackage) where
  intrinsicWaterUseEfficiencyClosed : W.carbonGain / W.transpirationRate > 0.0
  soilWaterAccessClosed : W.rootDepth > 0.0 ∧ W.soilWaterPotential < 0.0
  evaporativeDemandClosed : W.evaporativeDemand > 0.0

def WaterUseEfficiencyBalanceClosed (W : WaterUseEfficiencyBalancePackage) : Prop :=
  W.carbonGain / W.transpirationRate > 0.0 ∧
  (W.rootDepth > 0.0 ∧ W.soilWaterPotential < 0.0) ∧
  W.evaporativeDemand > 0.0

theorem water_use_efficiency_balance_closed_from_evidence (W : WaterUseEfficiencyBalancePackage) (E : WaterUseEfficiencyBalanceEvidence W) :
    WaterUseEfficiencyBalanceClosed W := by
  exact And.intro E.intrinsicWaterUseEfficiencyClosed
    (And.intro E.soilWaterAccessClosed E.evaporativeDemandClosed)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse