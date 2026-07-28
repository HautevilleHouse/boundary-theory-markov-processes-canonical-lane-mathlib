import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure MarkovProcessPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  transitionKernel : stateSpace → Set (stateSpace → ℝ≥0∞)
  markovProperty : Prop
  fellerProperty : Prop

structure MarkovProcessEvidence (M : MarkovProcessPackage) where
  markovPropertyClosed : M.markovProperty
  fellerPropertyClosed : M.fellerProperty

def MarkovProcessClosed (M : MarkovProcessPackage) : Prop :=
  M.markovProperty ∧ M.fellerProperty

theorem markov_process_closed_from_evidence (M : MarkovProcessPackage) (E : MarkovProcessEvidence M) :
    MarkovProcessClosed M := by
  exact And.intro E.markovPropertyClosed E.fellerPropertyClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse
