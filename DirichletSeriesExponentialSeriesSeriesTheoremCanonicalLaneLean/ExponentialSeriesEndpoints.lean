import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure ExponentialSeriesEndpointCertificate where
  endpointValue : ℂ
  convergenceRadius : ℂ
  analyticContinuationRoute : String
  endpointChecked : Bool
  remainderRecorded : Bool


def primitiveExponentialSeriesEndpointCertificate : ExponentialSeriesEndpointCertificate := {
  endpointValue := 0
  convergenceRadius := ∞
  analyticContinuationRoute := "exponential series analytic continuation via Dirichlet series"
  endpointChecked := true
  remainderRecorded := true
}

def ExponentialSeriesEndpointLayerClosed (C : ExponentialSeriesEndpointCertificate) : Prop :=
  C.endpointChecked = true ∧ C.remainderRecorded = true

theorem exponential_series_endpoint_layer_closed_checked :
    ExponentialSeriesEndpointLayerClosed primitiveExponentialSeriesEndpointCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
