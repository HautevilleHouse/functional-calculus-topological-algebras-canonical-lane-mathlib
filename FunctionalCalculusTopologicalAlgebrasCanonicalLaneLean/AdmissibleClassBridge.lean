import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure AdmissibleClassBridge (A : AdmissibleClass) where
  bridgeClosed : A.endpointSatisfied → A.remainderRecorded → Prop
  gateClosed : A.gateWitness → Prop
  endgame : bridgeClosed A.endpointSatisfied A.remainderRecorded ∧ gateClosed A.gateWitness

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse