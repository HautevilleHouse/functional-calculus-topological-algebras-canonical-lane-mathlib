import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

def ConstrainedFunctionalCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_calculus_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalCalculusClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse