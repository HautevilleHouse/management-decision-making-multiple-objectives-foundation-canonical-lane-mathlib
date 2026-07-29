import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ObjectiveSpace

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure TchebycheffScalarization (O : ObjectiveSpace) where
  referencePoint : O.criteria → ℝ
  weights : O.criteria → ℝ
  weightedDistance : (O.criteria → ℝ) → ℝ := λ f => max c (weights c * |f c - referencePoint c|)
  optimalValue : ℝ
  optimalSolution : O.alternatives
  weightPositivity : ∀ c, weights c > 0

def TchebycheffClosed (O : ObjectiveSpace) (T : TchebycheffScalarization O) : Prop :=
  T.weightPositivity

theorem tchebycheff_closed (O : ObjectiveSpace) (T : TchebycheffScalarization O) :
  TchebycheffClosed O T := by
  exact T.weightPositivity

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse