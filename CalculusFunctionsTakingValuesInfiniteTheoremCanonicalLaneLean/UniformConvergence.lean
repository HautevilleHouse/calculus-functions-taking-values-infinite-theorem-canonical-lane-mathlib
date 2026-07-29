import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure UniformConvergencePackage where
  functionSpace : Type u
  uniformMetric : Type v
  uniformConvergenceDefinition : Prop
  continuityPreserved : Prop
  completenessPreserved : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformConvergenceDefinitionClosed : U.uniformConvergenceDefinition
  continuityPreservedClosed : U.continuityPreserved
  completenessPreservedClosed : U.completenessPreserved

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformConvergenceDefinition ∧ U.continuityPreserved ∧ U.completenessPreserved

theorem uniform_convergence_closed_from_evidence
    (U : UniformConvergencePackage) (E : UniformConvergenceEvidence U) :
    UniformConvergenceClosed U := by
  exact And.intro E.uniformConvergenceDefinitionClosed
    (And.intro E.continuityPreservedClosed E.completenessPreservedClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse