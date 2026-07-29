import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure AdmissibleObject where
  decisionSpace : Type
  objectiveList : List Prop
  objectiveVector : Type
  paretoFrontier : Prop
  tradeOffStructure : Prop

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DecisionBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
