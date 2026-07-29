import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure PhotosyntheticOptimumPackage where
  lightResponseCurve : Prop
  co2ResponseCurve : Prop
  rubiscoActivity : Prop
  electronTransport : Prop
  mesophyllConductance : Prop

structure PhotosyntheticOptimumEvidence (P : PhotosyntheticOptimumPackage) where
  lightResponseCurveClosed : P.lightResponseCurve
  co2ResponseCurveClosed : P.co2ResponseCurve
  rubiscoActivityClosed : P.rubiscoActivity
  electronTransportClosed : P.electronTransport
  mesophyllConductanceClosed : P.mesophyllConductance

def PhotosyntheticOptimumClosed (P : PhotosyntheticOptimumPackage) : Prop :=
  P.lightResponseCurve ∧ P.co2ResponseCurve ∧ P.rubiscoActivity ∧ P.electronTransport ∧ P.mesophyllConductance

theorem photosynthetic_optimum_closed_from_evidence (P : PhotosyntheticOptimumPackage) (E : PhotosyntheticOptimumEvidence P) : PhotosyntheticOptimumClosed P := by
  exact And.intro E.lightResponseCurveClosed
    (And.intro E.co2ResponseCurveClosed
      (And.intro E.rubiscoActivityClosed
        (And.intro E.electronTransportClosed E.mesophyllConductanceClosed)))

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse