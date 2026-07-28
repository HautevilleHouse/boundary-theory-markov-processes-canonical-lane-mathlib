import BoundaryTheoryMarkovProcessesCanonicalLaneLean.BoundaryPackage

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure ExitDistributionPackage {P : MarkovProcess} (B : BoundaryPackage P) where
  harmonicFunctions : Set (P.stateSpace → ℝ)
  exitMeasure : Type u
  representationTheorem : Prop
  uniqueness : Prop

structure ExitDistributionEvidence {P : MarkovProcess} {B : BoundaryPackage P} (E : ExitDistributionPackage B) where
  representationTheoremClosed : E.representationTheorem
  uniquenessClosed : E.uniqueness

def ExitDistributionClosed {P : MarkovProcess} {B : BoundaryPackage P} (E : ExitDistributionPackage B) : Prop :=
  E.representationTheorem ∧ E.uniqueness

theorem exit_distribution_closed_from_evidence {P : MarkovProcess} {B : BoundaryPackage P} (E : ExitDistributionPackage B) (Ev : ExitDistributionEvidence E) : ExitDistributionClosed E := by
  exact And.intro Ev.representationTheoremClosed Ev.uniquenessClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse