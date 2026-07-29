import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure TradeoffAnalysis where
  alternatives : Type u
  objectives : Type v
  marginalRatesOfSubstitution : objectives → objectives → ℝ
  tradeoffCurve : ℝ → ℝ → Prop
  efficientFrontier : Set (ℝ × ℝ)
  indifferenceMap : alternatives → ℝ → ℝ

structure TradeoffEvidence (T : TradeoffAnalysis) where
  efficientFrontierClosed : T.efficientFrontier ≠ ∅
  indifferenceMapClosed : T.indifferenceMap ≠ ∅
  marginalRatesDefined : T.marginalRatesOfSubstitution ≠ ∅

def TradeoffClosed (T : TradeoffAnalysis) : Prop :=
  (T.efficientFrontier ≠ ∅) ∧ (T.indifferenceMap ≠ ∅) ∧ (T.marginalRatesOfSubstitution ≠ ∅)

theorem tradeoff_closed_from_evidence (T : TradeoffAnalysis) (E : TradeoffEvidence T) : TradeoffClosed T := by
  exact And.intro E.efficientFrontierClosed (And.intro E.indifferenceMapClosed E.marginalRatesDefined)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
