import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ObjectiveSpace

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure WeightedSumScalarization (O : ObjectiveSpace) where
  weights : O.criteria → ℝ
  sumToOne : ∑ c, weights c = 1
  nonnegative : ∀ c, weights c ≥ 0
  scalarizedFunction : (O.criteria → ℝ) → ℝ := λ f => ∑ c, weights c * f c
  optimalValue : ℝ
  optimalSolution : O.alternatives

def WeightedSumClosed (O : ObjectiveSpace) (W : WeightedSumScalarization O) : Prop :=
  W.sumToOne ∧ W.nonnegative (fun _ => True)

theorem weighted_sum_closed (O : ObjectiveSpace) (W : WeightedSumScalarization O) :
  WeightedSumClosed O W := by
  exact And.intro W.sumToOne (by
    intro c
    exact W.nonnegative c)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse