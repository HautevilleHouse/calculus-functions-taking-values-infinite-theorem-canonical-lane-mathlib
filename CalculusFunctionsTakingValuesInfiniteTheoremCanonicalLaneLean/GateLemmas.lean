import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse