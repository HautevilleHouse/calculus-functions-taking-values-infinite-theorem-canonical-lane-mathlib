import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure FunctionSpacePackage where
  domain : Type u
  codomain : Type v
  functionSet : Set (domain → codomain)
  boundednessCondition : Prop
  infiniteValuesAdmissible : Prop

structure FunctionSpaceEvidence (F : FunctionSpacePackage) where
  boundednessConditionClosed : F.boundednessCondition
  infiniteValuesAdmissibleClosed : F.infiniteValuesAdmissible

def FunctionSpaceClosed (F : FunctionSpacePackage) : Prop :=
  F.boundednessCondition ∧ F.infiniteValuesAdmissible

theorem function_space_closed_from_evidence
    (F : FunctionSpacePackage) (E : FunctionSpaceEvidence F) : FunctionSpaceClosed F := by
  exact And.intro E.boundednessConditionClosed E.infiniteValuesAdmissibleClosed

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse