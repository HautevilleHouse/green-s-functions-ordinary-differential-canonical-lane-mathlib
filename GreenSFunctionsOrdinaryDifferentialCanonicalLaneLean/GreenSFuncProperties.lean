import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreensFunctionODE

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenSFuncPropertiesPackage {G : GreensFunctionODEPackage} (P : G.greensFunctionExistence) where
  jumpDiscontinuity : Prop
  derivativeRelation : Prop
  eigenvalueExpansion : Prop
  reciprocalEigenvalueKernel : Prop

structure GreenSFuncPropertiesEvidence {G : GreensFunctionODEPackage}
    {P : G.greensFunctionExistence} (S : GreenSFuncPropertiesPackage P) where
  jumpDiscontinuityClosed : S.jumpDiscontinuity
  derivativeRelationClosed : S.derivativeRelation
  eigenvalueExpansionClosed : S.eigenvalueExpansion
  reciprocalEigenvalueKernelClosed : S.reciprocalEigenvalueKernel

def GreenSFuncPropertiesClosed {G : GreensFunctionODEPackage}
    {P : G.greensFunctionExistence} (S : GreenSFuncPropertiesPackage P) : Prop :=
  S.jumpDiscontinuity ∧ S.derivativeRelation ∧ S.eigenvalueExpansion ∧ S.reciprocalEigenvalueKernel

theorem greens_func_properties_closed_from_evidence {G : GreensFunctionODEPackage}
    {P : G.greensFunctionExistence} (S : GreenSFuncPropertiesPackage P)
    (E : GreenSFuncPropertiesEvidence S) : GreenSFuncPropertiesClosed S := by
  exact And.intro E.jumpDiscontinuityClosed
    (And.intro E.derivativeRelationClosed
      (And.intro E.eigenvalueExpansionClosed E.reciprocalEigenvalueKernelClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
