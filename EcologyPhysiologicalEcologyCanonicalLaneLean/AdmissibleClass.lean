import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : OrganismalEnergyBudget
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OrganismalEnergyBudgetClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse