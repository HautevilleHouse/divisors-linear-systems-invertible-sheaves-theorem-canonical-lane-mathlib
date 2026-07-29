import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

def ConstrainedDivisorsLinearSystemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_divisors_linear_systems_endgame (A : AdmissibleClass) :
    ConstrainedDivisorsLinearSystemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse