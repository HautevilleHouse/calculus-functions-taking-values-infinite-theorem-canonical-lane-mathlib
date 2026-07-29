import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.BridgeLemmas
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

def ConstrainedInfiniteValueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_infinite_value_endgame (A : AdmissibleClass) :
    ConstrainedInfiniteValueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse