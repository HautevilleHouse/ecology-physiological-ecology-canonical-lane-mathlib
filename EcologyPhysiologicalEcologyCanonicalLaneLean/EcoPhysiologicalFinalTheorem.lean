import EcologyPhysiologicalEcologyCanonicalLaneLean.EcoPhysiologicalGateLemmas

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

def ConstrainedEcoPhysiologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecophysiological_endgame (A : AdmissibleClass) :
    ConstrainedEcoPhysiologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse


