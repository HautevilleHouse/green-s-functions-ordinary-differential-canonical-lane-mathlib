import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure FundamentalSolutionJumpPackage {G : GreenFunctionPDEPackage}
    {S : SpectralRepresentationPackage G} {C : GreenFunctionConstructionPackage G S}
    {SL : SturmLiouvillePackage G S C} where
  jumpConditionDerived : Prop
  solutionMatching : Prop
  wronskianNonzero : Prop
  greenFunctionContinuity : Prop

structure FundamentalSolutionJumpEvidence {G : GreenFunctionPDEPackage}
    {S : SpectralRepresentationPackage G} {C : GreenFunctionConstructionPackage G S}
    {SL : SturmLiouvillePackage G S C} (FJ : FundamentalSolutionJumpPackage G S C SL) where
  jumpConditionDerivedClosed : FJ.jumpConditionDerived
  solutionMatchingClosed : FJ.solutionMatching
  wronskianNonzeroClosed : FJ.wronskianNonzero
  greenFunctionContinuityClosed : FJ.greenFunctionContinuity

def FundamentalSolutionJumpClosed {G : GreenFunctionPDEPackage}
    {S : SpectralRepresentationPackage G} {C : GreenFunctionConstructionPackage G S}
    {SL : SturmLiouvillePackage G S C} (FJ : FundamentalSolutionJumpPackage G S C SL) : Prop :=
  FJ.jumpConditionDerived ∧ FJ.solutionMatching ∧ FJ.wronskianNonzero ∧ FJ.greenFunctionContinuity

theorem fundamental_solution_jump_closed_from_evidence {G : GreenFunctionPDEPackage}
    {S : SpectralRepresentationPackage G} {C : GreenFunctionConstructionPackage G S}
    {SL : SturmLiouvillePackage G S C} (FJ : FundamentalSolutionJumpPackage G S C SL)
    (E : FundamentalSolutionJumpEvidence FJ) : FundamentalSolutionJumpClosed FJ :=
  And.intro E.jumpConditionDerivedClosed (And.intro E.solutionMatchingClosed
    (And.intro E.wronskianNonzeroClosed E.greenFunctionContinuityClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
