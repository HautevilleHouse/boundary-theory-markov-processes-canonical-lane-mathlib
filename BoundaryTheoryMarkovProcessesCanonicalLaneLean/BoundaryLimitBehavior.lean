import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.MarkovProcess

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure BoundaryLimitBehaviorPackage {M : MarkovProcessPackage} where
  limitAtBoundary : Type u
  convergenceToBoundary : Prop
  boundaryFunctionRepresentation : Prop

structure BoundaryLimitBehaviorEvidence {M : MarkovProcessPackage} (B : BoundaryLimitBehaviorPackage M) where
  convergenceToBoundaryClosed : B.convergenceToBoundary
  boundaryFunctionRepresentationClosed : B.boundaryFunctionRepresentation

def BoundaryLimitBehaviorClosed {M : MarkovProcessPackage} (B : BoundaryLimitBehaviorPackage M) : Prop :=
  B.convergenceToBoundary ∧ B.boundaryFunctionRepresentation

theorem boundary_limit_behavior_closed_from_evidence {M : MarkovProcessPackage} (B : BoundaryLimitBehaviorPackage M) (E : BoundaryLimitBehaviorEvidence B) :
    BoundaryLimitBehaviorClosed B := by
  exact And.intro E.convergenceToBoundaryClosed E.boundaryFunctionRepresentationClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse
