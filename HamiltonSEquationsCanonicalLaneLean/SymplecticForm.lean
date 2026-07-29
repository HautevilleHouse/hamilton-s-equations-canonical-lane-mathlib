import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure SymplecticFormPackage (H : HamiltonianSystem) where
  closedTwoForm : Prop
  nondegeneracy : Prop
  poissonBracketDefined : Prop
  canonicalCoordinates : Prop

structure SymplecticFormEvidence {H : HamiltonianSystem} (S : SymplecticFormPackage H) where
  closedTwoFormClosed : S.closedTwoForm
  nondegeneracyClosed : S.nondegeneracy
  poissonBracketDefinedClosed : S.poissonBracketDefined
  canonicalCoordinatesClosed : S.canonicalCoordinates

def SymplecticFormClosed {H : HamiltonianSystem} (S : SymplecticFormPackage H) : Prop :=
  S.closedTwoForm ∧ S.nondegeneracy ∧ S.poissonBracketDefined ∧ S.canonicalCoordinates

theorem symplectic_form_closed_from_evidence {H : HamiltonianSystem}
    (S : SymplecticFormPackage H) (E : SymplecticFormEvidence S) : SymplecticFormClosed S := by
  exact And.intro E.closedTwoFormClosed
    (And.intro E.nondegeneracyClosed
      (And.intro E.poissonBracketDefinedClosed E.canonicalCoordinatesClosed))

end HautevilleHouse.HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse