import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreensFunctionODEPackage where
  domain : Type
  sturmLiouvilleOperator : Prop
  boundaryConditions : Prop
  spectralMeasure : Type
  greensFunctionExistence : Prop
  symmetryProperty : Prop
  continuityProperty : Prop

structure GreensFunctionODEEvidence (G : GreensFunctionODEPackage) where
  sturmLiouvilleOperatorClosed : G.sturmLiouvilleOperator
  boundaryConditionsClosed : G.boundaryConditions
  greensFunctionExistenceClosed : G.greensFunctionExistence
  symmetryPropertyClosed : G.symmetryProperty
  continuityPropertyClosed : G.continuityProperty

def GreensFunctionODEClosed (G : GreensFunctionODEPackage) : Prop :=
  G.sturmLiouvilleOperator ∧ G.boundaryConditions ∧ G.greensFunctionExistence ∧
  G.symmetryProperty ∧ G.continuityProperty

theorem greens_function_ode_closed_from_evidence (G : GreensFunctionODEPackage)
    (E : GreensFunctionODEEvidence G) : GreensFunctionODEClosed G := by
  exact And.intro E.sturmLiouvilleOperatorClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.greensFunctionExistenceClosed
        (And.intro E.symmetryPropertyClosed E.continuityPropertyClosed)))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
