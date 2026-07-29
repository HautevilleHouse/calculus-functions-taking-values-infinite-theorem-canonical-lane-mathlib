import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure InfiniteLimitPackage where
  functionSpace : FunctionSpacePackage
  limitPoint : functionSpace.domain
  limitValue : functionSpace.codomain
  limitDefinition : Prop
  infiniteValueCase : Prop
  finiteValueCase : Prop

structure InfiniteLimitEvidence (L : InfiniteLimitPackage) where
  limitDefinitionClosed : L.limitDefinition
  infiniteValueCaseClosed : L.infiniteValueCase
  finiteValueCaseClosed : L.finiteValueCase

def InfiniteLimitClosed (L : InfiniteLimitPackage) : Prop :=
  L.limitDefinition ∧ L.infiniteValueCase ∧ L.finiteValueCase

theorem infinite_limit_closed_from_evidence
    (L : InfiniteLimitPackage) (E : InfiniteLimitEvidence L) : InfiniteLimitClosed L := by
  exact And.intro E.limitDefinitionClosed (And.intro E.infiniteValueCaseClosed E.finiteValueCaseClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse