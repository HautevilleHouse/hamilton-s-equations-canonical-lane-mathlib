import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonianSystem where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonianFunction : Type w
  smoothStructure : Prop
  symplecticNondegenerate : Prop
  hamiltonianSmooth : Prop
  equationsDefined : Prop

structure HamiltonianSystemEvidence (H : HamiltonianSystem) where
  smoothStructureClosed : H.smoothStructure
  symplecticNondegenerateClosed : H.symplecticNondegenerate
  hamiltonianSmoothClosed : H.hamiltonianSmooth
  equationsDefinedClosed : H.equationsDefined

def HamiltonianSystemClosed (H : HamiltonianSystem) : Prop :=
  H.smoothStructure ∧ H.symplecticNondegenerate ∧ H.hamiltonianSmooth ∧ H.equationsDefined

theorem hamiltonian_system_closed_from_evidence (H : HamiltonianSystem)
    (E : HamiltonianSystemEvidence H) : HamiltonianSystemClosed H := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.symplecticNondegenerateClosed
      (And.intro E.hamiltonianSmoothClosed E.equationsDefinedClosed))

end HautevilleHouse.HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse