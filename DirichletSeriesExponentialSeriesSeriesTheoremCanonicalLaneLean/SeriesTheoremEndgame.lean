import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean.DirichletSeriesBridge
import DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean.ExponentialSeriesClosure

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

def ConstrainedSeriesTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_series_theorem_endgame (A : AdmissibleClass) :
    ConstrainedSeriesTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem series_bridge_endpoint_checked :
    DirichletSeriesBridgeClosed dirichletSeriesBridgeCertificate := by
  exact dirichlet_series_bridge_closed_checked

theorem exponential_closure_endpoint_checked :
    ExponentialSeriesClosureClosed exponentialSeriesClosureCertificate := by
  exact exponential_series_closure_closed_checked

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse