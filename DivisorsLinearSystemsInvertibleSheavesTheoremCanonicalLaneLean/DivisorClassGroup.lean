import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure DivisorClassGroupPackage where
  groupType : Type u
  groupStructure : Prop
  groupLaw : groupStructure
  weilDivisors : Prop
  cartierDivisors : Prop
  weilToCartierMap : Prop
  weilDivisorsHolds : weilDivisors
  cartierDivisorsHolds : cartierDivisors
  weilToCartierMapHolds : weilToCartierMap

structure DivisorClassGroupEvidence (D : DivisorClassGroupPackage) where
  groupStructureClosed : D.groupStructure
  weilDivisorsClosed : D.weilDivisors
  cartierDivisorsClosed : D.cartierDivisors
  weilToCartierMapClosed : D.weilToCartierMap

def DivisorClassGroupClosed (D : DivisorClassGroupPackage) : Prop :=
  D.groupStructure ∧ D.weilDivisors ∧ D.cartierDivisors ∧ D.weilToCartierMap

theorem divisor_class_group_closed_from_evidence (D : DivisorClassGroupPackage)
    (E : DivisorClassGroupEvidence D) : DivisorClassGroupClosed D := by
  exact And.intro E.groupStructureClosed
    (And.intro E.weilDivisorsClosed (And.intro E.cartierDivisorsClosed E.weilToCartierMapClosed))

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse
