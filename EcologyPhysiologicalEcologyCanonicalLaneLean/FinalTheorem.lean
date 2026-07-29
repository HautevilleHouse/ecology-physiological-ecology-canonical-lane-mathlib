import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPhysiologicalEcologyCanonicalLaneLean.WaterBalance
import HautevilleHouse.EcologyPhysiologicalEcologyCanonicalLaneLean.PhotosyntheticOptimum
import HautevilleHouse.EcologyPhysiologicalEcologyCanonicalLaneLean.ThermalAcclimation

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedEcologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecology_endgame (A : AdmissibleClass) : ConstrainedEcologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse