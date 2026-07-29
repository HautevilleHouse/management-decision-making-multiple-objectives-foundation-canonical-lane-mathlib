import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.InteractiveDecisionMaking

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure MultiObjectiveOptimizationPackage {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} {I : InteractiveDecisionMakingPackage V} where
  optimizationAlgorithm : Type u
  scalarizationMethod : Prop
  evolutionaryMethod : Prop
  hybridMethod : Prop

structure MultiObjectiveOptimizationEvidence {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} {I : InteractiveDecisionMakingPackage V} (M : MultiObjectiveOptimizationPackage I) where
  scalarizationMethodClosed : M.scalarizationMethod
  evolutionaryMethodClosed : M.evolutionaryMethod
  hybridMethodClosed : M.hybridMethod

def MultiObjectiveOptimizationClosed {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} {I : InteractiveDecisionMakingPackage V} (M : MultiObjectiveOptimizationPackage I) : Prop :=
  M.scalarizationMethod ∧ M.evolutionaryMethod ∧ M.hybridMethod

theorem multi_objective_optimization_closed_from_evidence {O : ObjectiveSpace} {P : ParetoFrontierPackage O} {V : ValueFunctionAggregationPackage P} {I : InteractiveDecisionMakingPackage V} (M : MultiObjectiveOptimizationPackage I) (E : MultiObjectiveOptimizationEvidence M) : MultiObjectiveOptimizationClosed M :=
  And.intro E.scalarizationMethodClosed (And.intro E.evolutionaryMethodClosed E.hybridMethodClosed)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse