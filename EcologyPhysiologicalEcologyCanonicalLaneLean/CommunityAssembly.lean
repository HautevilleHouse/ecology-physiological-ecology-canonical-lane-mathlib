import canonicalLaneMathlib.BiogeochemicalCycles

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure CommunityAssemblyPackage where
  speciesInteractions : Prop
  nichePartitioning : Prop
  dispersalLimitation : Prop
  disturbanceRegime : Prop
  successionTrajectory : Prop

structure CommunityAssemblyEvidence (P : CommunityAssemblyPackage) where
  speciesInteractionsClosed : P.speciesInteractions
  nichePartitioningClosed : P.nichePartitioning
  dispersalLimitationClosed : P.dispersalLimitation
  disturbanceRegimeClosed : P.disturbanceRegime
  successionTrajectoryClosed : P.successionTrajectory

def CommunityAssemblyClosed (P : CommunityAssemblyPackage) : Prop :=
  P.speciesInteractions ∧ P.nichePartitioning ∧ P.dispersalLimitation ∧ P.disturbanceRegime ∧ P.successionTrajectory

theorem community_assembly_closed_from_evidence (P : CommunityAssemblyPackage) (E : CommunityAssemblyEvidence P) : CommunityAssemblyClosed P := by
  exact And.intro E.speciesInteractionsClosed (And.intro E.nichePartitioningClosed (And.intro E.dispersalLimitationClosed (And.intro E.disturbanceRegimeClosed E.successionTrajectoryClosed)))

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse
