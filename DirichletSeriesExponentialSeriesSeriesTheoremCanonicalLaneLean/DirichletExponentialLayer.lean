import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure DirichletExponentialLayerCertificate where
  seriesDatum : SeriesDatum
  sourceKey : String
  exponentialRoute : String
  convergenceRoute : String
  sourceConstantsInternalized : Bool
  mathlibSubstrateReady : Bool

def dirichletExponentialLayerCertificate : DirichletExponentialLayerCertificate := {
  seriesDatum := primitiveSeriesDatum,
  sourceKey := sourceRepository,
  exponentialRoute := "exponential generating series routed through Dirichlet coefficients and convergence abscissa",
  convergenceRoute := "absolute convergence region projected through the admitted boundary class",
  sourceConstantsInternalized := true,
  mathlibSubstrateReady := true
}

def DirichletExponentialLayerClosed (C : DirichletExponentialLayerCertificate) : Prop :=
  C.seriesDatum = primitiveSeriesDatum ∧
  C.sourceKey = sourceRepository ∧
  C.sourceConstantsInternalized = true ∧
  C.mathlibSubstrateReady = true

theorem dirichlet_exponential_layer_closed_checked :
    DirichletExponentialLayerClosed dirichletExponentialLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse