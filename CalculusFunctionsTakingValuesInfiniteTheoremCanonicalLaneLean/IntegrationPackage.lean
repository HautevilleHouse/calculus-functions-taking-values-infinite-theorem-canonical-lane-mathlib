import calculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean.ExtendedRealFunctions

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean

structure IntegrationPackage {X : Type u} [MeasureTheory.MeasureSpace X]
    (F : ExtendedRealFunctionPackage X) where
  integralDefined : ∀ f ∈ F.functionSpace, ∃ (I : ENNReal), True
  linearity : Prop
  monotoneConvergence : Prop

def IntegrationPackageClosed {X : Type u} [MeasureTheory.MeasureSpace X]
    {F : ExtendedRealFunctionPackage X} (P : IntegrationPackage F) : Prop :=
  P.linearity ∧ P.monotoneConvergence

end CalculusFunctionsTakingValuesInfiniteTheoremCanonicalLaneLean
end HautevilleHouse