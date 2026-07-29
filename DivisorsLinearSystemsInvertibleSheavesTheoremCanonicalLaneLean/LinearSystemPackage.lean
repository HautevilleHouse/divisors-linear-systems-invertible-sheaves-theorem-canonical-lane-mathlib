import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheorem

structure LinearSystemPackage {D : DivisorPackage} where
  baseDivisor : D.divisor
  dimension : ℕ
  sections : Type w
  baseLocusFree : Prop
  morphismInduced : Prop

structure LinearSystemEvidence {D : DivisorPackage}
    (L : LinearSystemPackage D) where
  baseLocusFreeClosed : L.baseLocusFree
  morphismInducedClosed : L.morphismInduced

def LinearSystemClosed {D : DivisorPackage} (L : LinearSystemPackage D) : Prop :=
  L.baseLocusFree ∧ L.morphismInduced

theorem linear_system_closed_from_evidence
    {D : DivisorPackage} (L : LinearSystemPackage D) (E : LinearSystemEvidence L) :
    LinearSystemClosed L := by
  exact And.intro E.baseLocusFreeClosed E.morphismInducedClosed

end DivisorsLinearSystemsInvertibleSheavesTheorem
end HautevilleHouse
