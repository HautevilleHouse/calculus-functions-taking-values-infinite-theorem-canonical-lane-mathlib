import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedFunctionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FunctionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse