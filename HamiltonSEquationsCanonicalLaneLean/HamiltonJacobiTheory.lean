import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonJacobiPackage {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} {C : CanonicalTransformationsPackage H S F} where
  hjEquation : Prop
  completeIntegral : Prop
  actionAngleVariables : Prop
  integrabilityCondition : Prop

structure HamiltonJacobiEvidence {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} {C : CanonicalTransformationsPackage H S F}
    (J : HamiltonJacobiPackage H S F C) where
  hjEquationClosed : J.hjEquation
  completeIntegralClosed : J.completeIntegral
  actionAngleVariablesClosed : J.actionAngleVariables
  integrabilityConditionClosed : J.integrabilityCondition

def HamiltonJacobiClosed {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} {C : CanonicalTransformationsPackage H S F}
    (J : HamiltonJacobiPackage H S F C) : Prop :=
  J.hjEquation ∧ J.completeIntegral ∧ J.actionAngleVariables ∧ J.integrabilityCondition

theorem hamilton_jacobi_closed_from_evidence {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} {C : CanonicalTransformationsPackage H S F}
    (J : HamiltonJacobiPackage H S F C) (E : HamiltonJacobiEvidence J) : HamiltonJacobiClosed J := by
  exact And.intro E.hjEquationClosed
    (And.intro E.completeIntegralClosed
      (And.intro E.actionAngleVariablesClosed E.integrabilityConditionClosed))

end HautevilleHouse.HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse