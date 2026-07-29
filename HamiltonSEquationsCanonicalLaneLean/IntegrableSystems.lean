import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure IntegrableSystemsPackage {H : HamiltonianPhaseSpacePackage}
    {F : HamiltonianFlowPackage H} where
  firstIntegrals : Type u
  involutivePoissonCommuting : Prop
  actionAngleVariables : Prop
  liouvilleArnoldJostTheorem : Prop

structure IntegrableSystemsEvidence {H : HamiltonianPhaseSpacePackage}
    {F : HamiltonianFlowPackage H} (I : IntegrableSystemsPackage H F) where
  involutivePoissonCommutingClosed : I.involutivePoissonCommuting
  actionAngleVariablesClosed : I.actionAngleVariables
  liouvilleArnoldJostTheoremClosed : I.liouvilleArnoldJostTheorem

def IntegrableSystemsClosed {H : HamiltonianPhaseSpacePackage}
    {F : HamiltonianFlowPackage H} (I : IntegrableSystemsPackage H F) : Prop :=
  I.involutivePoissonCommuting ∧ I.actionAngleVariables ∧ I.liouvilleArnoldJostTheorem

theorem integrable_systems_closed_from_evidence
    {H : HamiltonianPhaseSpacePackage} {F : HamiltonianFlowPackage H}
    (I : IntegrableSystemsPackage H F) (E : IntegrableSystemsEvidence I) :
    IntegrableSystemsClosed I := by
  exact And.intro E.involutivePoissonCommutingClosed
    (And.intro E.actionAngleVariablesClosed E.liouvilleArnoldJostTheoremClosed)

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse