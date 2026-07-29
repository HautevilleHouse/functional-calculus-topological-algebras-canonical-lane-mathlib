import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure FctopAlgebraSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  algebra : Algebra ℝ carrier

structure FctopAlgebraAdmittedObject where
  space : FctopAlgebraSpace
  functionalCalculusClosed : Prop
  conclusion : functionalCalculusClosed

def FctopAlgebraWitnessClosed (O : FctopAlgebraAdmittedObject) : Prop :=
  O.functionalCalculusClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse
