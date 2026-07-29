import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure AsymptoticBehaviorPackage where
  continuityAtInfinity : ContinuityAtInfinityPackage
  asymptoticExpansion : Prop
  leadingTermAtInfinity : Prop
  growthRateClassification : Prop

structure AsymptoticBehaviorEvidence (A : AsymptoticBehaviorPackage) where
  asymptoticExpansionClosed : A.asymptoticExpansion
  leadingTermAtInfinityClosed : A.leadingTermAtInfinity
  growthRateClassificationClosed : A.growthRateClassification

def AsymptoticBehaviorClosed (A : AsymptoticBehaviorPackage) : Prop :=
  A.asymptoticExpansion ∧ A.leadingTermAtInfinity ∧ A.growthRateClassification

theorem asymptotic_behavior_closed_from_evidence
    (A : AsymptoticBehaviorPackage) (E : AsymptoticBehaviorEvidence A) : AsymptoticBehaviorClosed A := by
  exact And.intro E.asymptoticExpansionClosed (And.intro E.leadingTermAtInfinityClosed E.growthRateClassificationClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse