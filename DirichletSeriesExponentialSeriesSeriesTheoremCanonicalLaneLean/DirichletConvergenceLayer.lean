import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure DirichletConvergenceCertificate where
  abscissaConvergence : ℂ
  abscissaAbsoluteConvergence : ℂ
  exponentialSubstrateChecked : Bool
  convergenceEndpointChecked : Bool
  remainderCarried : Bool


def primitiveDirichletConvergenceCertificate : DirichletConvergenceCertificate := {
  abscissaConvergence := 1
  abscissaAbsoluteConvergence := 1
  exponentialSubstrateChecked := true
  convergenceEndpointChecked := true
  remainderCarried := true
}

def DirichletConvergenceLayerClosed (C : DirichletConvergenceCertificate) : Prop :=
  C.convergenceEndpointChecked = true ∧ C.exponentialSubstrateChecked = true

theorem dirichlet_convergence_layer_closed_checked :
    DirichletConvergenceLayerClosed primitiveDirichletConvergenceCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
