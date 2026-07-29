import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenFunctionPDEPackage where
  domain : Type u
  operator : Type v
  sourceTerm : Prop
  boundaryCondition : Prop
  fundamentalSolution : Prop
  greenFunctionExists : Prop

structure GreenFunctionPDEEvidence (G : GreenFunctionPDEPackage) where
  sourceTermClosed : G.sourceTerm
  boundaryConditionClosed : G.boundaryCondition
  fundamentalSolutionClosed : G.fundamentalSolution
  greenFunctionExistsClosed : G.greenFunctionExists

def GreenFunctionPDEClosed (G : GreenFunctionPDEPackage) : Prop :=
  G.sourceTerm ∧ G.boundaryCondition ∧ G.fundamentalSolution ∧ G.greenFunctionExists

theorem green_function_pde_closed_from_evidence (G : GreenFunctionPDEPackage)
    (E : GreenFunctionPDEEvidence G) : GreenFunctionPDEClosed G :=
  And.intro E.sourceTermClosed (And.intro E.boundaryConditionClosed
    (And.intro E.fundamentalSolutionClosed E.greenFunctionExistsClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
