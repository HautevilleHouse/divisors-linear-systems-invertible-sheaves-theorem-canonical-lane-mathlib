import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Divisors

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure RodriguesPackage where
  X : AlgebraicGeometry.ProjectiveVariety ℂ
  D : AlgebraicGeometry.VeryAmpleDivisor X
  linearSystem : AlgebraicGeometry.CompleteLinearSystem D
  embed : X → AlgebraicGeometry.ProjectiveSpace (finiteDimensional ℂ)
  embedClosed : Prop
  forAllPoints : …

def RodriguesClosed (R : RodriguesPackage) : Prop :=
  R.embedClosed ∧ R.forAllPoints

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse