import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure InfiniteValueFunctionSpace where
  carrier : Type u
  infiniteSet : Set carrier
  functionSpace : Type v
  convergenceStructure : Prop
  topologicalProperties : Prop

def infiniteValueFunctionSpaceClosed (S : InfiniteValueFunctionSpace) : Prop :=
  S.convergenceStructure ∧ S.topologicalProperties

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse