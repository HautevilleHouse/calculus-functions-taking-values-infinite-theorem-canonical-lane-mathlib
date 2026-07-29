import calculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Data.ENNReal.Basic

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure ExtendedRealValuedFunction (X : Type u) [MeasureTheory.MeasureSpace X] where
  f : X → ENNReal
  measurable : Measurable f
  integrabilityCondition : Prop

def ExtendedRealValuedFunction.integral (f : ExtendedRealValuedFunction X) : ENNReal := 0

structure ExtendedRealFunctionPackage where
  domain : Type u
  measureSpace : MeasureTheory.MeasureSpace domain
  functionSpace : Set (ExtendedRealValuedFunction domain)
  closureUnderLimits : Prop
  dominatedConvergenceSatisfied : Prop

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse