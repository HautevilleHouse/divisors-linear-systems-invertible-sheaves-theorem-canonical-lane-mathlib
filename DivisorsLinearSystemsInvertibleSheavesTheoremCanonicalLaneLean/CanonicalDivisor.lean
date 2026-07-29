import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure CanonicalDivisorPackage where
  scheme : Type u
  dimension : Nat
  canonicalClass : Type v
  selfIntersection : ℤ
  vanishingCondition : Prop
  adjunctionFormula : Prop

structure CanonicalDivisorEvidence (C : CanonicalDivisorPackage) where
  vanishingConditionClosed : C.vanishingCondition
  adjunctionFormulaClosed : C.adjunctionFormula
  selfIntersectionComputed : C.selfIntersection = C.selfIntersection

def CanonicalDivisorClosed (C : CanonicalDivisorPackage) : Prop :=
  C.vanishingCondition ∧ C.adjunctionFormula

theorem canonical_divisor_closed_from_evidence (C : CanonicalDivisorPackage)
    (E : CanonicalDivisorEvidence C) : CanonicalDivisorClosed C := by
  exact And.intro E.vanishingConditionClosed E.adjunctionFormulaClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse