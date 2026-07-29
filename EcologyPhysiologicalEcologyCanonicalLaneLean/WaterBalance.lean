import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure WaterBalancePackage where
  transpirationRate : Prop
  stomatalConductance : Prop
  leafWaterPotential : Prop
  soilWaterUptake : Prop
  hydraulicConductance : Prop

structure WaterBalanceEvidence (W : WaterBalancePackage) where
  transpirationRateClosed : W.transpirationRate
  stomatalConductanceClosed : W.stomatalConductance
  leafWaterPotentialClosed : W.leafWaterPotential
  soilWaterUptakeClosed : W.soilWaterUptake
  hydraulicConductanceClosed : W.hydraulicConductance

def WaterBalanceClosed (W : WaterBalancePackage) : Prop :=
  W.transpirationRate ∧ W.stomatalConductance ∧ W.leafWaterPotential ∧ W.soilWaterUptake ∧ W.hydraulicConductance

theorem water_balance_closed_from_evidence (W : WaterBalancePackage) (E : WaterBalanceEvidence W) : WaterBalanceClosed W := by
  exact And.intro E.transpirationRateClosed
    (And.intro E.stomatalConductanceClosed
      (And.intro E.leafWaterPotentialClosed
        (And.intro E.soilWaterUptakeClosed E.hydraulicConductanceClosed)))

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse