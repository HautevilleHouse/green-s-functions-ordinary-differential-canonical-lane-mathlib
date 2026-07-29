import GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean.GreensFunctionODE

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure IntegralKernelPackage (G : GreensFunctionODEPackage) where
  kernelReproducesFunction : Prop
  kernelFromEigenfunctionExpansion : Prop
  kernelSymmetry : Prop
  kernelContinuityExterior : Prop

structure IntegralKernelEvidence (G : GreensFunctionODEPackage)
    (K : IntegralKernelPackage G) where
  kernelReproducesFunctionClosed : K.kernelReproducesFunction
  kernelFromEigenfunctionExpansionClosed : K.kernelFromEigenfunctionExpansion
  kernelSymmetryClosed : K.kernelSymmetry
  kernelContinuityExteriorClosed : K.kernelContinuityExterior

def IntegralKernelClosed (G : GreensFunctionODEPackage)
    (K : IntegralKernelPackage G) : Prop :=
  K.kernelReproducesFunction ∧ K.kernelFromEigenfunctionExpansion ∧
  K.kernelSymmetry ∧ K.kernelContinuityExterior

theorem integral_kernel_closed_from_evidence (G : GreensFunctionODEPackage)
    (K : IntegralKernelPackage G) (E : IntegralKernelEvidence G K) :
    IntegralKernelClosed G K := by
  exact And.intro E.kernelReproducesFunctionClosed
    (And.intro E.kernelFromEigenfunctionExpansionClosed
      (And.intro E.kernelSymmetryClosed E.kernelContinuityExteriorClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
