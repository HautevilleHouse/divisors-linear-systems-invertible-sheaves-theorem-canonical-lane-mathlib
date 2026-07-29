import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure LinearSystemPackage where
  divisorClass : Type u
  baseLocus : Type v
  completeLinearSystem : Prop
  basePointFree : Prop
  globalSectionsGenerated : Prop

structure LinearSystemEvidence (L : LinearSystemPackage) where
  completeLinearSystemClosed : L.completeLinearSystem
  basePointFreeClosed : L.basePointFree
  globalSectionsGeneratedClosed : L.globalSectionsGenerated

def LinearSystemClosed (L : LinearSystemPackage) : Prop :=
  L.completeLinearSystem ∧ L.basePointFree ∧ L.globalSectionsGenerated

theorem linear_system_closed_from_evidence (L : LinearSystemPackage)
    (E : LinearSystemEvidence L) : LinearSystemClosed L := by
  exact And.intro E.completeLinearSystemClosed
    (And.intro E.basePointFreeClosed E.globalSectionsGeneratedClosed)

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse
