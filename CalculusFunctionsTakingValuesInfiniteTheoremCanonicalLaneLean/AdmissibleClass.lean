import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CalculusFunctionsTakingValuesInfiniteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalculusFunctionsTakingValuesInfiniteWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse