import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure Divisor (X : Type _) [TopologicalSpace X] [Scheme X] where
  carrier : WeilDivisor X
  cartier? : Bool
  effective? : Bool

structure LinearSystem (X : Type _) [TopologicalSpace X] [Scheme X] where
  divisors : Set (Divisor X)
  basepointFree? : Prop
  dimension : ℕ

structure DivisorLinearSystemPackage where
  X : Type u
  topology : TopologicalSpace X
  schemeStruct : Scheme X
  divisor : Divisor X
  linearSystem : LinearSystem X
  completeLinearSystem? : Prop

def DivisorLinearSystemClosed (P : DivisorLinearSystemPackage) : Prop :=
  P.completeLinearSystem?

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse