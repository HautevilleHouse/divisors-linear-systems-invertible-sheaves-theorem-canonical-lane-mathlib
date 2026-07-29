import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheorem

structure DivisorPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  divisor : Type v
  weilDivisor : Prop
  cartierDivisor : Prop
  linearEquivalence : Prop
  support : Prop

structure DivisorEvidence (D : DivisorPackage) where
  weilDivisorClosed : D.weilDivisor
  cartierDivisorClosed : D.cartierDivisor
  linearEquivalenceClosed : D.linearEquivalence
  supportClosed : D.support

def DivisorClosed (D : DivisorPackage) : Prop :=
  D.weilDivisor ∧ D.cartierDivisor ∧ D.linearEquivalence ∧ D.support

theorem divisor_closed_from_evidence (D : DivisorPackage) (E : DivisorEvidence D) :
    DivisorClosed D := by
  exact And.intro E.weilDivisorClosed
    (And.intro E.cartierDivisorClosed
      (And.intro E.linearEquivalenceClosed E.supportClosed))

end DivisorsLinearSystemsInvertibleSheavesTheorem
end HautevilleHouse
