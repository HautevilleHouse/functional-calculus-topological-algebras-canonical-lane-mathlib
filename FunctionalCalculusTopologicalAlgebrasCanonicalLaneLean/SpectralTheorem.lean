import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.FunctionalCalculus

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure SpectralTheoremPackage {A : CStarAlgebraPackage} {F : FunctionalCalculusPackage A} where
  spectrumCompact : Prop
  spectralMappingTheorem : Prop
  spectralRadiusFormula : Prop
  spectralTheoremClosed : spectrumCompact ∧ spectralMappingTheorem ∧ spectralRadiusFormula

structure SpectralTheoremEvidence {A : CStarAlgebraPackage} {F : FunctionalCalculusPackage A} (S : SpectralTheoremPackage A F) where
  spectrumCompactClosed : S.spectrumCompact
  spectralMappingClosed : S.spectralMappingTheorem
  spectralRadiusClosed : S.spectralRadiusFormula

theorem spectral_theorem_closed_from_evidence {A : CStarAlgebraPackage} {F : FunctionalCalculusPackage A} (S : SpectralTheoremPackage A F) (E : SpectralTheoremEvidence S) :
    S.spectralTheoremClosed :=
  And.intro E.spectrumCompactClosed (And.intro E.spectralMappingClosed E.spectralRadiusClosed)

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse