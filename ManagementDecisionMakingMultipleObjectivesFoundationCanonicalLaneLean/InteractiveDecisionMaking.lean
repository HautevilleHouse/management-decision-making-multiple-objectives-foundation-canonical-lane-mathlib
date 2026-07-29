import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ValueFunctionAggregation

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure InteractiveDecisionMakingPackage {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} where
  preferenceElicitation : Prop
  interactiveProcedure : Prop
  convergenceCondition : Prop
  stoppingCriterion : Prop

structure InteractiveDecisionMakingEvidence {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} (I : InteractiveDecisionMakingPackage V) where
  preferenceElicitationClosed : I.preferenceElicitation
  interactiveProcedureClosed : I.interactiveProcedure
  convergenceConditionClosed : I.convergenceCondition
  stoppingCriterionClosed : I.stoppingCriterion

def InteractiveDecisionMakingClosed {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} (I : InteractiveDecisionMakingPackage V) : Prop :=
  I.preferenceElicitation ∧ I.interactiveProcedure ∧ I.convergenceCondition ∧ I.stoppingCriterion

theorem interactive_decision_making_closed_from_evidence {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} (I : InteractiveDecisionMakingPackage V) (E : InteractiveDecisionMakingEvidence I) : InteractiveDecisionMakingClosed I :=
  And.intro E.preferenceElicitationClosed (And.intro E.interactiveProcedureClosed (And.intro E.convergenceConditionClosed E.stoppingCriterionClosed))

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse