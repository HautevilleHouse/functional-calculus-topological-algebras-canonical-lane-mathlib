import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure TopologicalInvariancePackage where
  algebra : Type u
  topology : TopologicalSpace algebra
  algebraStructure : Algebra ℝ algebra
  spectralMappingInvariant : Prop
  functionalCalculusUnderHomomorphism : Prop

structure TopologicalInvarianceEvidence (I : TopologicalInvariancePackage) where
  spectralMappingInvariantClosed : I.spectralMappingInvariant
  functionalCalculusUnderHomomorphismClosed : I.functionalCalculusUnderHomomorphism

def TopologicalInvarianceClosed (I : TopologicalInvariancePackage) : Prop :=
  I.spectralMappingInvariant ∧ I.functionalCalculusUnderHomomorphism

theorem topological_invariance_closed_from_evidence
    (I : TopologicalInvariancePackage) (E : TopologicalInvarianceEvidence I) :
    TopologicalInvarianceClosed I := by
  exact And.intro E.spectralMappingInvariantClosed E.functionalCalculusUnderHomomorphismClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse
