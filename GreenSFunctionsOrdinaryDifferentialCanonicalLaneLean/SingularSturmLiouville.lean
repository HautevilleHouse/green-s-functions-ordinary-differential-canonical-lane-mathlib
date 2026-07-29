import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreenSFunctionConstruction

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure SingularSturmLiouvillePackage {G : GreenSFunctionPackage} where
  selfAdjointOperator : Prop
  eigenfunctionExpansion : Prop
  spectralMeasure : Prop
  greenSFunctionSpectralRep : Prop

structure SingularSturmLiouvilleEvidence {G : GreenSFunctionPackage} (S : SingularSturmLiouvillePackage G) where
  selfAdjointOperatorClosed : S.selfAdjointOperator
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  spectralMeasureClosed : S.spectralMeasure
  greenSFunctionSpectralRepClosed : S.greenSFunctionSpectralRep

def SingularSturmLiouvilleClosed {G : GreenSFunctionPackage} (S : SingularSturmLiouvillePackage G) : Prop :=
  S.selfAdjointOperator ∧ S.eigenfunctionExpansion ∧ S.spectralMeasure ∧ S.greenSFunctionSpectralRep

theorem singular_sturm_liouville_closed_from_evidence {G : GreenSFunctionPackage} (S : SingularSturmLiouvillePackage G) (E : SingularSturmLiouvilleEvidence S) : SingularSturmLiouvilleClosed S := by
  exact And.intro E.selfAdjointOperatorClosed (And.intro E.eigenfunctionExpansionClosed (And.intro E.spectralMeasureClosed E.greenSFunctionSpectralRepClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse