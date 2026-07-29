import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.ExtendedRealBridgeLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

def gateClosed (A : ExtendedRealAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ExtendedRealAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse