import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ExtendedRealAdmissibleObject where
  space : Type u
  extendedRealFunction : space → ENNReal
  functionWellDefined : Prop
  infiniteValueHandled : Prop

structure ExtendedRealAdmissibleClass where
  object : ExtendedRealAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admissibleClosure (A : ExtendedRealAdmissibleClass) : Prop :=
  A.object.functionWellDefined ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse