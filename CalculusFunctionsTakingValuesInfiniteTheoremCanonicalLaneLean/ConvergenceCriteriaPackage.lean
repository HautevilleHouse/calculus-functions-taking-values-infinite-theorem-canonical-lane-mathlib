import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ConvergenceCriteriaPackage where
  infiniteLimit : InfiniteLimitPackage
  epsilonCriteria : Prop
  deltaCriteria : Prop
  infiniteMagnitudeHandling : Prop

structure ConvergenceCriteriaEvidence (C : ConvergenceCriteriaPackage) where
  epsilonCriteriaClosed : C.epsilonCriteria
  deltaCriteriaClosed : C.deltaCriteria
  infiniteMagnitudeHandlingClosed : C.infiniteMagnitudeHandling

def ConvergenceCriteriaClosed (C : ConvergenceCriteriaPackage) : Prop :=
  C.epsilonCriteria ∧ C.deltaCriteria ∧ C.infiniteMagnitudeHandling

theorem convergence_criteria_closed_from_evidence
    (C : ConvergenceCriteriaPackage) (E : ConvergenceCriteriaEvidence C) : ConvergenceCriteriaClosed C := by
  exact And.intro E.epsilonCriteriaClosed (And.intro E.deltaCriteriaClosed E.infiniteMagnitudeHandlingClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse