import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ContinuityAtInfinityPackage where
  convergenceCriteria : ConvergenceCriteriaPackage
  continuityDefinition : Prop
  infiniteValueContinuity : Prop
  finiteValueContinuity : Prop

structure ContinuityAtInfinityEvidence (C : ContinuityAtInfinityPackage) where
  continuityDefinitionClosed : C.continuityDefinition
  infiniteValueContinuityClosed : C.infiniteValueContinuity
  finiteValueContinuityClosed : C.finiteValueContinuity

def ContinuityAtInfinityClosed (C : ContinuityAtInfinityPackage) : Prop :=
  C.continuityDefinition ∧ C.infiniteValueContinuity ∧ C.finiteValueContinuity

theorem continuity_at_infinity_closed_from_evidence
    (C : ContinuityAtInfinityPackage) (E : ContinuityAtInfinityEvidence C) : ContinuityAtInfinityClosed C := by
  exact And.intro E.continuityDefinitionClosed (And.intro E.infiniteValueContinuityClosed E.finiteValueContinuityClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse