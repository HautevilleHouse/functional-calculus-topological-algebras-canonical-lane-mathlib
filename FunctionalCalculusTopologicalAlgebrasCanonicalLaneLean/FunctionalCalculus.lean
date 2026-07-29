import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure FunctionalCalculusPackage {A : CStarAlgebraPackage} where
  continuousFunctionalCalculus : Prop
  holomorphicFunctionalCalculus : Prop
  boundedFunctionalCalculus : Prop
  measurabilityExtensions : Prop
  spectralMappingProperty : Prop
  functionalCalculusClosed : continuousFunctionalCalculus ∧ holomorphicFunctionalCalculus ∧ boundedFunctionalCalculus ∧ measurabilityExtensions ∧ spectralMappingProperty

structure FunctionalCalculusEvidence {A : CStarAlgebraPackage} (F : FunctionalCalculusPackage A) where
  continuousClosed : F.continuousFunctionalCalculus
  holomorphicClosed : F.holomorphicFunctionalCalculus
  boundedClosed : F.boundedFunctionalCalculus
  measurabilityClosed : F.measurabilityExtensions
  spectralMappingClosed : F.spectralMappingProperty

theorem functional_calculus_closed_from_evidence {A : CStarAlgebraPackage} (F : FunctionalCalculusPackage A) (E : FunctionalCalculusEvidence F) :
    F.functionalCalculusClosed :=
  And.intro E.continuousClosed (And.intro E.holomorphicClosed (And.intro E.boundedClosed (And.intro E.measurabilityClosed E.spectralMappingClosed)))

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse