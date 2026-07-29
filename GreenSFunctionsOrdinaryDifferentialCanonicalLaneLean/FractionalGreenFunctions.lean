import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenFunctionsOrdinaryDifferentialCanonicalLaneLean

structure FractionalGreenFunction where
  fractionalOrder : ℝ
  operator : Type u
  integralKernel : Type v
  regularityResults : Prop
  scalingProperties : Prop
  positivityPreservation : Prop
  markovProperty : Prop

structure FractionalGreenFunctionEvidence (F : FractionalGreenFunction) where
  regularityResultsClosed : F.regularityResults
  scalingPropertiesClosed : F.scalingProperties
  positivityPreservationClosed : F.positivityPreservation
  markovPropertyClosed : F.markovProperty

def FractionalGreenFunctionClosed (F : FractionalGreenFunction) : Prop :=
  F.regularityResults ∧ F.scalingProperties ∧
  F.positivityPreservation ∧ F.markovProperty

theorem fractional_green_function_closed_from_evidence
    (F : FractionalGreenFunction) (E : FractionalGreenFunctionEvidence F) :
    FractionalGreenFunctionClosed F := by
  exact And.intro E.regularityResultsClosed
    (And.intro E.scalingPropertiesClosed
      (And.intro E.positivityPreservationClosed E.markovPropertyClosed))

end GreenFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
