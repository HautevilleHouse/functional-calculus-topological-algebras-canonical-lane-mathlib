import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure AdmittedObject where
  algebra : Type u
  topology : TopologicalSpace algebra
  functionalCalculus : Prop
  spectralTheorem : Prop
  conclusion : functionalCalculus ∧ spectralTheorem

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.functionalCalculus ∧ O.spectralTheorem

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse