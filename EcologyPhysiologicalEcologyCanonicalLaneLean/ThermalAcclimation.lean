import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure ThermalAcclimationPackage where
  basalMetabolicRate : Prop
  temperatureSensitivity : Prop
  acclimationCapacity : Prop
  metabolicScope : Prop
  criticalThermalLimits : Prop

structure ThermalAcclimationEvidence (T : ThermalAcclimationPackage) where
  basalMetabolicRateClosed : T.basalMetabolicRate
  temperatureSensitivityClosed : T.temperatureSensitivity
  acclimationCapacityClosed : T.acclimationCapacity
  metabolicScopeClosed : T.metabolicScope
  criticalThermalLimitsClosed : T.criticalThermalLimits

def ThermalAcclimationClosed (T : ThermalAcclimationPackage) : Prop :=
  T.basalMetabolicRate ∧ T.temperatureSensitivity ∧ T.acclimationCapacity ∧ T.metabolicScope ∧ T.criticalThermalLimits

theorem thermal_acclimation_closed_from_evidence (T : ThermalAcclimationPackage) (E : ThermalAcclimationEvidence T) : ThermalAcclimationClosed T := by
  exact And.intro E.basalMetabolicRateClosed
    (And.intro E.temperatureSensitivityClosed
      (And.intro E.acclimationCapacityClosed
        (And.intro E.metabolicScopeClosed E.criticalThermalLimitsClosed)))

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse