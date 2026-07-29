import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ParetoFrontier

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ValueFunctionAggregationPackage {O : ObjectiveSpace} (P : ParetoFrontierPackage O) where
  valueFunctions : List (O.alternatives → Float)
  aggregationMethod : Type u
  weightedSum : Prop
  goalProgramming : Prop
  consistencyCondition : Prop

structure ValueFunctionAggregationEvidence {O : ObjectiveSpace} {P : ParetoFrontierPackage O} (V : ValueFunctionAggregationPackage P) where
  weightedSumClosed : V.weightedSum
  goalProgrammingClosed : V.goalProgramming
  consistencyConditionClosed : V.consistencyCondition

def ValueFunctionAggregationClosed {O : ObjectiveSpace} {P : ParetoFrontierPackage O} (V : ValueFunctionAggregationPackage P) : Prop :=
  V.weightedSum ∧ V.goalProgramming ∧ V.consistencyCondition

theorem value_function_aggregation_closed_from_evidence {O : ObjectiveSpace} {P : ParetoFrontierPackage O} (V : ValueFunctionAggregationPackage P) (E : ValueFunctionAggregationEvidence V) : ValueFunctionAggregationClosed V :=
  And.intro E.weightedSumClosed (And.intro E.goalProgrammingClosed E.consistencyConditionClosed)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse