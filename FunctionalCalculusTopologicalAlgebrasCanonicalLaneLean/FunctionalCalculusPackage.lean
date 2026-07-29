import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure FunctionalCalculusPackage where
  algebra : Type u
  topology : TopologicalSpace algebra
  algebraStructure : Algebra ℝ algebra
  continuousFunctionalCalculus : Prop
  spectralMapping : Prop
  holomorphicFunctionalCalculus : Prop

structure FunctionalCalculusEvidence (P : FunctionalCalculusPackage) where
  continuousFunctionalCalculusClosed : P.continuousFunctionalCalculus
  spectralMappingClosed : P.spectralMapping
  holomorphicFunctionalCalculusClosed : P.holomorphicFunctionalCalculus

def FunctionalCalculusClosed (P : FunctionalCalculusPackage) : Prop :=
  P.continuousFunctionalCalculus ∧ P.spectralMapping ∧ P.holomorphicFunctionalCalculus

theorem functional_calculus_closed_from_evidence
    (P : FunctionalCalculusPackage) (E : FunctionalCalculusEvidence P) :
    FunctionalCalculusClosed P := by
  exact And.intro E.continuousFunctionalCalculusClosed
    (And.intro E.spectralMappingClosed E.holomorphicFunctionalCalculusClosed)

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse
