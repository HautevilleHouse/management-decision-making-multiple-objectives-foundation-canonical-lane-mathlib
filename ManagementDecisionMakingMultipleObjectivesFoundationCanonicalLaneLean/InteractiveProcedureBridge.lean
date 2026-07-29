import canonicalLaneMathlib.AdmissibleClass
import ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.MultiObjectiveDecisionProblem
import ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.GoalProgrammingFramework
import ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ParetoOptimalityConditions
import ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.TradeoffAnalysis
import ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.DecisionRuleAggregation

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure InteractiveProcedureBridge (P : MultiObjectiveDecisionProblem) (G : GoalProgrammingFramework) (Par : ParetoOptimalityConditions) (T : TradeoffAnalysis) (A : DecisionRuleAggregation) where
  problemToGoals : Prop
  goalsToPareto : Prop
  paretoToTradeoff : Prop
  tradeoffToAggregation : Prop
  procedureClosure : Prop

structure InteractiveProcedureEvidence (P : MultiObjectiveDecisionProblem) (G : GoalProgrammingFramework) (Par : ParetoOptimalityConditions) (T : TradeoffAnalysis) (A : DecisionRuleAggregation) (B : InteractiveProcedureBridge P G Par T A) where
  problemToGoalsClosed : B.problemToGoals
  goalsToParetoClosed : B.goalsToPareto
  paretoToTradeoffClosed : B.paretoToTradeoff
  tradeoffToAggregationClosed : B.tradeoffToAggregation
  procedureClosureClosed : B.procedureClosure

def InteractiveProcedureClosed (P : MultiObjectiveDecisionProblem) (G : GoalProgrammingFramework) (Par : ParetoOptimalityConditions) (T : TradeoffAnalysis) (A : DecisionRuleAggregation) (B : InteractiveProcedureBridge P G Par T A) : Prop :=
  B.problemToGoals ∧ B.goalsToPareto ∧ B.paretoToTradeoff ∧ B.tradeoffToAggregation ∧ B.procedureClosure

theorem interactive_procedure_closed_from_evidence (P : MultiObjectiveDecisionProblem) (G : GoalProgrammingFramework) (Par : ParetoOptimalityConditions) (T : TradeoffAnalysis) (A : DecisionRuleAggregation) (B : InteractiveProcedureBridge P G Par T A) (E : InteractiveProcedureEvidence P G Par T A B) : InteractiveProcedureClosed P G Par T A B := by
  exact And.intro E.problemToGoalsClosed (And.intro E.goalsToParetoClosed (And.intro E.paretoToTradeoffClosed (And.intro E.tradeoffToAggregationClosed E.procedureClosureClosed)))

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
