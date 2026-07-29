import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure SpectralTheoremPackage where
  algebra : Type u
  topology : TopologicalSpace algebra
  algebraStructure : Algebra ℝ algebra
  spectrumCompact : Prop
  spectralRadiusFormula : Prop
  functionalCalculus extends : FunctionalCalculusPackage

structure SpectralTheoremEvidence (S : SpectralTheoremPackage) where
  spectrumCompactClosed : S.spectrumCompact
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  functionalCalculusEvidence : FunctionalCalculusEvidence S.functionalCalculus extends

def SpectralTheoremClosed (S : SpectralTheoremPackage) : Prop :=
  S.spectrumCompact ∧ S.spectralRadiusFormula ∧ FunctionalCalculusClosed S.functionalCalculus extends

theorem spectral_theorem_closed_from_evidence
    (S : SpectralTheoremPackage) (E : SpectralTheoremEvidence S) :
    SpectralTheoremClosed S := by
  refine And.intro E.spectrumCompactClosed (And.intro E.spectralRadiusFormulaClosed ?_)
  exact functional_calculus_closed_from_evidence _ E.functionalCalculusEvidence

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse
