import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.MultipleObjectivesAdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure TradeoffModel where
  marginalRatesOfSubstitution : Matrix ℝ criteria criteria
  indifferenceCurves : Set (Vector ℝ criteria)
  tradeoffConsistency : Prop

def TradeoffClosed (T : TradeoffModel) : Prop :=
  T.tradeoffConsistency

theorem tradeoff_closed_from_evidence (T : TradeoffModel) (h : T.tradeoffConsistency) :
  TradeoffClosed T := by
  exact h

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse