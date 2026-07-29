import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure CStarAlgebraPackage where
  algebra : Type u
  topology : TopologicalSpace algebra
  norm : algebra → ℝ
  involution : algebra → algebra
  CStarIdentity : ∀ x : algebra, ‖x⋆ * x‖ = ‖x‖ ^ 2
  completeness : Prop
  spectralRadiusFormula : Prop

structure CStarAlgebraEvidence (G : CStarAlgebraPackage) where
  CStarIdentityClosed : ∀ x : G.algebra, ‖x⋆ * x‖ = ‖x‖ ^ 2
  completenessClosed : G.completeness
  spectralRadiusClosed : G.spectralRadiusFormula

def CStarAlgebraClosed (G : CStarAlgebraPackage) : Prop :=
  (∀ x : G.algebra, ‖x⋆ * x‖ = ‖x‖ ^ 2) ∧ G.completeness ∧ G.spectralRadiusFormula

theorem cstar_algebra_closed_from_evidence (G : CStarAlgebraPackage) (E : CStarAlgebraEvidence G) :
    CStarAlgebraClosed G :=
  And.intro E.CStarIdentityClosed (And.intro E.completenessClosed E.spectralRadiusClosed)

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse