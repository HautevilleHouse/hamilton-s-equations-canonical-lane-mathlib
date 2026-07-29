import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure PhaseSpace where
  coordinates : Type u
  momenta : Type v
  symplecticForm : Type w
  dimension : Nat
  symplecticClosed : Prop
  dimensionClosed : Prop

structure PhaseSpaceEvidence (P : PhaseSpace) where
  symplecticClosed : P.symplecticClosed
  dimensionClosed : P.dimensionClosed

def PhaseSpaceClosed (P : PhaseSpace) : Prop :=
  P.symplecticClosed ∧ P.dimensionClosed

theorem phase_space_closed_from_evidence (P : PhaseSpace) (E : PhaseSpaceEvidence P) :
    PhaseSpaceClosed P := by
  exact And.intro E.symplecticClosed E.dimensionClosed

end HautevilleHouse
end HamiltonSEquationsCanonicalLaneLean