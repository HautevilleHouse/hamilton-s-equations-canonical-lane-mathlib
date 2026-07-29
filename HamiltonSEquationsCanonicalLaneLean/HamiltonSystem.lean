import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSEquationsCanonicalLaneLean

structure HamiltonPhaseSpace where
  manifold : Type u
  symplecticForm : Type v
  dimension : Nat

definition symplecticTwoForm (M : HamiltonPhaseSpace) : Prop := True

structure AdmittedHamiltonObject where
  phaseSpace : HamiltonPhaseSpace
  hamiltonian : Type w
  equationsDefined : Prop
  resultClosed : Prop
  conclusion : resultClosed

end HamiltonSEquationsCanonicalLaneLean
end HautevilleHouse