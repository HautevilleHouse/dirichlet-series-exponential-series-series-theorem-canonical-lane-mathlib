import DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean.DirichletExponentialBridge
import DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean.ExponentialSeriesGateLemmas

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

def ConstrainedExponentialClosure (A : ExponentialSeriesAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_exponential_closure (A : ExponentialSeriesAdmissibleClass) :
    ConstrainedExponentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
