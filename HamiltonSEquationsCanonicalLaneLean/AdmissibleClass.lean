import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : HamiltonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HamiltonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse