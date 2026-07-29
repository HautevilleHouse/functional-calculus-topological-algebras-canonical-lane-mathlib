import canonicalLaneMathlib.AdmissibleClass
import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.TopologicalAlgebraPackage

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure InvariancePrinciplePackage {A : TopologicalAlgebraPackage} where
  invarianceProperty : Prop
  invarianceProof : invarianceProperty
  stabilityProperty : Prop
  stabilityProof : stabilityProperty

structure InvariancePrincipleEvidence {A : TopologicalAlgebraPackage}
    (I : InvariancePrinciplePackage A) where
  invariancePropertyClosed : I.invarianceProperty
  stabilityPropertyClosed : I.stabilityProperty

def InvariancePrincipleClosed {A : TopologicalAlgebraPackage}
    (I : InvariancePrinciplePackage A) : Prop :=
  I.invarianceProperty ∧ I.stabilityProperty

theorem invariance_principle_closed_from_evidence
    {A : TopologicalAlgebraPackage} (I : InvariancePrinciplePackage A)
    (E : InvariancePrincipleEvidence I) : InvariancePrincipleClosed I := by
  exact And.intro E.invariancePropertyClosed E.stabilityPropertyClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse