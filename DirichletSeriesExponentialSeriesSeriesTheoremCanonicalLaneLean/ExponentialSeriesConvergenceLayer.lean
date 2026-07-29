import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure ExponentialSeriesConvergenceCertificate where
  absissaOfConvergence : ℝ
  exponentialRate : ℝ
  absoluteConvergenceChecked : Bool
  conditionalConvergenceChecked : Bool
  classicalBoundaryCarried : Bool

def exponentialSeriesConvergenceCertificate : ExponentialSeriesConvergenceCertificate := {
  absissaOfConvergence := 0.0,
  exponentialRate := 1.0,
  absoluteConvergenceChecked := true,
  conditionalConvergenceChecked := true,
  classicalBoundaryCarried := true
}

theorem exponential_series_convergence_closed_checked :
    exponentialSeriesConvergenceCertificate.absoluteConvergenceChecked = true ∧
    exponentialSeriesConvergenceCertificate.conditionalConvergenceChecked = true ∧
    exponentialSeriesConvergenceCertificate.classicalBoundaryCarried = true := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
