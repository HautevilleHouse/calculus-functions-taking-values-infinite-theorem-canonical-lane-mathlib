import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.MeasurableFunctions

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheorem

structure IntegralPackage {E : ExtendedRealLine} (M : MeasurableFunctionPackage E) where
  integralDefined : Prop
  linearity : Prop
  monotoneConvergence : Prop
  infiniteValueIntegral : Prop

structure IntegralEvidence {E : ExtendedRealLine} {M : MeasurableFunctionPackage E} (I : IntegralPackage M) where
  integralDefinedClosed : I.integralDefined
  linearityClosed : I.linearity
  monotoneConvergenceClosed : I.monotoneConvergence
  infiniteValueIntegralClosed : I.infiniteValueIntegral

def IntegralClosed {E : ExtendedRealLine} {M : MeasurableFunctionPackage E} (I : IntegralPackage M) : Prop :=
  I.integralDefined ∧ I.linearity ∧ I.monotoneConvergence ∧ I.infiniteValueIntegral

theorem integral_closed_from_evidence {E : ExtendedRealLine} {M : MeasurableFunctionPackage E} (I : IntegralPackage M) (ev : IntegralEvidence I) :
    IntegralClosed I := by
  exact And.intro ev.integralDefinedClosed
    (And.intro ev.linearityClosed
      (And.intro ev.monotoneConvergenceClosed ev.infiniteValueIntegralClosed))

end CalculusFunctionsTakingValuesInfiniteTheorem
end HautevilleHouse