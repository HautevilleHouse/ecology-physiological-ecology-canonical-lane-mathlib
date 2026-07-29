import EcologyPhysiologicalEcologyCanonicalLaneLean.EcoPhysiologicalAdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure LifeHistoryTradeoffsPackage where
  reproductiveEffort : ℝ
  survivalRate : ℝ
  growthRate : ℝ
  ageAtMaturity : ℝ
  fecundity : ℝ
  competitiveAbility : ℝ
  rKSelectionContinuum : Prop
  costOfReproduction : Prop
  optimalLifeHistory : Prop

structure LifeHistoryTradeoffsEvidence (L : LifeHistoryTradeoffsPackage) where
  rKSelectionContinuumClosed : L.rKSelectionContinuum
  costOfReproductionClosed : L.costOfReproduction
  optimalLifeHistoryClosed : L.optimalLifeHistory

def LifeHistoryTradeoffsClosed (L : LifeHistoryTradeoffsPackage) : Prop :=
  L.rKSelectionContinuum ∧ L.costOfReproduction ∧ L.optimalLifeHistory

theorem life_history_tradeoffs_closed_from_evidence (L : LifeHistoryTradeoffsPackage) (E : LifeHistoryTradeoffsEvidence L) :
    LifeHistoryTradeoffsClosed L := by
  exact And.intro E.rKSelectionContinuumClosed
    (And.intro E.costOfReproductionClosed E.optimalLifeHistoryClosed)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse


