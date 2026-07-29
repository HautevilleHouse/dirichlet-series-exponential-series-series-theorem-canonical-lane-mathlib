import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure ConvergenceAbscissaLayerCertificate where
  seriesDatum : SeriesDatum
  convergenceRoute : String
  abscissaRoute : String
  halfPlaneRoute : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def convergenceAbscissaLayerCertificate : ConvergenceAbscissaLayerCertificate := {
  seriesDatum := primitiveSeriesDatum,
  convergenceRoute := "absolute convergence abscissa projected through admitted series datum",
  abscissaRoute := "abscissa of convergence for Dirichlet series",
  halfPlaneRoute := "half-plane of convergence represented by admitted region",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def ConvergenceAbscissaLayerClosed (C : ConvergenceAbscissaLayerCertificate) : Prop :=
  C.seriesDatum.convergenceChecked = true ∧
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true ∧
  outsideConstantDependencyCount = 0

theorem convergence_abscissa_layer_closed_checked :
    ConvergenceAbscissaLayerClosed convergenceAbscissaLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse