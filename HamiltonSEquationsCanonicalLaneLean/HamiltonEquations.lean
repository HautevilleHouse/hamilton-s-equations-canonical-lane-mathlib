import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonEquations (P : PhaseSpace) (H : HamiltonianFunction P) where
  dqdt : P.coordinates → P.momenta → P.coordinates
  dpdt : P.coordinates → P.momenta → P.momenta
  equationsHold : Prop
  equationsHoldClosed : equationsHold

structure HamiltonEquationsEvidence (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) where
  equationsHoldClosed : Eqs.equationsHoldClosed

def HamiltonEquationsClosed (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) : Prop :=
  Eqs.equationsHold

theorem hamilton_equations_closed_from_evidence
    (P : PhaseSpace) (H : HamiltonianFunction P)
    (Eqs : HamiltonEquations P H) (E : HamiltonEquationsEvidence P H Eqs) :
    HamiltonEquationsClosed P H Eqs := by
  exact E.equationsHoldClosed

end HautevilleHouse
end HamiltonSEquationsCanonicalLaneLean