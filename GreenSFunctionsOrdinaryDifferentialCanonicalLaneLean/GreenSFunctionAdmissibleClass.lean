import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenSFunctionObject where
  domain : Type u
  topology : TopologicalSpace domain
  linearOperator : (domain → ℝ) → (domain → ℝ)
  fundamentalSolution : domain → domain → ℝ
  satisfiesPDE : Prop
  boundaryConditions : Prop

structure AdmissibleClass where
  object : GreenSFunctionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GreenSFunctionClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse