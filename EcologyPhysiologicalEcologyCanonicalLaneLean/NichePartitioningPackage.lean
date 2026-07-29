import EcologyPhysiologicalEcologyCanonicalLaneLean.EcoPhysiologicalAdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure NichePartitioningPackage where
  resourceGradient : ℝ
  nicheWidth : ℝ
  competitionCoefficient : ℝ
  carryingCapacity : ℝ
  growthRate : ℝ
  characterDisplacement : ℝ
  limitingSimilarity : Prop
  competitiveExclusion : Prop
  nicheStabilization : Prop

structure NichePartitioningEvidence (N : NichePartitioningPackage) where
  limitingSimilarityClosed : N.limitingSimilarity
  competitiveExclusionClosed : N.competitiveExclusion
  nicheStabilizationClosed : N.nicheStabilization

def NichePartitioningClosed (N : NichePartitioningPackage) : Prop :=
  N.limitingSimilarity ∧ N.competitiveExclusion ∧ N.nicheStabilization

theorem niche_partitioning_closed_from_evidence (N : NichePartitioningPackage) (E : NichePartitioningEvidence N) :
    NichePartitioningClosed N := by
  exact And.intro E.limitingSimilarityClosed
    (And.intro E.competitiveExclusionClosed E.nicheStabilizationClosed)

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse