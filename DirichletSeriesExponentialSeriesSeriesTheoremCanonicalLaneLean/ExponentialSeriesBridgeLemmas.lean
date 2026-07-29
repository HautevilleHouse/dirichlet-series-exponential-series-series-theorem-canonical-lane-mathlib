import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def exponentialSeriesBridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A

theorem exponential_series_bridge_from_admissible_class (A : AdmissibleClass) :
    exponentialSeriesBridgeClosed A := by
  exact bridge_from_admissible_class A

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse
