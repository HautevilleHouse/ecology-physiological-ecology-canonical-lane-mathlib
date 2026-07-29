import EcologyPhysiologicalEcologyCanonicalLaneLean.EcoPhysiologicalAdmissibleClass

namespace HautevilleHouse
namespace EcologyPhysiologicalEcologyCanonicalLaneLean

structure MetabolicScalingPackage where
  bodyMass : ℝ
  metabolicRate : ℝ
  scalingExponent : ℝ
  kleiberLaw : Prop
  temperatureDependence : Prop
  allometricConstraints : Prop
  ontogeneticGrowthModel : Prop

structure MetabolicScalingEvidence (M : MetabolicScalingPackage) where
  kleiberLawClosed : M.kleiberLaw
  temperatureDependenceClosed : M.temperatureDependence
  allometricConstraintsClosed : M.allometricConstraints
  ontogeneticGrowthModelClosed : M.ontogeneticGrowthModel

def MetabolicScalingClosed (M : MetabolicScalingPackage) : Prop :=
  M.kleiberLaw ∧ M.temperatureDependence ∧ M.allometricConstraints ∧ M.ontogeneticGrowthModel

theorem metabolic_scaling_closed_from_evidence (M : MetabolicScalingPackage) (E : MetabolicScalingEvidence M) :
    MetabolicScalingClosed M := by
  exact And.intro E.kleiberLawClosed
    (And.intro E.temperatureDependenceClosed
      (And.intro E.allometricConstraintsClosed E.ontogeneticGrowthModelClosed))

end EcologyPhysiologicalEcologyCanonicalLaneLean
end HautevilleHouse


