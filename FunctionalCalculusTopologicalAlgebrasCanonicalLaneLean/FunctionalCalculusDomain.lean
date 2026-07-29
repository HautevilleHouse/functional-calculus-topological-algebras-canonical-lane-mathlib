import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure FunctionalCalculusDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  algebraStructure : Ring carrier
  moduleStructure : Module ℝ carrier
  continuousMultiplication : Continuous fun (p : carrier × carrier) => p.1 * p.2

default instance : Inhabited FunctionalCalculusDomain := ⟨{
  carrier := ℝ
  topology := by infer_instance
  algebraStructure := by infer_instance
  moduleStructure := by infer_instance
  continuousMultiplication := by
    refine continuous_mul ?_ ?_
    exact continuous_fst
    exact continuous_snd
}⟩

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse