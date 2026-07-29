import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HamiltonSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  symplecticForm : Type
  hamiltonian : Type

structure HamiltonAdmittedObject where
  phaseSpace : HamiltonSpace
  symplecticStructure : Prop
  hamiltonianSmooth : Prop
  equationsDefined : Prop
  conclusion : equationsDefined

structure HamiltonEndgameState where
  object : HamiltonAdmittedObject

def HamiltonWitnessClosed (O : HamiltonAdmittedObject) : Prop :=
  O.equationsDefined

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse