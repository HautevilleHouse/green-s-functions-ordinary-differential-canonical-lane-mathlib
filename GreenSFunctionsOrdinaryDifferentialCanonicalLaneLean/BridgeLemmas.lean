import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

def bridgeClosed (A : GreenAdmissibleClass) : Prop :=
  GreenWitnessClosed A.object

theorem bridge_from_admissible_class (A : GreenAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
