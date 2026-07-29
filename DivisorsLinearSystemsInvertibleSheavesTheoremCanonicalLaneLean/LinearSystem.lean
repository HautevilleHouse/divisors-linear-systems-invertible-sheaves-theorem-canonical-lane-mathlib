import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure LinearSystemPackage where
  completeLinearSystem : Prop
  baseLocus : Prop
  veryAmpleCondition : Prop
  completeLinearSystemHolds : completeLinearSystem
  baseLocusHolds : baseLocus
  veryAmpleConditionHolds : veryAmpleCondition

structure LinearSystemEvidence (L : LinearSystemPackage) where
  completeLinearSystemClosed : L.completeLinearSystem
  baseLocusClosed : L.baseLocus
  veryAmpleConditionClosed : L.veryAmpleCondition

def LinearSystemClosed (L : LinearSystemPackage) : Prop :=
  L.completeLinearSystem ∧ L.baseLocus ∧ L.veryAmpleCondition

theorem linear_system_closed_from_evidence (L : LinearSystemPackage)
    (E : LinearSystemEvidence L) : LinearSystemClosed L := by
  exact And.intro E.completeLinearSystemClosed
    (And.intro E.baseLocusClosed E.veryAmpleConditionClosed)

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse
