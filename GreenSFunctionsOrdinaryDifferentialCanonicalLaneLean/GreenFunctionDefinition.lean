import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenFunctionPackage where
  domain : Type u
  boundaryConditions : Prop
  linearOperator : Type v
  kernelSmoothness : Prop
  selfAdjoint : Prop
  eigenvalueExpansion : Prop

structure GreenFunctionEvidence (G : GreenFunctionPackage) where
  boundaryConditionsClosed : G.boundaryConditions
  kernelSmoothnessClosed : G.kernelSmoothness
  selfAdjointClosed : G.selfAdjoint
  eigenvalueExpansionClosed : G.eigenvalueExpansion

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.boundaryConditions ∧ G.kernelSmoothness ∧ G.selfAdjoint ∧ G.eigenvalueExpansion

theorem green_function_closed_from_evidence (G : GreenFunctionPackage) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.boundaryConditionsClosed
    (And.intro E.kernelSmoothnessClosed
      (And.intro E.selfAdjointClosed E.eigenvalueExpansionClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
