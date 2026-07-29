import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenFunctionsOrdinaryDifferentialCanonicalLaneLean

structure SturmLiouvilleProblem where
  interval : Set ℝ
  coefficientP : ℝ → ℝ
  coefficientQ : ℝ → ℝ
  weightFunction : ℝ → ℝ
  boundaryConditions : Prop
  eigenvalueProblem : Prop
  eigenfunctionExpansion : Prop
  greenFunctionRepresentation : Prop

structure SturmLiouvilleEvidence (S : SturmLiouvilleProblem) where
  boundaryConditionsClosed : S.boundaryConditions
  eigenvalueProblemClosed : S.eigenvalueProblem
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  greenFunctionRepresentationClosed : S.greenFunctionRepresentation

def SturmLiouvilleClosed (S : SturmLiouvilleProblem) : Prop :=
  S.boundaryConditions ∧ S.eigenvalueProblem ∧
  S.eigenfunctionExpansion ∧ S.greenFunctionRepresentation

theorem sturm_liouville_closed_from_evidence
    (S : SturmLiouvilleProblem) (E : SturmLiouvilleEvidence S) :
    SturmLiouvilleClosed S := by
  exact And.intro E.boundaryConditionsClosed
    (And.intro E.eigenvalueProblemClosed
      (And.intro E.eigenfunctionExpansionClosed E.greenFunctionRepresentationClosed))

end GreenFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
