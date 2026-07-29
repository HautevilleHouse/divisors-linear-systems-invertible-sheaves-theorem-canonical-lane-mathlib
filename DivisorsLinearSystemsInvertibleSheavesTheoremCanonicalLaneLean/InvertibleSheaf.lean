import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure InvertibleSheafPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  structureSheaf : Type v
  invertibleSheaf : Type w
  tensorProductClosed : invertibleSheaf → invertibleSheaf → invertibleSheaf
  isomorphismToStructureSheaf : Prop

structure InvertibleSheafEvidence (I : InvertibleSheafPackage) where
  tensorProductClosedProper : ∀ a b : I.invertibleSheaf, I.tensorProductClosed a b = I.tensorProductClosed b a
  isomorphismToStructureSheafClosed : I.isomorphismToStructureSheaf

def InvertibleSheafClosed (I : InvertibleSheafPackage) : Prop :=
  I.isomorphismToStructureSheaf

theorem invertible_sheaf_closed_from_evidence (I : InvertibleSheafPackage)
    (E : InvertibleSheafEvidence I) : InvertibleSheafClosed I := by
  exact E.isomorphismToStructureSheafClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse