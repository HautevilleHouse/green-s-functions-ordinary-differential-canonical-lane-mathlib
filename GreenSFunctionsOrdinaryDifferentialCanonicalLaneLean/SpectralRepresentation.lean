import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean

structure SpectralRepresentationPackage {G : GreenFunctionPDEPackage} where
  eigenfunctionExpansion : Prop
  eigenfunctionBasis : Prop
  spectralMeasure : Prop
  convergenceInMean : Prop

structure SpectralRepresentationEvidence {G : GreenFunctionPDEPackage}
    (S : SpectralRepresentationPackage G) where
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  eigenfunctionBasisClosed : S.eigenfunctionBasis
  spectralMeasureClosed : S.spectralMeasure
  convergenceInMeanClosed : S.convergenceInMean

def SpectralRepresentationClosed {G : GreenFunctionPDEPackage}
    (S : SpectralRepresentationPackage G) : Prop :=
  S.eigenfunctionExpansion ∧ S.eigenfunctionBasis ∧ S.spectralMeasure ∧ S.convergenceInMean

theorem spectral_representation_closed_from_evidence {G : GreenFunctionPDEPackage}
    (S : SpectralRepresentationPackage G) (E : SpectralRepresentationEvidence S) :
    SpectralRepresentationClosed S :=
  And.intro E.eigenfunctionExpansionClosed (And.intro E.eigenfunctionBasisClosed
    (And.intro E.spectralMeasureClosed E.convergenceInMeanClosed))

end GreenSFunctionsOrdinaryDifferentialCanonicalLaneLean
end HautevilleHouse
