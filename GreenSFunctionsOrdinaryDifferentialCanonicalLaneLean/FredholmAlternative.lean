import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreenSFunctionConstruction

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure FredholmAlternativePackage where
  compactOperator : Prop
  indexZero : Prop
  solvabilityCondition : Prop
  greenSFunctionExistenceEquivalence : Prop

structure FredholmAlternativeEvidence (F : FredholmAlternativePackage) where
  compactOperatorClosed : F.compactOperator
  indexZeroClosed : F.indexZero
  solvabilityConditionClosed : F.solvabilityCondition
  greenSFunctionExistenceEquivalenceClosed : F.greenSFunctionExistenceEquivalence

def FredholmAlternativeClosed (F : FredholmAlternativePackage) : Prop :=
  F.compactOperator ∧ F.indexZero ∧ F.solvabilityCondition ∧ F.greenSFunctionExistenceEquivalence

theorem fredholm_alternative_closed_from_evidence (F : FredholmAlternativePackage) (E : FredholmAlternativeEvidence F) : FredholmAlternativeClosed F := by
  exact And.intro E.compactOperatorClosed (And.intro E.indexZeroClosed (And.intro E.solvabilityConditionClosed E.greenSFunctionExistenceEquivalenceClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse