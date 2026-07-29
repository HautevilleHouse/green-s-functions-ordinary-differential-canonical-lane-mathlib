import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenFunctionConstruction where
  operator : Type u
  fundamentalSolution : Type v
  boundaryData : Type w
  continuityProperties : Prop
  jumpConditions : Prop
  symmetryProperty : Prop
  existenceProof : Prop
  uniquenessProof : Prop

structure GreenFunctionConstructionEvidence (C : GreenFunctionConstruction) where
  continuityPropertiesClosed : C.continuityProperties
  jumpConditionsClosed : C.jumpConditions
  symmetryPropertyClosed : C.symmetryProperty
  existenceProofClosed : C.existenceProof
  uniquenessProofClosed : C.uniquenessProof

def GreenFunctionConstructionClosed (C : GreenFunctionConstruction) : Prop :=
  C.continuityProperties ∧ C.jumpConditions ∧
  C.symmetryProperty ∧ C.existenceProof ∧ C.uniquenessProof

theorem green_function_construction_closed_from_evidence
    (C : GreenFunctionConstruction) (E : GreenFunctionConstructionEvidence C) :
    GreenFunctionConstructionClosed C := by
  exact And.intro E.continuityPropertiesClosed
    (And.intro E.jumpConditionsClosed
      (And.intro E.symmetryPropertyClosed
        (And.intro E.existenceProofClosed E.uniquenessProofClosed)))

end GreenFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
