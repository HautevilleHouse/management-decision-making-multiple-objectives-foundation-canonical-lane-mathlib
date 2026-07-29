import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ObjectiveSpace

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ParetoOptimality (O : ObjectiveSpace) where
  efficientSolutions : Set O.alternatives
  paretoDominance : O.alternatives → O.alternatives → Prop
  definition : ∀ a b, paretoDominance a b ↔ (∀ c, O.preferenceRelation.relation a b) ∧ ¬ (∀ c, O.preferenceRelation.relation b a)
  efficiencyCondition : ∀ a ∈ efficientSolutions, ∀ b, paretoDominance b a → a = b

def ParetoOptimalityClosed (O : ObjectiveSpace) (P : ParetoOptimality O) : Prop :=
  P.efficiencyCondition

theorem pareto_optimality_closed (O : ObjectiveSpace) (P : ParetoOptimality O) :
  ParetoOptimalityClosed O P := by
  exact P.efficiencyCondition

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse