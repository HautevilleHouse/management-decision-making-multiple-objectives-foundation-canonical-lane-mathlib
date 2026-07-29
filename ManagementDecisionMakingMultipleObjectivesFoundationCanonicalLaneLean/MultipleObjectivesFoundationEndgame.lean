import ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.InteractiveProcedureBridge

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

def ConstrainedMultipleObjectivesFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_multiple_objectives_foundation_endgame (A : AdmissibleClass) : ConstrainedMultipleObjectivesFoundationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
