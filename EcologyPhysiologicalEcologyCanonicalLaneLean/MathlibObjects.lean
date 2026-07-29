import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EcologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologyAdmittedObject where
  space : EcologySpace
  ecosystemProperties : Prop
  physiologicalTraits : Prop
  dynamicModel : Type
  modelTopology : TopologicalSpace dynamicModel
  equilibriumPrediction : Prop
  conclusion : equilibriumPrediction

structure EcologyEndgameState where
  object : EcologyAdmittedObject

def EcologyWitnessClosed (O : EcologyAdmittedObject) : Prop :=
  O.equilibriumPrediction

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse
