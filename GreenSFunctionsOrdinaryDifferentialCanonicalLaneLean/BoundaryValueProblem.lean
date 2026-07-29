import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreensFunctionODE

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure BoundaryValueProblemPackage {G : GreensFunctionODEPackage} (B : G.boundaryConditions) where
  selfAdjointBC : Prop
  regularBC : Prop
  inhomogeneousSolutionFormula : Prop
  componentwiseUniqueness : Prop

structure BoundaryValueProblemEvidence {G : GreensFunctionODEPackage}
    {B : G.boundaryConditions} (P : BoundaryValueProblemPackage B) where
  selfAdjointBCClosed : P.selfAdjointBC
  regularBCClosed : P.regularBC
  inhomogeneousSolutionFormulaClosed : P.inhomogeneousSolutionFormula
  componentwiseUniquenessClosed : P.componentwiseUniqueness

def BoundaryValueProblemClosed {G : GreensFunctionODEPackage}
    {B : G.boundaryConditions} (P : BoundaryValueProblemPackage B) : Prop :=
  P.selfAdjointBC ∧ P.regularBC ∧ P.inhomogeneousSolutionFormula ∧ P.componentwiseUniqueness

theorem boundary_value_problem_closed_from_evidence {G : GreensFunctionODEPackage}
    {B : G.boundaryConditions} (P : BoundaryValueProblemPackage B)
    (E : BoundaryValueProblemEvidence P) : BoundaryValueProblemClosed P := by
  exact And.intro E.selfAdjointBCClosed
    (And.intro E.regularBCClosed
      (And.intro E.inhomogeneousSolutionFormulaClosed E.componentwiseUniquenessClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
