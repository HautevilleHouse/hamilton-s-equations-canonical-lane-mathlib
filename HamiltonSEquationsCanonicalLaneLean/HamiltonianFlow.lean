import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonianFlowPackage {H : HamiltonianPhaseSpacePackage} where
  hamiltonianFunction : Type u
  hamiltonianVectorField : Type v
  flowMap : Type w
  hamiltonEquations : Prop
  energyConservation : Prop
  flowPreservesSymplecticForm : Prop

structure HamiltonianFlowEvidence {H : HamiltonianPhaseSpacePackage}
    (F : HamiltonianFlowPackage H) where
  hamiltonEquationsClosed : F.hamiltonEquations
  energyConservationClosed : F.energyConservation
  flowPreservesSymplecticFormClosed : F.flowPreservesSymplecticForm

def HamiltonianFlowClosed {H : HamiltonianPhaseSpacePackage}
    (F : HamiltonianFlowPackage H) : Prop :=
  F.hamiltonEquations ∧ F.energyConservation ∧ F.flowPreservesSymplecticForm

theorem hamiltonian_flow_closed_from_evidence
    {H : HamiltonianPhaseSpacePackage} (F : HamiltonianFlowPackage H)
    (E : HamiltonianFlowEvidence F) : HamiltonianFlowClosed F := by
  exact And.intro E.hamiltonEquationsClosed
    (And.intro E.energyConservationClosed E.flowPreservesSymplecticFormClosed)

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse