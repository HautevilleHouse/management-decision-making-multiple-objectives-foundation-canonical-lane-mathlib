import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure MultiObjectiveDecisionProblem where
  alternatives : Type u
  objectives : Type v
  outcomeMatrix : alternatives → objectives → ℝ
  preferenceRelation : alternatives → alternatives → Prop
  paretoOptimality : Prop
  utopiaPoint : alternatives → ℝ
  nadirPoint : alternatives → ℝ

structure MultiObjectiveDecisionEvidence (P : MultiObjectiveDecisionProblem) where
  paretoOptimalityClosed : P.paretoOptimality
  utopiaDefined : P.utopiaPoint ≠ ∅
  nadirDefined : P.nadirPoint ≠ ∅

def MultiObjectiveDecisionClosed (P : MultiObjectiveDecisionProblem) : Prop :=
  P.paretoOptimality ∧ (P.utopiaPoint ≠ ∅) ∧ (P.nadirPoint ≠ ∅)

theorem multi_objective_decision_closed_from_evidence (P : MultiObjectiveDecisionProblem) (E : MultiObjectiveDecisionEvidence P) : MultiObjectiveDecisionClosed P := by
  exact And.intro E.paretoOptimalityClosed (And.intro E.utopiaDefined E.nadirDefined)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
