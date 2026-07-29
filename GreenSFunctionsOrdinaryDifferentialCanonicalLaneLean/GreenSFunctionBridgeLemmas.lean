import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GreenSFunctionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.satisfiesPDE

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse