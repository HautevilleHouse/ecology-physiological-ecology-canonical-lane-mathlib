import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure PhotosynthesisRate where
  lightIntensity : ℝ
  co2Concentration : ℝ
  leafTemperature : ℝ
  rubiscoActivity : ℝ
  grossPhotosynthesis : ℝ
  darkRespiration : ℝ
  netPhotosynthesis : ℝ
  farquharModelClosing : Prop
  farquharModelClosingClosed : farquharModelClosing

structure PhotosynthesisRateEvidence (P : PhotosynthesisRate) where
  grossPositive : real_positive P.grossPhotosynthesis
  darkRespirationPositive : real_positive P.darkRespiration
  farquharModelClosingHolds : P.farquharModelClosing

def PhotosynthesisRateClosed (P : PhotosynthesisRate) : Prop :=
  P.farquharModelClosing

theorem photosynthesis_rate_closed_from_evidence
    (P : PhotosynthesisRate) (E : PhotosynthesisRateEvidence P) :
    PhotosynthesisRateClosed P :=
  E.farquharModelClosingHolds

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse