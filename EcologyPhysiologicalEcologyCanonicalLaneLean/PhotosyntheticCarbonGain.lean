import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure PhotosyntheticCarbonGainPackage where
  leafArea : Float
  stomatalConductance : Float
  atmosphericCO2 : Float
  photosyntheticPhotonFlux : Float
  temperature : Float
  rubiscoActivity : Float

structure PhotosyntheticCarbonGainEvidence (P : PhotosyntheticCarbonGainPackage) where
  carbonAssimilationRateClosed : P.stomatalConductance * P.atmosphericCO2 / (P.stomatalConductance + 0.5) > 0.0
  lightDependenceClosed : P.leafArea * P.photosyntheticPhotonFlux > 0.0
  temperatureDependenceClosed : P.temperature > 0.0 ∧ P.temperature < 50.0
  rubiscoLimitedClosed : P.rubiscoActivity > 0.0

def PhotosyntheticCarbonGainClosed (P : PhotosyntheticCarbonGainPackage) : Prop :=
  P.stomatalConductance * P.atmosphericCO2 / (P.stomatalConductance + 0.5) > 0.0 ∧
  P.leafArea * P.photosyntheticPhotonFlux > 0.0 ∧
  (P.temperature > 0.0 ∧ P.temperature < 50.0) ∧
  P.rubiscoActivity > 0.0

theorem photosynthetic_carbon_gain_closed_from_evidence (P : PhotosyntheticCarbonGainPackage) (E : PhotosyntheticCarbonGainEvidence P) :
    PhotosyntheticCarbonGainClosed P := by
  exact And.intro E.carbonAssimilationRateClosed
    (And.intro E.lightDependenceClosed
      (And.intro E.temperatureDependenceClosed E.rubiscoLimitedClosed))

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse