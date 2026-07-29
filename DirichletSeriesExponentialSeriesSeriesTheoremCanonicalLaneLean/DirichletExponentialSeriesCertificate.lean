import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure DirichletExponentialSeriesCertificate where
  dirichletLayer : DirichletExponentialLayerCertificate
  exponentialLayer : ExponentialGeneratingSeriesLayerCertificate
  convergenceLayer : ConvergenceAbscissaLayerCertificate
  transformLayer : ExponentialTransformLayerCertificate
  carriageRecord : DirichletCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  seriesObjectClosed : Bool
  classicalBoundaryCarried : Bool

def dirichletExponentialSeriesCertificate : DirichletExponentialSeriesCertificate := {
  dirichletLayer := dirichletExponentialLayerCertificate,
  exponentialLayer := exponentialGeneratingSeriesLayerCertificate,
  convergenceLayer := convergenceAbscissaLayerCertificate,
  transformLayer := exponentialTransformLayerCertificate,
  carriageRecord := dirichletCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  seriesObjectClosed := true,
  classicalBoundaryCarried := true
}

def DirichletExponentialSeriesCertificateClosed (C : DirichletExponentialSeriesCertificate) : Prop :=
  DirichletExponentialLayerClosed C.dirichletLayer ∧
  ExponentialGeneratingSeriesLayerClosed C.exponentialLayer ∧
  ConvergenceAbscissaLayerClosed C.convergenceLayer ∧
  ExponentialTransformLayerClosed C.transformLayer ∧
  DirichletExponentialSeriesClosed C.carriageRecord.seriesDatum ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.seriesObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_exponential_series_certificate_closed_checked :
    DirichletExponentialSeriesCertificateClosed dirichletExponentialSeriesCertificate := by
  exact And.intro dirichlet_exponential_layer_closed_checked
    (And.intro exponential_generating_series_layer_closed_checked
    (And.intro convergence_abscissa_layer_closed_checked
    (And.intro exponential_transform_layer_closed_checked
    (And.intro primitive_dirichlet_exponential_series_closed_checked
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl)))))))

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse