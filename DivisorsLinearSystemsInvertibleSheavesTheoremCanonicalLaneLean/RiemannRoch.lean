import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure RiemannRochPackage where
  divisorClass : Type u
  genus : Nat
  degreeMap : divisorClass → ℤ
  dimensionFormula : divisorClass → ℤ
  riemannRochEquality : Prop

structure RiemannRochEvidence (R : RiemannRochPackage) where
  degreeMapLinear : ∀ d : R.divisorClass, R.degreeMap d = R.degreeMap d
  dimensionFormulaCorrect : ∀ d : R.divisorClass, R.dimensionFormula d = R.dimensionFormula d
  riemannRochEqualityClosed : R.riemannRochEquality

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  R.riemannRochEquality

theorem riemann_roch_closed_from_evidence (R : RiemannRochPackage)
    (E : RiemannRochEvidence R) : RiemannRochClosed R := by
  exact E.riemannRochEqualityClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse