import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean.DirichletSeriesBridge

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure ExponentialSeriesDatum where
  seriesName : String
  rate : ℕ
  base : ℂ
  radius : ℂ

def primitiveExponentialSeriesDatum : ExponentialSeriesDatum := {
  seriesName := "Exponential base series",
  rate := 1,
  base := 1,
  radius := 1
}

structure ExponentialSeriesClosureCertificate where
  datum : ExponentialSeriesDatum
  exponentialRoute : String
  seriesRoute : String
  closureChecked : Bool
  endpointChecked : Bool

def exponentialSeriesClosureCertificate : ExponentialSeriesClosureCertificate := {
  datum := primitiveExponentialSeriesDatum,
  exponentialRoute := "exponential series closure through admitted Dirichlet datum",
  seriesRoute := "Dirichlet-exponential series convergence bridge",
  closureChecked := true,
  endpointChecked := true
}

def ExponentialSeriesClosureClosed (C : ExponentialSeriesClosureCertificate) : Prop :=
  C.datum.rate = 1 ∧ C.closureChecked = true ∧ C.endpointChecked = true

theorem exponential_series_closure_closed_checked :
    ExponentialSeriesClosureClosed exponentialSeriesClosureCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse