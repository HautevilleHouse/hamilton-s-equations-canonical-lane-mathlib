import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonSEquationsCanonicalLaneLean.HamiltonSystem
import HautevilleHouse.HamiltonSEquationsCanonicalLaneLean.PoissonBracket

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonFlowPackage {M : HamiltonPhaseSpace} {P : PoissonBracketPackage} where
  flowMap : Prop
  hamiltonianVectorField : Prop
  integralCurves : Prop
  energyConservation : Prop

structure HamiltonFlowEvidence {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    (F : HamiltonFlowPackage) where
  flowMapClosed : F.flowMap
  hamiltonianVectorFieldClosed : F.hamiltonianVectorField
  integralCurvesClosed : F.integralCurves
  energyConservationClosed : F.energyConservation

def HamiltonFlowClosed {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    (F : HamiltonFlowPackage) : Prop :=
  F.flowMap ∧ F.hamiltonianVectorField ∧ F.integralCurves ∧ F.energyConservation

theorem hamilton_flow_closed_from_evidence
    {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    (F : HamiltonFlowPackage) (E : HamiltonFlowEvidence F) :
    HamiltonFlowClosed F := by
  exact And.intro E.flowMapClosed (And.intro E.hamiltonianVectorFieldClosed (And.intro E.integralCurvesClosed E.energyConservationClosed))

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse