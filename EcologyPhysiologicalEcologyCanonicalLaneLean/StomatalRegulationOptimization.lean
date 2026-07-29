import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure StomatalRegulationOptimizationPackage where
  leafWaterPotential : Float
  stomatalConductance : Float
  carbonGain : Float
  vaporPressureDeficit : Float
  hydraulicConductance : Float

structure StomatalRegulationOptimizationEvidence (S : StomatalRegulationOptimizationPackage) where
  gainCostRatioClosed : S.carbonGain / (S.stomatalConductance * S.vaporPressureDeficit) > 0.0
  hydraulicSafetyClosed : S.leafWaterPotential > -5.0 ∧ S.hydraulicConductance > 0.0
  stomatalResponseClosed : S.stomatalConductance > 0.0 ∧ S.stomatalConductance < 1.0

def StomatalRegulationOptimizationClosed (S : StomatalRegulationOptimizationPackage) : Prop :=
  S.carbonGain / (S.stomatalConductance * S.vaporPressureDeficit) > 0.0 ∧
  (S.leafWaterPotential > -5.0 ∧ S.hydraulicConductance > 0.0) ∧
  (S.stomatalConductance > 0.0 ∧ S.stomatalConductance < 1.0)

theorem stomatal_regulation_optimization_closed_from_evidence (S : StomatalRegulationOptimizationPackage) (E : StomatalRegulationOptimizationEvidence S) :
    StomatalRegulationOptimizationClosed S := by
  exact And.intro E.gainCostRatioClosed
    (And.intro E.hydraulicSafetyClosed E.stomatalResponseClosed)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse