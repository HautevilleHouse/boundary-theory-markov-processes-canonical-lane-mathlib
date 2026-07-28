import BoundaryTheoryMarkovProcessesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure MarkovStateSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  transitionSemigroup : Type v
  invariantMeasure : Type w
  markovProperty : Prop
  fellerProperty : Prop
  conclusion : markovProperty ∧ fellerProperty

def MarkovWitnessClosed (M : MarkovStateSpace) : Prop :=
  M.markovProperty ∧ M.fellerProperty

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse