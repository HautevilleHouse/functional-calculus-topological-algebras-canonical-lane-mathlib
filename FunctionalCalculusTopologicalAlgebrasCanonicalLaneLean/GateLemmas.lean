import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse