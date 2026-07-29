import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.InvertibleSheaf

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure InvertibleSheafSections (L : AlgebraicGeometry.InvertibleSheaf) where
  globalSections : Type
  finiteDimensional : Prop
  dimensionFormula : Nat
  canonicalMap : globalSections → AlgebraicGeometry.Section L
  basis : List (globalSections)
  basisSpans : Prop

def SheafSectionsClosed (S : InvertibleSheafSections L) : Prop :=
  S.finiteDimensional ∧ S.basisSpans

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse