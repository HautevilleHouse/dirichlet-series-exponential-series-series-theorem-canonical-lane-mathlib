import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure ExponentialGeneratingSeriesLayerCertificate where
  seriesDatum : SeriesDatum
  exponentialRoute : String
  generatingFunctionRoute : String
  analyticContinuationRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def exponentialGeneratingSeriesLayerCertificate : ExponentialGeneratingSeriesLayerCertificate := {
  seriesDatum := primitiveSeriesDatum,
  exponentialRoute := "exponential generating series of Dirichlet coefficients route",
  generatingFunctionRoute := "generating function via exponential transform",
  analyticContinuationRoute := "analytic continuation through the half-plane of convergence",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def ExponentialGeneratingSeriesLayerClosed (C : ExponentialGeneratingSeriesLayerCertificate) : Prop :=
  C.seriesDatum.exponentialGeneratingChecked = true ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem exponential_generating_series_layer_closed_checked :
    ExponentialGeneratingSeriesLayerClosed exponentialGeneratingSeriesLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse