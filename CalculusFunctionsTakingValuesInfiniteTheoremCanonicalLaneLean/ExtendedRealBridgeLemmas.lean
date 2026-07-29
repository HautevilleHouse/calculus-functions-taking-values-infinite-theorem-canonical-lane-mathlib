import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.ExtendedRealAdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

def bridgeClosed (A : ExtendedRealAdmissibleClass) : Prop :=
  A.object.functionWellDefined

theorem bridge_from_admissible_class (A : ExtendedRealAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.functionWellDefined

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse