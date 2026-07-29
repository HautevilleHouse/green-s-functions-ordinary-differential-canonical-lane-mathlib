import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreenSFunctionGateLemmas

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

def ConstrainedGreenSFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_green_s_function_endgame (A : AdmissibleClass) :
    ConstrainedGreenSFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse