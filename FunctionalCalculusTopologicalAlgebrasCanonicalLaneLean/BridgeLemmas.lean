import FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end FunctionalCalculusTopologicalAlgebrasCanonicalLaneLean
end HautevilleHouse