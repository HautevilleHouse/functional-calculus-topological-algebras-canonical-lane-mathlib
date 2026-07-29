import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure TopologicalAlgebraPackage where
  algebra : Type u
  topology : TopologicalSpace algebra
  continuousAddition : Prop
  continuousMultiplication : Prop
  continuousScalar : Prop

structure TopologicalAlgebraEvidence (A : TopologicalAlgebraPackage) where
  continuousAdditionClosed : A.continuousAddition
  continuousMultiplicationClosed : A.continuousMultiplication
  continuousScalarClosed : A.continuousScalar

def TopologicalAlgebraClosed (A : TopologicalAlgebraPackage) : Prop :=
  A.continuousAddition ∧ A.continuousMultiplication ∧ A.continuousScalar

theorem topological_algebra_closed_from_evidence (A : TopologicalAlgebraPackage)
    (E : TopologicalAlgebraEvidence A) : TopologicalAlgebraClosed A := by
  exact And.intro E.continuousAdditionClosed
    (And.intro E.continuousMultiplicationClosed E.continuousScalarClosed)

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse