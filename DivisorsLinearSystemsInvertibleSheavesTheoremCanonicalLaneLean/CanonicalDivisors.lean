import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure CanonicalDivisorPackage where
  underlyingScheme : Type u
  topology : TopologicalSpace underlyingScheme
  structureSheaf : Type v
  canonicalSheaf : Type w
  dualizingSheaf : Type x
  invertibleCondition : Prop
  localFreeness : Prop

structure CanonicalDivisorsEvidence (C : CanonicalDivisorPackage) where
  invertibleConditionClosed : C.invertibleCondition
  localFreenessClosed : C.localFreeness

def CanonicalDivisorsClosed (C : CanonicalDivisorPackage) : Prop :=
  C.invertibleCondition ∧ C.localFreeness

theorem canonical_divisors_closed_from_evidence (C : CanonicalDivisorPackage)
    (E : CanonicalDivisorsEvidence C) : CanonicalDivisorsClosed C := by
  exact And.intro E.invertibleConditionClosed E.localFreenessClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse
