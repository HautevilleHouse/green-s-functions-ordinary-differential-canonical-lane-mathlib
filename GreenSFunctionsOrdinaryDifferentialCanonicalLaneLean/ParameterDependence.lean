import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenFunctionsOrdinaryDifferentialCanonicalLaneLean

structure ParameterDependence where
  baseGreenFunction : Type u
  parameterSpace : Type v
  variationEquation : Prop
  analyticDependence : Prop
  poleStructure : Prop
  asymptoticExpansion : Prop

structure ParameterDependenceEvidence (P : ParameterDependence) where
  variationEquationClosed : P.variationEquation
  analyticDependenceClosed : P.analyticDependence
  poleStructureClosed : P.poleStructure
  asymptoticExpansionClosed : P.asymptoticExpansion

def ParameterDependenceClosed (P : ParameterDependence) : Prop :=
  P.variationEquation ∧ P.analyticDependence ∧
  P.poleStructure ∧ P.asymptoticExpansion

theorem parameter_dependence_closed_from_evidence
    (P : ParameterDependence) (E : ParameterDependenceEvidence P) :
    ParameterDependenceClosed P := by
  exact And.intro E.variationEquationClosed
    (And.intro E.analyticDependenceClosed
      (And.intro E.poleStructureClosed E.asymptoticExpansionClosed))

end GreenFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
