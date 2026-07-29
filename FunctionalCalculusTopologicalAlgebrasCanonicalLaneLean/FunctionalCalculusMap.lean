import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure FunctionalCalculusMap (A B : FunctionalCalculusDomain) where
  toFun : A.carrier → B.carrier
  continuous : Continuous toFun
  multiplicative : ∀ (x y : A.carrier), toFun (x * y) = toFun x * toFun y
  linear : ∀ (α : ℝ) (x : A.carrier), toFun (α • x) = α • toFun x

default instance : Inhabited (FunctionalCalculusMap (default : FunctionalCalculusDomain) (default : FunctionalCalculusDomain)) := ⟨{
  toFun := id
  continuous := continuous_id
  multiplicative := λ _ _ => rfl
  linear := λ _ _ => rfl
}⟩

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse