import canonicalLaneMathlib.AdmissibleClass
import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.TopologicalAlgebraPackage
import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.FunctionalCalculusPackage

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure DualityPackage {A : TopologicalAlgebraPackage} {F : FunctionalCalculusPackage} where
  dualSpace : Type u
  pairing : A.algebra → dualSpace → ℂ
  dualPairingContinuous : Prop
  dualityTheorem : Prop

structure DualityEvidence {A : TopologicalAlgebraPackage} {F : FunctionalCalculusPackage}
    (D : DualityPackage A F) where
  dualPairingContinuousClosed : D.dualPairingContinuous
  dualityTheoremClosed : D.dualityTheorem

def DualityClosed {A : TopologicalAlgebraPackage} {F : FunctionalCalculusPackage}
    (D : DualityPackage A F) : Prop :=
  D.dualPairingContinuous ∧ D.dualityTheorem

theorem duality_closed_from_evidence {A : TopologicalAlgebraPackage}
    {F : FunctionalCalculusPackage} (D : DualityPackage A F)
    (E : DualityEvidence D) : DualityClosed D := by
  exact And.intro E.dualPairingContinuousClosed E.dualityTheoremClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse