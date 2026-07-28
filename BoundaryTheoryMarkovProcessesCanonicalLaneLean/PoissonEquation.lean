import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure PoissonEquationPackage (A : AdmissibleClass) where
  domain : Type
  boundary : Type
  poissonIntegral : Type
  dirichletSolution : Prop

structure PoissonEquationEvidence {A : AdmissibleClass} (P : PoissonEquationPackage A) where
  domainRegular : Prop
  poissonIntegralDefined : Prop
  dirichletSolutionClosed : P.dirichletSolution

def PoissonEquationClosed {A : AdmissibleClass} (P : PoissonEquationPackage A) : Prop :=
  P.dirichletSolution

theorem poisson_equation_closed_from_evidence {A : AdmissibleClass}
    (P : PoissonEquationPackage A) (E : PoissonEquationEvidence P) :
    PoissonEquationClosed P := by
  exact E.dirichletSolutionClosed

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse