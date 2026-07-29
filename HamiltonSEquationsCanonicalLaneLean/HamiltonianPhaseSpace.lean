import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonianPhaseSpacePackage where
  phaseSpace : Type u
  symplecticForm : Type v
  closedNondegenerate : Prop
  poissonBracketDefined : Prop
  symplecticCompatibility : Prop

structure HamiltonianPhaseSpaceEvidence (H : HamiltonianPhaseSpacePackage) where
  closedNondegenerateClosed : H.closedNondegenerate
  poissonBracketDefinedClosed : H.poissonBracketDefined
  symplecticCompatibilityClosed : H.symplecticCompatibility

def HamiltonianPhaseSpaceClosed (H : HamiltonianPhaseSpacePackage) : Prop :=
  H.closedNondegenerate ∧ H.poissonBracketDefined ∧ H.symplecticCompatibility

theorem hamiltonian_phase_space_closed_from_evidence
    (H : HamiltonianPhaseSpacePackage) (E : HamiltonianPhaseSpaceEvidence H) :
    HamiltonianPhaseSpaceClosed H := by
  exact And.intro E.closedNondegenerateClosed
    (And.intro E.poissonBracketDefinedClosed E.symplecticCompatibilityClosed)

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse