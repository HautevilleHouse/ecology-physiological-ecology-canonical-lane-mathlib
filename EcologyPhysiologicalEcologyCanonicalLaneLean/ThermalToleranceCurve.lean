import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure ThermalToleranceCurve where
  criticalThermalMin : ℝ
  criticalThermalMax : ℝ
  optimalTemperature : ℝ
  performanceCurveShape : ℝ
  thermalToleranceEquation : Prop
  thermalToleranceEquationClosed : thermalToleranceEquation

structure ThermalToleranceCurveEvidence (T : ThermalToleranceCurve) where
  minLessThanMax : T.criticalThermalMin < T.criticalThermalMax
  optimalWithinRange : T.criticalThermalMin ≤ T.optimalTemperature ∧ T.optimalTemperature ≤ T.criticalThermalMax
  thermalToleranceEquationHolds : T.thermalToleranceEquation

def ThermalToleranceCurveClosed (T : ThermalToleranceCurve) : Prop :=
  T.thermalToleranceEquation

theorem thermal_tolerance_curve_closed_from_evidence
    (T : ThermalToleranceCurve) (E : ThermalToleranceCurveEvidence T) :
    ThermalToleranceCurveClosed T :=
  E.thermalToleranceEquationHolds

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse