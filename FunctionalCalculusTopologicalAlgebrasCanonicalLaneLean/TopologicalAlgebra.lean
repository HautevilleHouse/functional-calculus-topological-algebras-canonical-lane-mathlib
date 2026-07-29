import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure TopologicalAlgebraPackage where
  algebra : Type u
  topology : TopologicalSpace algebra
  multiplicationContinuous : Prop
  additionContinuous : Prop
  scalarMultiplicationContinuous : Prop
  topologicalAlgebraClosed : multiplicationContinuous ∧ additionContinuous ∧ scalarMultiplicationContinuous

structure TopologicalAlgebraEvidence (G : TopologicalAlgebraPackage) where
  multiplicationClosed : G.multiplicationContinuous
  additionClosed : G.additionContinuous
  scalarClosed : G.scalarMultiplicationContinuous

theorem topological_algebra_closed_from_evidence (G : TopologicalAlgebraPackage) (E : TopologicalAlgebraEvidence G) :
    G.topologicalAlgebraClosed :=
  And.intro E.multiplicationClosed (And.intro E.additionClosed E.scalarClosed)

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse