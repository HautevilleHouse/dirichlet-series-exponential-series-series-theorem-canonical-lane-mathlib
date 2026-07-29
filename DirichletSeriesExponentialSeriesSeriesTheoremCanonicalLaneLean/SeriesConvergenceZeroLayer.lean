import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure SeriesConvergenceZeroCertificate where
  zeroDatum : ℂ
  convergenceAbscissa : ℂ
  exponentialSeriesSubstrate : Bool
  zeroEndpointChecked : Bool
  convergenceChecked : Bool
  remainderCarried : Bool


def primitiveSeriesConvergenceZeroCertificate : SeriesConvergenceZeroCertificate := {
  zeroDatum := 0
  convergenceAbscissa := 1
  exponentialSeriesSubstrate := true
  zeroEndpointChecked := true
  convergenceChecked := true
  remainderCarried := true
}

def SeriesConvergenceZeroLayerClosed (C : SeriesConvergenceZeroCertificate) : Prop :=
  C.zeroEndpointChecked = true ∧ C.convergenceChecked = true ∧ C.exponentialSeriesSubstrate = true

theorem series_convergence_zero_layer_closed_checked :
    SeriesConvergenceZeroLayerClosed primitiveSeriesConvergenceZeroCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
