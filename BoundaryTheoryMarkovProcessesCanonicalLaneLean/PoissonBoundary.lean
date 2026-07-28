import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure PoissonBoundaryPackage (A : AdmissibleClass) where
  stationaryMeasure : Type u
  poissonRepresentation : Type v
  ergodicDecomposition : Type w
  representationTheorem : Prop
  boundaryMeasureUniqueness : Prop
  entranceExitRelation : Prop

structure PoissonBoundaryEvidence {A : AdmissibleClass} (P : PoissonBoundaryPackage A) where
  representationTheoremClosed : P.representationTheorem
  boundaryMeasureUniquenessClosed : P.boundaryMeasureUniqueness
  entranceExitRelationClosed : P.entranceExitRelation

def PoissonBoundaryClosed {A : AdmissibleClass} (P : PoissonBoundaryPackage A) : Prop :=
  P.representationTheorem ∧ P.boundaryMeasureUniqueness ∧ P.entranceExitRelation

theorem poisson_boundary_closed_from_evidence {A : AdmissibleClass} (P : PoissonBoundaryPackage A)
    (E : PoissonBoundaryEvidence P) : PoissonBoundaryClosed P := by
  exact And.intro E.representationTheoremClosed
    (And.intro E.boundaryMeasureUniquenessClosed E.entranceExitRelationClosed)

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse