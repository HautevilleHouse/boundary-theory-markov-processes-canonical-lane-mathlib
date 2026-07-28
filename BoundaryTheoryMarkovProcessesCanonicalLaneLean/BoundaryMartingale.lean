import BoundaryTheoryMarkovProcessesCanonicalLaneLean.MarkovStateSpace

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure BoundaryMartingaleDecomposition (M : MarkovStateSpace) where
  harmonicPart : Prop
  potentialPart : Prop
  martingaleConvergence : Prop
  boundaryIntegralRepresentation : Prop
  decompositionClosed : harmonicPart ∧ potentialPart ∧ martingaleConvergence ∧ boundaryIntegralRepresentation

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse