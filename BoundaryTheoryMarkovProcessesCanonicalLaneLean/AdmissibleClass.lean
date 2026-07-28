import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryTheoryMarkovProcessesCanonicalLaneLean

structure BoundaryAdmittedObject where
  markovProcess : Type u
  stateSpace : Type v
  boundary : Type w
  representation : boundary → (stateSpace → ℝ)
  conclusion : Prop

structure AdmissibleClass where
  object : BoundaryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BoundaryWitnessClosed (O : BoundaryAdmittedObject) : Prop :=
  O.conclusion

end BoundaryTheoryMarkovProcessesCanonicalLaneLean
end HautevilleHouse