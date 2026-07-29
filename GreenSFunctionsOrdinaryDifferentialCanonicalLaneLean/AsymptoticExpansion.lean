import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreenFunctionDefinition

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure AsymptoticExpansionPackage (G : GreenFunctionPackage) where
  expansionAtSingularity : Prop
  leadingOrderTerm : Prop
  remainderEstimate : Prop
  uniformConvergence : Prop
  connectionToWronskian : Prop

structure AsymptoticExpansionEvidence {G : GreenFunctionPackage}
    (A : AsymptoticExpansionPackage G) where
  expansionAtSingularityClosed : A.expansionAtSingularity
  leadingOrderTermClosed : A.leadingOrderTerm
  remainderEstimateClosed : A.remainderEstimate
  uniformConvergenceClosed : A.uniformConvergence
  connectionToWronskianClosed : A.connectionToWronskian

def AsymptoticExpansionClosed {G : GreenFunctionPackage}
    (A : AsymptoticExpansionPackage G) : Prop :=
  A.expansionAtSingularity ∧ A.leadingOrderTerm ∧
  A.remainderEstimate ∧ A.uniformConvergence ∧ A.connectionToWronskian

theorem asymptotic_expansion_closed_from_evidence {G : GreenFunctionPackage}
    (A : AsymptoticExpansionPackage G) (E : AsymptoticExpansionEvidence A) :
    AsymptoticExpansionClosed A := by
  exact And.intro E.expansionAtSingularityClosed
    (And.intro E.leadingOrderTermClosed
      (And.intro E.remainderEstimateClosed
        (And.intro E.uniformConvergenceClosed E.connectionToWronskianClosed)))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
