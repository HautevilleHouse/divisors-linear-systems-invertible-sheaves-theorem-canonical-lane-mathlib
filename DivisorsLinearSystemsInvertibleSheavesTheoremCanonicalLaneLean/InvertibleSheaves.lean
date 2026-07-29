import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure InvertibleSheafPackage where
  baseScheme : Type u
  structureSheaf : Type v
  sheafOfModules : Type w
  invertibilityCondition : Prop
  tensorProductInverse : Prop
  invertibilityConditionHolds : invertibilityCondition
  tensorProductInverseHolds : tensorProductInverse

structure InvertibleSheafEvidence (I : InvertibleSheafPackage) where
  invertibilityConditionClosed : I.invertibilityCondition
  tensorProductInverseClosed : I.tensorProductInverse

def InvertibleSheafClosed (I : InvertibleSheafPackage) : Prop :=
  I.invertibilityCondition ∧ I.tensorProductInverse

theorem invertible_sheaf_closed_from_evidence (I : InvertibleSheafPackage)
    (E : InvertibleSheafEvidence I) : InvertibleSheafClosed I := by
  exact And.intro E.invertibilityConditionClosed E.tensorProductInverseClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse
