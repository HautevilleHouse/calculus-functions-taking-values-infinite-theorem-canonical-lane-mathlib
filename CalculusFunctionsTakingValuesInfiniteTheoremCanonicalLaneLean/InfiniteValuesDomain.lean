import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

structure InfiniteValueDomain where
  carrier : Type
  topology : TopologicalSpace carrier
  extendedRealsIncluded : Prop
  infiniteValuesAdmitted : Prop

def infiniteValueDomainClosed (D : InfiniteValueDomain) : Prop :=
  D.extendedRealsIncluded ∧ D.infiniteValuesAdmitted

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse