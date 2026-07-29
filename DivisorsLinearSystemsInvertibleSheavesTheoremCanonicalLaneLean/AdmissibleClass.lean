import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheorem

structure AdmissibleClass where
  object : DivisorsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DivisorsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DivisorsLinearSystemsInvertibleSheavesTheorem
end HautevilleHouse
