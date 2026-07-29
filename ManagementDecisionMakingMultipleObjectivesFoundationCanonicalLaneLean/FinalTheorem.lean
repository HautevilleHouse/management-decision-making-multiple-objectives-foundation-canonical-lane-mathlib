import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.MultiObjectiveOptimization

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

def ConstrainedDecisionMakingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_decision_making_endgame (A : AdmissibleClass) : ConstrainedDecisionMakingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse