import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedHamiltonClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_hamilton_endgame A

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse