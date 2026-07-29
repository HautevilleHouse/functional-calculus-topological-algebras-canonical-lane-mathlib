import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure NonunitalFunctionalCalculusEvidence where
  nonunitalFunctionalCalculus : Prop
  approximateIdentity : Prop
  nonunitalFunctionalCalculusClosed : nonunitalFunctionalCalculus
  approximateIdentityClosed : approximateIdentity

def NonunitalFunctionalCalculusClosed (E : NonunitalFunctionalCalculusEvidence) : Prop :=
  E.nonunitalFunctionalCalculus ∧ E.approximateIdentity

theorem nonunital_functional_calculus_closed_from_evidence (E : NonunitalFunctionalCalculusEvidence) : NonunitalFunctionalCalculusClosed E := by
  exact And.intro E.nonunitalFunctionalCalculusClosed E.approximateIdentityClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse