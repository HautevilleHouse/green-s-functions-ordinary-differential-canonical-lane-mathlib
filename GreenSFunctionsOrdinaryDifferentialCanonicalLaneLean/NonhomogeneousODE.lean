import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreensFunctionODE
import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.BoundaryValueProblem

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure NonhomogeneousODEPackage {G : GreensFunctionODEPackage}
    (P : BoundaryValueProblemPackage (h := G.boundaryConditions)) where
  forcingTerm : Type
  greensFunctionSolution : Prop
  solutionUniqueness : Prop
  superpositionPrinciple : Prop

structure NonhomogeneousODEEvidence {G : GreensFunctionODEPackage}
    {P : BoundaryValueProblemPackage (h := G.boundaryConditions)}
    (N : NonhomogeneousODEPackage P) where
  greensFunctionSolutionClosed : N.greensFunctionSolution
  solutionUniquenessClosed : N.solutionUniqueness
  superpositionPrincipleClosed : N.superpositionPrinciple

def NonhomogeneousODEClosed {G : GreensFunctionODEPackage}
    {P : BoundaryValueProblemPackage (h := G.boundaryConditions)}
    (N : NonhomogeneousODEPackage P) : Prop :=
  N.greensFunctionSolution ∧ N.solutionUniqueness ∧ N.superpositionPrinciple

theorem nonhomogeneous_ode_closed_from_evidence {G : GreensFunctionODEPackage}
    {P : BoundaryValueProblemPackage (h := G.boundaryConditions)}
    (N : NonhomogeneousODEPackage P) (E : NonhomogeneousODEEvidence N) :
    NonhomogeneousODEClosed N := by
  exact And.intro E.greensFunctionSolutionClosed
    (And.intro E.solutionUniquenessClosed E.superpositionPrincipleClosed)

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
