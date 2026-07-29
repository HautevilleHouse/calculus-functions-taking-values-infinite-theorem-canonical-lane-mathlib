import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure CauchyCriterionPackage where
  sequenceType : Type u
  cauchyDefinition : Prop
  convergenceEquivalent : Prop
  completenessProperty : Prop

structure CauchyCriterionEvidence (C : CauchyCriterionPackage) where
  cauchyDefinitionClosed : C.cauchyDefinition
  convergenceEquivalentClosed : C.convergenceEquivalent
  completenessPropertyClosed : C.completenessProperty

def CauchyCriterionClosed (C : CauchyCriterionPackage) : Prop :=
  C.cauchyDefinition ∧ C.convergenceEquivalent ∧ C.completenessProperty

theorem cauchy_criterion_closed_from_evidence
    (C : CauchyCriterionPackage) (E : CauchyCriterionEvidence C) :
    CauchyCriterionClosed C := by
  exact And.intro E.cauchyDefinitionClosed
    (And.intro E.convergenceEquivalentClosed E.completenessPropertyClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse