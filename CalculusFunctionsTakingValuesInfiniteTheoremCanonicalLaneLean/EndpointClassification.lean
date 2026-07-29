import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure EndpointClassificationPackage where
  asymptoticBehavior : AsymptoticBehaviorPackage
  functionSpace : FunctionSpacePackage
  infiniteValueLimitCharacterization : Prop
  finiteValueLimitCharacterization : Prop
  endpointInfiniteValue : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  infiniteValueLimitCharacterizationClosed : E.infiniteValueLimitCharacterization
  finiteValueLimitCharacterizationClosed : E.finiteValueLimitCharacterization
  endpointInfiniteValueClosed : E.endpointInfiniteValue

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.infiniteValueLimitCharacterization ∧ E.finiteValueLimitCharacterization ∧ E.endpointInfiniteValue

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.infiniteValueLimitCharacterizationClosed
    (And.intro Ev.finiteValueLimitCharacterizationClosed Ev.endpointInfiniteValueClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse