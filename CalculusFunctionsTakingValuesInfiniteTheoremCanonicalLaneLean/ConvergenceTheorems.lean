import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ConvergenceTheoremsPackage where
  fatouLemma : Prop
  monotoneConvergence : Prop
  dominatedConvergence : Prop
  fatouLemmaClosed : fatouLemma
  monotoneConvergenceClosed : monotoneConvergence
  dominatedConvergenceClosed : dominatedConvergence

def ConvergenceTheoremsClosed (P : ConvergenceTheoremsPackage) : Prop :=
  P.fatouLemma ∧ P.monotoneConvergence ∧ P.dominatedConvergence

theorem convergence_theorems_closed_from_evidence (P : ConvergenceTheoremsPackage) :
    ConvergenceTheoremsClosed P := by
  exact And.intro P.fatouLemmaClosed (And.intro P.monotoneConvergenceClosed P.dominatedConvergenceClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse
