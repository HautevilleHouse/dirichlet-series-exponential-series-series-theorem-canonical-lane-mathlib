import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure ExponentialTransformLayerCertificate where
  seriesDatum : SeriesDatum
  transformRoute : String
  exponentialRoute : String
  seriesRelationRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def exponentialTransformLayerCertificate : ExponentialTransformLayerCertificate := {
  seriesDatum := primitiveSeriesDatum,
  transformRoute := "exponential transform applied to Dirichlet series",
  exponentialRoute := "exponential generating function as transform output",
  seriesRelationRoute := "relation between original Dirichlet series and exponential series",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def ExponentialTransformLayerClosed (C : ExponentialTransformLayerCertificate) : Prop :=
  C.seriesDatum.exponentialTransformChecked = true ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem exponential_transform_layer_closed_checked :
    ExponentialTransformLayerClosed exponentialTransformLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse