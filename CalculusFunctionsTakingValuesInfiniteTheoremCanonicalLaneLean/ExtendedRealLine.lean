import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

structure ExtendedRealLine where
  baseSet : Type
  includesPosInf : Prop
  includesNegInf : Prop
  orderTopology : Prop
  infiniteValueStructure : Prop

structure ExtendedRealLineEvidence (E : ExtendedRealLine) where
  includesPosInfClosed : E.includesPosInf
  includesNegInfClosed : E.includesNegInf
  orderTopologyClosed : E.orderTopology
  infiniteValueStructureClosed : E.infiniteValueStructure

def ExtendedRealLineClosed (E : ExtendedRealLine) : Prop :=
  E.includesPosInf ∧ E.includesNegInf ∧ E.orderTopology ∧ E.infiniteValueStructure

theorem extended_real_line_closed_from_evidence (E : ExtendedRealLine) (ev : ExtendedRealLineEvidence E) :
    ExtendedRealLineClosed E := by
  exact And.intro ev.includesPosInfClosed
    (And.intro ev.includesNegInfClosed
      (And.intro ev.orderTopologyClosed ev.infiniteValueStructureClosed))

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse