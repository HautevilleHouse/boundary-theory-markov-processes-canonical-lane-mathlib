import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.MartinBoundary
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.PoissonBoundary

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundaryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedBoundaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse