import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

def bridgeClosed (A : MultipleObjectivesAdmissibleClass) : Prop :=
  MultipleObjectivesWitnessClosed A.object

theorem bridge_from_admissible_class (A : MultipleObjectivesAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse