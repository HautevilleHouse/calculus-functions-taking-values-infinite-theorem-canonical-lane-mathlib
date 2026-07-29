import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ExtendedRealFunctionPackage where
  domain : Type u
  extendedCodomain : Type v
  function : domain → extendedCodomain
  finiteAlmostEverywhere : Prop
  infiniteSetMeasurable : Prop
  limitExists : Prop

structure ExtendedRealFunctionEvidence (P : ExtendedRealFunctionPackage) where
  finiteAlmostEverywhereClosed : P.finiteAlmostEverywhere
  infiniteSetMeasurableClosed : P.infiniteSetMeasurable
  limitExistsClosed : P.limitExists

def ExtendedRealFunctionClosed (P : ExtendedRealFunctionPackage) : Prop :=
  P.finiteAlmostEverywhere ∧ P.infiniteSetMeasurable ∧ P.limitExists

theorem extended_real_function_closed_from_evidence (P : ExtendedRealFunctionPackage) (E : ExtendedRealFunctionEvidence P) : ExtendedRealFunctionClosed P := by
  exact And.intro E.finiteAlmostEverywhereClosed (And.intro E.infiniteSetMeasurableClosed E.limitExistsClosed)

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse