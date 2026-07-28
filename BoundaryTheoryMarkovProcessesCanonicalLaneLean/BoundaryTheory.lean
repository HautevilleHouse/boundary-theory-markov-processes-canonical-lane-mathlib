import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.MarkovProcess

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure BoundaryTheoryPackage {M : MarkovProcessPackage} where
  martinBoundary : Type v
  poissonBoundary : Type w
  martinBoundaryTopology : TopologicalSpace martinBoundary
  poissonBoundaryTopology : TopologicalSpace poissonBoundary
  harmonicRepresentation : Prop
  boundaryHittingProbability : Prop

structure BoundaryTheoryEvidence {M : MarkovProcessPackage} (B : BoundaryTheoryPackage M) where
  harmonicRepresentationClosed : B.harmonicRepresentation
  boundaryHittingProbabilityClosed : B.boundaryHittingProbability

def BoundaryTheoryClosed {M : MarkovProcessPackage} (B : BoundaryTheoryPackage M) : Prop :=
  B.harmonicRepresentation ∧ B.boundaryHittingProbability

theorem boundary_theory_closed_from_evidence {M : MarkovProcessPackage} (B : BoundaryTheoryPackage M) (E : BoundaryTheoryEvidence B) :
    BoundaryTheoryClosed B := by
  exact And.intro E.harmonicRepresentationClosed E.boundaryHittingProbabilityClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse
