import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure GreenAdmittedObject where
  greenFunctionPackage : GreenFunctionPackage
  sturmLiouvillePackage : SturmLiouvillePackage greenFunctionPackage
  boundaryValueProblemPackage : BoundaryValueProblemPackage greenFunctionPackage
  asymptoticExpansionPackage : AsymptoticExpansionPackage greenFunctionPackage
  conclusion : GreenFunctionClosed greenFunctionPackage ∧
               SturmLiouvilleClosed sturmLiouvillePackage ∧
               BoundaryValueProblemClosed boundaryValueProblemPackage ∧
               AsymptoticExpansionClosed asymptoticExpansionPackage

structure GreenAdmissibleClass where
  object : GreenAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GreenWitnessClosed (O : GreenAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : GreenAdmissibleClass) : Prop :=
  GreenWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
