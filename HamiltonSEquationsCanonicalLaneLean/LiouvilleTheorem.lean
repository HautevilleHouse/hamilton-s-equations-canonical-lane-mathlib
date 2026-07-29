import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HamiltonSEquationsCanonicalLaneLean.HamiltonFlow

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure LiouvilleTheoremPackage {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    {F : HamiltonFlowPackage M P} where
  volumePreservation : Prop
  phaseSpaceIncompressible : Prop

structure LiouvilleTheoremEvidence {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    {F : HamiltonFlowPackage M P} (L : LiouvilleTheoremPackage) where
  volumePreservationClosed : L.volumePreservation
  phaseSpaceIncompressibleClosed : L.phaseSpaceIncompressible

def LiouvilleTheoremClosed {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    {F : HamiltonFlowPackage M P} (L : LiouvilleTheoremPackage) : Prop :=
  L.volumePreservation ∧ L.phaseSpaceIncompressible

theorem liouville_theorem_closed_from_evidence
    {M : HamiltonPhaseSpace} {P : PoissonBracketPackage}
    {F : HamiltonFlowPackage M P} (L : LiouvilleTheoremPackage)
    (E : LiouvilleTheoremEvidence L) : LiouvilleTheoremClosed L := by
  exact And.intro E.volumePreservationClosed E.phaseSpaceIncompressibleClosed

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse