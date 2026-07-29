import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure SpectralMappingTheorem (A B : FunctionalCalculusDomain) (φ : FunctionalCalculusMap A B) where
  spectrumMapping : ∀ (f : A.carrier → ℝ) (x : A.carrier), spectrum B (φ.toFun x) = f '' spectrum A x
  continuityCondition : Continuous φ.toFun
  spectralPreservation : spectrum B (φ.toFun 1) = {1}

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse