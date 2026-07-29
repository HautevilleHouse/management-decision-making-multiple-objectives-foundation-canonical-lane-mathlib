import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure GoalProgrammingFramework where
  goals : Type u
  targetLevels : goals → ℝ
  achievementFunction : goals → ℝ → ℝ
  weightedSum : ℝ
  deviationPenalty : goals → ℝ → ℝ
  lexicographicOrder : Bool

structure GoalProgrammingEvidence (G : GoalProgrammingFramework) where
  targetLevelsClosed : G.targetLevels ≠ ∅
  achievementFunctionClosed : G.achievementFunction ≠ ∅
  weightedSumComputed : G.weightedSum > 0

def GoalProgrammingClosed (G : GoalProgrammingFramework) : Prop :=
  (G.targetLevels ≠ ∅) ∧ (G.achievementFunction ≠ ∅) ∧ (G.weightedSum > 0)

theorem goal_programming_closed_from_evidence (G : GoalProgrammingFramework) (E : GoalProgrammingEvidence G) : GoalProgrammingClosed G := by
  exact And.intro E.targetLevelsClosed (And.intro E.achievementFunctionClosed E.weightedSumComputed)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
