import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean

structure DivisorsAdmittedObject where
  scheme : Type u
  topology : TopologicalSpace scheme
  invertibleSheaf : Type v
  divisor : Type w
  linearSystem : Prop
  basepointFree : Prop
  veryAmple : Prop
  conclusion : veryAmple

def DivisorsWitnessClosed (O : DivisorsAdmittedObject) : Prop :=
  O.veryAmple

end DivisorsLinearSystemsInvertibleSheavesTheoremCanonicalLaneLean
end HautevilleHouse