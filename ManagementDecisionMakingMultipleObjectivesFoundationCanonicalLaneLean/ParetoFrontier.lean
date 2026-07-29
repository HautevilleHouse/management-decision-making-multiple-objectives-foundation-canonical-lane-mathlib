import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ObjectiveSpace

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ParetoFrontierPackage (O : ObjectiveSpace) where
  nonDominatedSet : Set O.alternatives
  efficiencyCondition : Prop
  weakParetoOptimality : Prop
  frontierClosedness : Prop

structure ParetoFrontierEvidence {O : ObjectiveSpace} (P : ParetoFrontierPackage O) where
  efficiencyConditionClosed : P.efficiencyCondition
  weakParetoOptimalityClosed : P.weakParetoOptimality
  frontierClosednessClosed : P.frontierClosedness

def ParetoFrontierClosed {O : ObjectiveSpace} (P : ParetoFrontierPackage O) : Prop :=
  P.efficiencyCondition ∧ P.weakParetoOptimality ∧ P.frontierClosedness

theorem pareto_frontier_closed_from_evidence {O : ObjectiveSpace} (P : ParetoFrontierPackage O) (E : ParetoFrontierEvidence P) : ParetoFrontierClosed P :=
  And.intro E.efficiencyConditionClosed (And.intro E.weakParetoOptimalityClosed E.frontierClosednessClosed)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse