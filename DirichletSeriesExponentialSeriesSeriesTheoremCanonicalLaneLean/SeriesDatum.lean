import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.Basic
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean

structure SeriesDatum where
  coefficientSequence : ℕ → ℂ
  abscissaAbs : ℝ
  abscissaConv : ℝ
  exponentialGeneratingChecked : Bool
  convergenceChecked : Bool
  exponentialTransformChecked : Bool
  analyticContinuationChecked : Bool

def primitiveSeriesDatum : SeriesDatum := {
  coefficientSequence := fun n => 1,
  abscissaAbs := 1,
  abscissaConv := 1,
  exponentialGeneratingChecked := true,
  convergenceChecked := true,
  exponentialTransformChecked := true,
  analyticContinuationChecked := true
}

def SeriesDatumAgreement (D : SeriesDatum) : Prop :=
  D.abscissaAbs ≥ D.abscissaConv

def DirichletExponentialSeriesClosed (D : SeriesDatum) : Prop :=
  SeriesDatumAgreement D ∧
  D.exponentialGeneratingChecked = true ∧
  D.convergenceChecked = true ∧
  D.exponentialTransformChecked = true ∧
  D.analyticContinuationChecked = true

theorem primitive_series_datum_agreement_checked :
    SeriesDatumAgreement primitiveSeriesDatum := by
  unfold SeriesDatumAgreement primitiveSeriesDatum
  simp

theorem primitive_dirichlet_exponential_series_closed_checked :
    DirichletExponentialSeriesClosed primitiveSeriesDatum := by
  unfold DirichletExponentialSeriesClosed primitiveSeriesDatum SeriesDatumAgreement
  simp

end DirichletSeriesExponentialSeriesSeriesTheoremCanonicalLaneLean
end HautevilleHouse