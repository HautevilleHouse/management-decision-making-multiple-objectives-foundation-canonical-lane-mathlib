import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure DecisionRuleAggregation where
  decisionRules : Type u
  objectives : Type v
  aggregationFunction : (decisionRules → ℝ) → objectives → ℝ
  weightedSumAggregation : Bool
  lexicographicAggregation : Bool
  minMaxAggregation : Bool
  aggregationConsistency : Prop

structure AggregationEvidence (A : DecisionRuleAggregation) where
  weightedSumClosed : A.weightedSumAggregation
  lexicographicClosed : A.lexicographicAggregation
  minMaxClosed : A.minMaxAggregation
  consistencyClosed : A.aggregationConsistency

def AggregationClosed (A : DecisionRuleAggregation) : Prop :=
  A.weightedSumAggregation ∧ A.lexicographicAggregation ∧ A.minMaxAggregation ∧ A.aggregationConsistency

theorem aggregation_closed_from_evidence (A : DecisionRuleAggregation) (E : AggregationEvidence A) : AggregationClosed A := by
  exact And.intro E.weightedSumClosed (And.intro E.lexicographicClosed (And.intro E.minMaxClosed E.consistencyClosed))

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
