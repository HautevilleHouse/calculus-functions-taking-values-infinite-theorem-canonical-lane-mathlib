import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.InfiniteValuesDomain

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

def bridgeClosed (A : AdmissibleClass) : Prop :=
  infiniteValueDomainClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse