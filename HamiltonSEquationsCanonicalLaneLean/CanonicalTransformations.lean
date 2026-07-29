import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure CanonicalTransformationsPackage {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} where
  generatingFunction : Type u
  transformationLaw : Prop
  symplecticPreserved : Prop
  hamiltonianCovariance : Prop

structure CanonicalTransformationsEvidence {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} (C : CanonicalTransformationsPackage H S F) where
  transformationLawClosed : C.transformationLaw
  symplecticPreservedClosed : C.symplecticPreserved
  hamiltonianCovarianceClosed : C.hamiltonianCovariance

def CanonicalTransformationsClosed {H : HamiltonianSystem} {S : SymplecticFormPackage H}
    {F : HamiltonianFlowPackage H S} (C : CanonicalTransformationsPackage H S F) : Prop :=
  C.transformationLaw ∧ C.symplecticPreserved ∧ C.hamiltonianCovariance

theorem canonical_transformations_closed_from_evidence {H : HamiltonianSystem}
    {S : SymplecticFormPackage H} {F : HamiltonianFlowPackage H S}
    (C : CanonicalTransformationsPackage H S F) (E : CanonicalTransformationsEvidence C) :
    CanonicalTransformationsClosed C := by
  exact And.intro E.transformationLawClosed
    (And.intro E.symplecticPreservedClosed E.hamiltonianCovarianceClosed)

end HautevilleHouse.HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse