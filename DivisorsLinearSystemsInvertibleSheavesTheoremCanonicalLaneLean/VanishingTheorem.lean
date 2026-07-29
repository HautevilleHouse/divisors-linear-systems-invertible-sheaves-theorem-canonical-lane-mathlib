import canonicalLaneMathlib.AdmissibleClass
import DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean.RiemannRoch

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure VanishingTheoremPackage where
  lineBundle : Type u
  cohomologyDimension : ℕ
  vanishCondition : Prop

structure VanishingTheoremEvidence (P : VanishingTheoremPackage) where
  vanishConditionClosed : P.vanishCondition

def VanishingTheoremClosed (P : VanishingTheoremPackage) : Prop :=
  P.vanishCondition

theorem vanishing_theorem_closed_from_evidence (P : VanishingTheoremPackage) (E : VanishingTheoremEvidence P) : VanishingTheoremClosed P := by
  exact E.vanishConditionClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse