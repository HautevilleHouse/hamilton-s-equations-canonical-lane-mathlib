import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonianMechanicsPackage {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} where
  conservationLaws : Prop
  energyConservation : H.hamiltonianFunction ∘ H.flowMap t = H.hamiltonianFunction
  timeTranslationSymmetry : Prop

def HamiltonianMechanicsClosed {P : PhaseSpacePackage} {H : HamiltonianFlowPackage P} (M : HamiltonianMechanicsPackage H) : Prop :=
  M.conservationLaws ∧ M.timeTranslationSymmetry

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse