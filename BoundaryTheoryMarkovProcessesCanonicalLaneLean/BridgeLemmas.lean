import BoundaryTheoryMarkovProcessesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundaryTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse