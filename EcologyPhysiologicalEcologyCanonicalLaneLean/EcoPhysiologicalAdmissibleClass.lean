import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure EcoPhysiologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  ecosystemFunction : carrier → ℝ

structure EcoPhysiologicalAdmittedObject where
  space : EcoPhysiologicalSpace
  regulation : Prop
  equilibrium : Prop
  optimalTrait : carrier
  physiologicalConstraint : Prop
  conclusion : equilibrium ∧ physiologicalConstraint

structure EcoPhysiologicalEndgameState where
  object : EcoPhysiologicalAdmittedObject

def EcoPhysiologicalWitnessClosed (O : EcoPhysiologicalAdmittedObject) : Prop :=
  O.equilibrium ∧ O.physiologicalConstraint

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse


