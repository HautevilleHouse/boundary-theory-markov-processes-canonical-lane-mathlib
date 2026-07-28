import BoundaryTheoryMarkovProcessesCanonicalLaneLean.MarkovProcess

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure BoundaryPackage (P : MarkovProcess) where
  boundaryStateSpace : Type u
  boundaryTopology : TopologicalSpace boundaryStateSpace
  hittingTimes : Set (P.timeDomain → Prop)
  exitLaw : Prop
  boundaryRepresentation : Prop

structure BoundaryEvidence {P : MarkovProcess} (B : BoundaryPackage P) where
  exitLawClosed : B.exitLaw
  boundaryRepresentationClosed : B.boundaryRepresentation

def BoundaryClosed {P : MarkovProcess} (B : BoundaryPackage P) : Prop :=
  B.exitLaw ∧ B.boundaryRepresentation

theorem boundary_closed_from_evidence {P : MarkovProcess} (B : BoundaryPackage P) (E : BoundaryEvidence B) : BoundaryClosed B := by
  exact And.intro E.exitLawClosed E.boundaryRepresentationClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse