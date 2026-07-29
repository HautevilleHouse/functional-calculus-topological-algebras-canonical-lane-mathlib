import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure FunctionalCalculusAdmittedObject where
  algebra : Type u
  topology : TopologicalSpace algebra
  topologicalAlgebra : TopologicalRing algebra
  functionalCalculus : Prop
  spectralTheorem : Prop
  conclusion : functionalCalculus ∧ spectralTheorem

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse