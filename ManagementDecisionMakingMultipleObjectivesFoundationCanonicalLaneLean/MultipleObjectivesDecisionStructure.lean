import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ObjectiveSpace where
  objectives : List String
  criteriaWeights : List Float
  objectiveFunctions : List (Float -> Float)

structure DecisionAlternative where
  label : String
  scores : List Float

structure DecisionPackage where
  objectiveSpace : ObjectiveSpace
  alternatives : List DecisionAlternative
  decisionRule : Definition

define DecisionRule : Prop ?

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse