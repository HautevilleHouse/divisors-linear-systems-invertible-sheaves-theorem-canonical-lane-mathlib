import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheorem

structure InvertibleSheafPackage {D : DivisorPackage} where
  sheaf : Type u
  localTrivialization : Prop
  transitionFunctions : Prop
  lineBundle : Prop
  chernClass : Prop

structure InvertibleSheafEvidence {D : DivisorPackage}
    (I : InvertibleSheafPackage D) where
  localTrivializationClosed : I.localTrivialization
  transitionFunctionsClosed : I.transitionFunctions
  lineBundleClosed : I.lineBundle
  chernClassClosed : I.chernClass

def InvertibleSheafClosed {D : DivisorPackage} (I : InvertibleSheafPackage D) : Prop :=
  I.localTrivialization ∧ I.transitionFunctions ∧ I.lineBundle ∧ I.chernClass

theorem invertible_sheaf_closed_from_evidence
    {D : DivisorPackage} (I : InvertibleSheafPackage D) (E : InvertibleSheafEvidence I) :
    InvertibleSheafClosed I := by
  exact And.intro E.localTrivializationClosed
    (And.intro E.transitionFunctionsClosed
      (And.intro E.lineBundleClosed E.chernClassClosed))

end DivisorsLinearSystemsInvertibleSheavesTheorem
end HautevilleHouse
