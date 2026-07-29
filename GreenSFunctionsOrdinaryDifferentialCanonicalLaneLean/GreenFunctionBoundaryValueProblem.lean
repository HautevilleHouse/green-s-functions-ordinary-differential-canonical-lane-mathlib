import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenFunctionBVP where
  domain : Type u
  domainTopology : TopologicalSpace domain
  differentialOperator : Type v
  boundaryOperator : Type w
  kernelFunction : Type x
  wellPosed : Prop
  solutionIntegralRep : Prop

structure GreenFunctionBVPEvidence (G : GreenFunctionBVP) where
  wellPosedClosed : G.wellPosed
  solutionIntegralRepClosed : G.solutionIntegralRep

def GreenFunctionBVPClosed (G : GreenFunctionBVP) : Prop :=
  G.wellPosed ∧ G.solutionIntegralRep

theorem green_function_bvp_closed_from_evidence
    (G : GreenFunctionBVP) (E : GreenFunctionBVPEvidence G) :
    GreenFunctionBVPClosed G := by
  exact And.intro E.wellPosedClosed E.solutionIntegralRepClosed

end GreenFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
