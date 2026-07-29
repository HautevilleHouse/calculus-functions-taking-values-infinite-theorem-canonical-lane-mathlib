import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ContinuityExtendedRealPackage (X : Type u) [TopologicalSpace X] where
  continuousFunctionsToExtendedReal : Set (X → ℝ∞)
  intermediateValueProperty : Prop
  extremeValueTheorem : Prop
  continuityAtInfinite : Prop

structure ContinuityExtendedRealEvidence {X : Type u} [TopologicalSpace X]
    (P : ContinuityExtendedRealPackage X) where
  intermediateValuePropertyClosed : P.intermediateValueProperty
  extremeValueTheoremClosed : P.extremeValueTheorem
  continuityAtInfiniteClosed : P.continuityAtInfinite

def ContinuityExtendedRealClosed {X : Type u} [TopologicalSpace X]
    (P : ContinuityExtendedRealPackage X) : Prop :=
  P.intermediateValueProperty ∧ P.extremeValueTheorem ∧ P.continuityAtInfinite

theorem continuity_extended_real_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (P : ContinuityExtendedRealPackage X) (E : ContinuityExtendedRealEvidence P) :
    ContinuityExtendedRealClosed P := by
  exact And.intro E.intermediateValuePropertyClosed
    (And.intro E.extremeValueTheoremClosed E.continuityAtInfiniteClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse