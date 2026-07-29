import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure SymplecticGeometryPackage {P : PhaseSpacePackage} where
  symplecticFormClosed : Prop
  nondegeneracy : Prop
  poissonBracket : (P.manifold → ℝ) → (P.manifold → ℝ) → (P.manifold → ℝ)

def SymplecticGeometryClosed {P : PhaseSpacePackage} (S : SymplecticGeometryPackage P) : Prop :=
  S.symplecticFormClosed ∧ S.nondegeneracy

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse