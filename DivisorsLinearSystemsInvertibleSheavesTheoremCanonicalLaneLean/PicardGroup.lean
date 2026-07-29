import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure PicardGroupPackage where
  invertibleSheaf : Type u
  groupStructure : Type v
  groupLawClosed : invertibleSheaf → invertibleSheaf → invertibleSheaf
  identityObject : invertibleSheaf
  inverseExists : Prop
  abelianCondition : Prop

structure PicardGroupEvidence (P : PicardGroupPackage) where
  inverseExistsClosed : P.inverseExists
  abelianConditionClosed : P.abelianCondition

def PicardGroupClosed (P : PicardGroupPackage) : Prop :=
  P.inverseExists ∧ P.abelianCondition

theorem picard_group_closed_from_evidence (P : PicardGroupPackage)
    (E : PicardGroupEvidence P) : PicardGroupClosed P := by
  exact And.intro E.inverseExistsClosed E.abelianConditionClosed

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse