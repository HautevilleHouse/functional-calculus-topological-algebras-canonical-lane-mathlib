import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure SpectralMeasure (A : FunctionalCalculusDomain) where
  measurableSpace : MeasurableSpace A.carrier
  measure : A.carrier → ℝ
  additivity : ∀ (s t : Set A.carrier), s ∩ t = ∅ → measure (s ∪ t) = measure s + measure t
  positive : ∀ (s : Set A.carrier), measure s ≥ 0

default instance : Inhabited (SpectralMeasure (default : FunctionalCalculusDomain)) := ⟨{
  measurableSpace := by infer_instance
  measure := λ _ => 0
  additivity := λ _ _ _ => by simp
  positive := λ _ => by simp
}⟩

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse