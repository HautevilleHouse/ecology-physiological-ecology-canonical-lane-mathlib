import EcologyPhysiologicalEcologyCanonicalLaneLean.EcoPhysiologicalAdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure OptimalForagingPackage where
  metabolicCost : ℝ
  energyGain : ℝ
  searchTime : ℝ
  handlingTime : ℝ
  netEnergy : ℝ
  foragingTime : ℝ
  marginalValueTheorem : Prop
  optimalDietBreath : Prop
  patchResidenceRule : Prop

structure OptimalForagingEvidence (O : OptimalForagingPackage) where
  marginalValueTheoremClosed : O.marginalValueTheorem
  optimalDietBreathClosed : O.optimalDietBreath
  patchResidenceRuleClosed : O.patchResidenceRule

def OptimalForagingClosed (O : OptimalForagingPackage) : Prop :=
  O.marginalValueTheorem ∧ O.optimalDietBreath ∧ O.patchResidenceRule

theorem optimal_foraging_closed_from_evidence (O : OptimalForagingPackage) (E : OptimalForagingEvidence O) :
    OptimalForagingClosed O := by
  exact And.intro E.marginalValueTheoremClosed
    (And.intro E.optimalDietBreathClosed E.patchResidenceRuleClosed)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse


