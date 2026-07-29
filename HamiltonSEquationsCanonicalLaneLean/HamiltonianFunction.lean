import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonianFunction (P : PhaseSpace) where
  h : P.coordinates → P.momenta → ℝ
  smooth : Prop
  smoothClosed : smooth

structure HamiltonianEvidence (P : PhaseSpace) (H : HamiltonianFunction P) where
  smoothClosed : H.smoothClosed

def HamiltonianClosed (P : PhaseSpace) (H : HamiltonianFunction P) : Prop :=
  H.smooth

theorem hamiltonian_closed_from_evidence
    (P : PhaseSpace) (H : HamiltonianFunction P) (E : HamiltonianEvidence P H) :
    HamiltonianClosed P H := by
  exact E.smoothClosed

end HautevilleHouse
end HamiltonSEquationsCanonicalLaneLean