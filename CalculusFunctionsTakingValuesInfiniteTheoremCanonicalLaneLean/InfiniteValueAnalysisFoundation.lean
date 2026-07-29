import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.ExtendedRealFunctionPackage

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure InfiniteValueAnalysisFoundation where
  functionPackage : ExtendedRealFunctionPackage
  functionPackageEvidence : extendedRealFunctionPackageEvidence functionPackage
  limitBehavior : Prop
  convergenceMode : Prop
  limitBehaviorEvidence : limitBehavior
  convergenceModeEvidence : convergenceMode

def InfiniteValueAnalysisFoundationClosed (F : InfiniteValueAnalysisFoundation) : Prop :=
  ExtendedRealFunctionPackageClosed F.functionPackage ∧
  F.limitBehavior ∧ F.convergenceMode

theorem infinite_value_analysis_foundation_closed_from_evidence
    (F : InfiniteValueAnalysisFoundation) :
    InfiniteValueAnalysisFoundationClosed F := by
  refine And.intro (extended_real_function_package_closed_from_evidence
    F.functionPackage F.functionPackageEvidence) ?_
  exact And.intro F.limitBehaviorEvidence F.convergenceModeEvidence

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse