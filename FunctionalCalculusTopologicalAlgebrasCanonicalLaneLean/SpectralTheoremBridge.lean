import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | FunctionalCalculusAdmittedObject.mk _ _ _ fc st _ => fc ∧ st

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with ⟨alg, top, ta, fc, st, conc⟩
  exact conc

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse