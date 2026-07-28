import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.MarkovProcess

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure HarmonicFunctionsPackage {M : MarkovProcessPackage} where
  harmonicFunctions : Type u
  superharmonicFunctions : Type v
  harmonicFunctionSpace : Prop
  superharmonicFunctionSpace : Prop
  maximumPrinciple : Prop

structure HarmonicFunctionsEvidence {M : MarkovProcessPackage} (H : HarmonicFunctionsPackage M) where
  harmonicFunctionSpaceClosed : H.harmonicFunctionSpace
  superharmonicFunctionSpaceClosed : H.superharmonicFunctionSpace
  maximumPrincipleClosed : H.maximumPrinciple

def HarmonicFunctionsClosed {M : MarkovProcessPackage} (H : HarmonicFunctionsPackage M) : Prop :=
  H.harmonicFunctionSpace ∧ H.superharmonicFunctionSpace ∧ H.maximumPrinciple

theorem harmonic_functions_closed_from_evidence {M : MarkovProcessPackage} (H : HarmonicFunctionsPackage M) (E : HarmonicFunctionsEvidence H) :
    HarmonicFunctionsClosed H := by
  exact And.intro E.harmonicFunctionSpaceClosed (And.intro E.superharmonicFunctionSpaceClosed E.maximumPrincipleClosed)

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse
