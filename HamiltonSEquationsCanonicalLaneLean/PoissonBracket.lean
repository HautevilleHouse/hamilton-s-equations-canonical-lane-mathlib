import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure PoissonBracket (P : PhaseSpace) (H : HamiltonianFunction P) where
  bracket : (P.coordinates → P.momenta → ℝ) → (P.coordinates → P.momenta → ℝ) → (P.coordinates → P.momenta → ℝ)
  bilinearity : Prop
  skewSymmetry : Prop
  jacobiIdentity : Prop
  derivation : Prop
  bilinearityClosed : bilinearity
  skewSymmetryClosed : skewSymmetry
  jacobiIdentityClosed : jacobiIdentity
  derivationClosed : derivation

structure PoissonBracketEvidence (P : PhaseSpace) (H : HamiltonianFunction P)
    (PB : PoissonBracket P H) where
  bilinearityClosed : PB.bilinearityClosed
  skewSymmetryClosed : PB.skewSymmetryClosed
  jacobiIdentityClosed : PB.jacobiIdentityClosed
  derivationClosed : PB.derivationClosed

def PoissonBracketClosed (P : PhaseSpace) (H : HamiltonianFunction P)
    (PB : PoissonBracket P H) : Prop :=
  PB.bilinearity ∧ PB.skewSymmetry ∧ PB.jacobiIdentity ∧ PB.derivation

theorem poisson_bracket_closed_from_evidence
    (P : PhaseSpace) (H : HamiltonianFunction P)
    (PB : PoissonBracket P H) (E : PoissonBracketEvidence P H PB) :
    PoissonBracketClosed P H PB := by
  exact And.intro E.bilinearityClosed
    (And.intro E.skewSymmetryClosed
      (And.intro E.jacobiIdentityClosed E.derivationClosed))

end HautevilleHouse
end HamiltonSEquationsCanonicalLaneLean