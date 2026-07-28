import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryTheoryMarkovProcessesCanonicalLaneLean.MarkovProcess

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure EntranceExitLawsPackage {M : MarkovProcessPackage} where
  entranceLaws : Type u
  exitLaws : Type v
  entranceLawExistence : Prop
  exitLawExistence : Prop
  correspondence : Prop

structure EntranceExitLawsEvidence {M : MarkovProcessPackage} (E : EntranceExitLawsPackage M) where
  entranceLawExistenceClosed : E.entranceLawExistence
  exitLawExistenceClosed : E.exitLawExistence
  correspondenceClosed : E.correspondence

def EntranceExitLawsClosed {M : MarkovProcessPackage} (E : EntranceExitLawsPackage M) : Prop :=
  E.entranceLawExistence ∧ E.exitLawExistence ∧ E.correspondence

theorem entrance_exit_laws_closed_from_evidence {M : MarkovProcessPackage} (E : EntranceExitLawsPackage M) (Ev : EntranceExitLawsEvidence E) :
    EntranceExitLawsClosed E := by
  exact And.intro Ev.entranceLawExistenceClosed (And.intro Ev.exitLawExistenceClosed Ev.correspondenceClosed)

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse
