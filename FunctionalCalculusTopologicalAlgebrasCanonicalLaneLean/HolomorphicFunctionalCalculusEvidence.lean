import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure HolomorphicFunctionalCalculusEvidence where
  functionalCalculusExists : Prop
  spectralMappingTheorem : Prop
  functionalCalculusExistsClosed : functionalCalculusExists
  spectralMappingTheoremClosed : spectralMappingTheorem

def HolomorphicFunctionalCalculusClosed (E : HolomorphicFunctionalCalculusEvidence) : Prop :=
  E.functionalCalculusExists ∧ E.spectralMappingTheorem

theorem holomorphic_functional_calculus_closed_from_evidence (E : HolomorphicFunctionalCalculusEvidence) : HolomorphicFunctionalCalculusClosed E := by
  exact And.intro E.functionalCalculusExistsClosed E.spectralMappingTheoremClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse