import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ObjectiveSpace

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure GoalProgramming (O : ObjectiveSpace) where
  goals : O.criteria → ℝ
  deviationalVariables : (O.criteria → ℝ) → (O.criteria → ℝ)
  achievementFunction : (O.criteria → ℝ) → ℝ := λ f => ∑ c, |deviationalVariables f c|
  optimalValue : ℝ
  optimalSolution : O.alternatives
  goalFeasibility : ∃ a : O.alternatives, ∀ c, goals c = (someFunction a) c  -- placeholder

def GoalProgrammingClosed (O : ObjectiveSpace) (G : GoalProgramming O) : Prop :=
  G.goalFeasibility

theorem goal_programming_closed (O : ObjectiveSpace) (G : GoalProgramming O) :
  GoalProgrammingClosed O G := by
  exact G.goalFeasibility

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse