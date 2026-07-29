import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.MultipleObjectivesBridgeLemmas

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse