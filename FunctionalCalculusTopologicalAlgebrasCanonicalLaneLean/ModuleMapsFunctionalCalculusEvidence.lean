import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

structure ModuleMapsFunctionalCalculusEvidence where
  moduleActionFunctionalCalculus : Prop
  moduleMapContinuity : Prop
  moduleActionFunctionalCalculusClosed : moduleActionFunctionalCalculus
  moduleMapContinuityClosed : moduleMapContinuity

def ModuleMapsFunctionalCalculusClosed (E : ModuleMapsFunctionalCalculusEvidence) : Prop :=
  E.moduleActionFunctionalCalculus ∧ E.moduleMapContinuity

theorem module_maps_functional_calculus_closed_from_evidence (E : ModuleMapsFunctionalCalculusEvidence) : ModuleMapsFunctionalCalculusClosed E := by
  exact And.intro E.moduleActionFunctionalCalculusClosed E.moduleMapContinuityClosed

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse