import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure CompleteMetricStructurePackage where
  metricSpace : Type u
  metricDefined : Prop
  cauchyComplete : Prop
  infiniteValueSpaceEmbedding : Prop

structure CompleteMetricStructureEvidence (M : CompleteMetricStructurePackage) where
  metricDefinedClosed : M.metricDefined
  cauchyCompleteClosed : M.cauchyComplete
  infiniteValueSpaceEmbeddingClosed : M.infiniteValueSpaceEmbedding

def CompleteMetricStructureClosed (M : CompleteMetricStructurePackage) : Prop :=
  M.metricDefined ∧ M.cauchyComplete ∧ M.infiniteValueSpaceEmbedding

theorem complete_metric_structure_closed_from_evidence
    (M : CompleteMetricStructurePackage) (E : CompleteMetricStructureEvidence M) :
    CompleteMetricStructureClosed M := by
  exact And.intro E.metricDefinedClosed
    (And.intro E.cauchyCompleteClosed E.infiniteValueSpaceEmbeddingClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse