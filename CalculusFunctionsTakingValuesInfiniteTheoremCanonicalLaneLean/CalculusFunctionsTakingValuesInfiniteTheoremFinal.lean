import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.ExtendedRealGateLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

def ConstrainedCalculusFunctionsClosure (A : ExtendedRealAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calculus_functions_endgame (A : ExtendedRealAdmissibleClass) :
    ConstrainedCalculusFunctionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse