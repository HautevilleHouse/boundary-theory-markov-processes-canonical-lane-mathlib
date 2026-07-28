import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure MartinBoundaryPackage (A : AdmissibleClass) where
  martinCompactification : Type u
  harmonicFunction : Type v
  minimalBoundary : Type w
  representationMap : martinCompactification → harmonicFunction
  boundaryMeasureExistence : Prop
  boundaryMeasureUniqueness : Prop
  convergenceProperty : Prop

structure MartinBoundaryEvidence {A : AdmissibleClass} (M : MartinBoundaryPackage A) where
  boundaryMeasureExistenceClosed : M.boundaryMeasureExistence
  boundaryMeasureUniquenessClosed : M.boundaryMeasureUniqueness
  convergencePropertyClosed : M.convergenceProperty

def MartinBoundaryClosed {A : AdmissibleClass} (M : MartinBoundaryPackage A) : Prop :=
  M.boundaryMeasureExistence ∧ M.boundaryMeasureUniqueness ∧ M.convergenceProperty

theorem martin_boundary_closed_from_evidence {A : AdmissibleClass} (M : MartinBoundaryPackage A)
    (E : MartinBoundaryEvidence M) : MartinBoundaryClosed M := by
  exact And.intro E.boundaryMeasureExistenceClosed
    (And.intro E.boundaryMeasureUniquenessClosed E.convergencePropertyClosed)

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse