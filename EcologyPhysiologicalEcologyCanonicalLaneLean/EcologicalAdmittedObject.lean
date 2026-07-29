import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure EcologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologicalAdmittedObject where
  space : EcologicalSpace
  bioticAbioticInteractions : Prop
  physiologicalConstraints : Prop
  energyFlows : Prop
  conclusion : energyFlows

def EcologicalWitnessClosed (O : EcologicalAdmittedObject) : Prop :=
  O.energyFlows

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse