import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Divisors

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure DivisorSheafPackage where
  X : Type u
  [inst : AlgebraicGeometry.Scheme X]
  D : AlgebraicGeometry.WeilDivisor X
  L : AlgebraicGeometry.InvertibleSheaf X
  linearSystem : Set (AlgebraicGeometry.CartierDivisor X)
  basepointFree : Prop
  sheafIsGenerated : Prop
  correspondence : AlgebraicGeometry.DivisorSheafCorrespondence X

def DivisorSheafClosed (P : DivisorSheafPackage) : Prop :=
  P.basepointFree ∧ P.sheafIsGenerated

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse