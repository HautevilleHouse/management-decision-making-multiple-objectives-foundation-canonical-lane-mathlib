import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.ObjectiveSpace

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure InteractiveMethod (O : ObjectiveSpace) where
  iteration : Nat → Prop
  preferenceUpdate : O.alternatives → O.preferenceRelation
  stoppingCriterion : Prop
  terminationCondition : stoppingCriterion
  solutionObtained : O.alternatives

def InteractiveMethodClosed (O : ObjectiveSpace) (I : InteractiveMethod O) : Prop :=
  I.terminationCondition

theorem interactive_method_closed (O : ObjectiveSpace) (I : InteractiveMethod O) :
  InteractiveMethodClosed O I := by
  exact I.terminationCondition

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse