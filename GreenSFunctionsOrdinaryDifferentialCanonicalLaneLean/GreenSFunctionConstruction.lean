import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenSFunctionPackage where
  linearOperator : Prop
  boundaryConditions : Prop
  fundamentalSolution : Prop
  continuityProperties : Prop
  symmetryProperty : Prop

structure GreenSFunctionEvidence (G : GreenSFunctionPackage) where
  linearOperatorClosed : G.linearOperator
  boundaryConditionsClosed : G.boundaryConditions
  fundamentalSolutionClosed : G.fundamentalSolution
  continuityPropertiesClosed : G.continuityProperties
  symmetryPropertyClosed : G.symmetryProperty

def GreenSFunctionClosed (G : GreenSFunctionPackage) : Prop :=
  G.linearOperator ∧ G.boundaryConditions ∧ G.fundamentalSolution ∧ G.continuityProperties ∧ G.symmetryProperty

theorem green_s_function_closed_from_evidence (G : GreenSFunctionPackage) (E : GreenSFunctionEvidence G) : GreenSFunctionClosed G := by
  exact And.intro E.linearOperatorClosed (And.intro E.boundaryConditionsClosed (And.intro E.fundamentalSolutionClosed (And.intro E.continuityPropertiesClosed E.symmetryPropertyClosed)))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse