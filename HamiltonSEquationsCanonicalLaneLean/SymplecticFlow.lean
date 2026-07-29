import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure SymplecticFlow (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) where
  flow : ℝ → P.coordinates → P.momenta → P.coordinates × P.momenta
  symplecticPreservation : Prop
  hamiltonianConservation : Prop
  flowProperty : Prop
  symplecticPreservationClosed : symplecticPreservation
  hamiltonianConservationClosed : hamiltonianConservation
  flowPropertyClosed : flowProperty

structure SymplecticFlowEvidence (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) (SF : SymplecticFlow P H Eqs) where
  symplecticPreservationClosed : SF.symplecticPreservationClosed
  hamiltonianConservationClosed : SF.hamiltonianConservationClosed
  flowPropertyClosed : SF.flowPropertyClosed

def SymplecticFlowClosed (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) (SF : SymplecticFlow P H Eqs) : Prop :=
  SF.symplecticPreservation ∧ SF.hamiltonianConservation ∧ SF.flowProperty

theorem symplectic_flow_closed_from_evidence
    (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) (SF : SymplecticFlow P H Eqs)
    (E : SymplecticFlowEvidence P H Eqs SF) :
    SymplecticFlowClosed P H Eqs SF := by
  exact And.intro E.symplecticPreservationClosed
    (And.intro E.hamiltonianConservationClosed E.flowPropertyClosed)

end HautevilleHouse
end HamiltonSEquationsCanonicalLaneLean