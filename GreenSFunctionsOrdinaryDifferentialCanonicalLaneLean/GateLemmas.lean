import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

def gateClosed (A : GreenAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GreenAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
