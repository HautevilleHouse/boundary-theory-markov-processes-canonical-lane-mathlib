import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure BoundaryHittingDistributionPackage (A : AdmissibleClass) where
  process : Type
  hittingDistribution : Type
  exitMeasure : Type
  convergenceToBoundary : Prop

structure BoundaryHittingDistributionEvidence {A : AdmissibleClass}
    (B : BoundaryHittingDistributionPackage A) where
  hittingDistributionDefined : Prop
  exitMeasureDefined : Prop
  convergenceToBoundaryClosed : B.convergenceToBoundary

def BoundaryHittingDistributionClosed {A : AdmissibleClass}
    (B : BoundaryHittingDistributionPackage A) : Prop :=
  B.convergenceToBoundary

theorem boundary_hitting_distribution_closed_from_evidence {A : AdmissibleClass}
    (B : BoundaryHittingDistributionPackage A)
    (E : BoundaryHittingDistributionEvidence B) :
    BoundaryHittingDistributionClosed B := by
  exact E.convergenceToBoundaryClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse