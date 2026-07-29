import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

def ConstrainedDirichletExponentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ True

theorem constrained_dirichlet_exponential_endgame (A : AdmissibleClass) :
    ConstrainedDirichletExponentialClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) trivial)

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
