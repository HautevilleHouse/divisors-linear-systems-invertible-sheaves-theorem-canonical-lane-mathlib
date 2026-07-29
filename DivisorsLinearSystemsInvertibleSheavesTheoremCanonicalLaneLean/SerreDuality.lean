import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.SerreDuality

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure SerreDualityPackage (X : AlgebraicGeometry.SmoothProjectiveVariety ℂ) where
  canonicalSheaf : AlgebraicGeometry.InvertibleSheaf X
  dualizingSheaf : AlgebraicGeometry.InvertibleSheaf X
  isomorphism : canonicalSheaf ≅ dualizingSheaf
  traceMap : AlgebraicGeometry.SheafCohomology.H^0(X, canonicalSheaf) → ℂ
  traceIsomorphism : IsLinearIsomorphism ℂ

def SerreDualityClosed (S : SerreDualityPackage X) : Prop :=
  S.isomorphism.IsIso ∧ S.traceIsomorphism

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse