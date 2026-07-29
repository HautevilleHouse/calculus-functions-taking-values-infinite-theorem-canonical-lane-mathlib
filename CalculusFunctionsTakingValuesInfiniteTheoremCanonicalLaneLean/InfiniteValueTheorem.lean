import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure InfiniteValueObject where
  measureSpace : Type u
  measurableFunction : measureSpace → ExtendedRealLine
  infiniteSetMeasurable : MeasurableSet {x | measurableFunction x = ExtendedRealLine.top}
  infiniteSetNull : MeasureTheory.volume {x | measurableFunction x = ExtendedRealLine.top} = 0
  conclusion : infiniteSetNull

structure InfiniteValueEvidence (O : InfiniteValueObject) where
  infiniteSetMeasurableClosed : O.infiniteSetMeasurable
  infiniteSetNullClosed : O.infiniteSetNull

def InfiniteValueClosed (O : InfiniteValueObject) : Prop :=
  O.infiniteSetMeasurable ∧ O.infiniteSetNull

theorem infinite_value_closed_from_evidence (O : InfiniteValueObject) (E : InfiniteValueEvidence O) :
    InfiniteValueClosed O := by
  exact And.intro E.infiniteSetMeasurableClosed E.infiniteSetNullClosed

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse
