import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.ExtendedRealLine

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

structure MeasurableFunctionPackage (E : ExtendedRealLine) where
  sourceSpace : Type
  sigmaAlgebra : Prop
  functionDefined : E.baseSet → E.baseSet
  measurablePreimage : Prop
  infinitePreimageHandled : Prop

structure MeasurableFunctionEvidence {E : ExtendedRealLine} (M : MeasurableFunctionPackage E) where
  sigmaAlgebraClosed : M.sigmaAlgebra
  measurablePreimageClosed : M.measurablePreimage
  infinitePreimageHandledClosed : M.infinitePreimageHandled

def MeasurableFunctionClosed {E : ExtendedRealLine} (M : MeasurableFunctionPackage E) : Prop :=
  M.sigmaAlgebra ∧ M.measurablePreimage ∧ M.infinitePreimageHandled

theorem measurable_function_closed_from_evidence {E : ExtendedRealLine} (M : MeasurableFunctionPackage E) (ev : MeasurableFunctionEvidence M) :
    MeasurableFunctionClosed M := by
  exact And.intro ev.sigmaAlgebraClosed
    (And.intro ev.measurablePreimageClosed ev.infinitePreimageHandledClosed)

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse