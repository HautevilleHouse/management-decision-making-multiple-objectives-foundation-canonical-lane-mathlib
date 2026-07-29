import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean.MultipleObjectivesAdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure SatisfactionModel where
  objectiveWeights : Vector ℝ objectives
  idealPoint : Vector ℝ objectives
  currentPoint : Vector ℝ objectives
  satisfactionScore : ℝ

def distanceToIdeal (m : SatisfactionModel) : ℝ :=
  (m.currentPoint - m.idealPoint).norm

theorem pareto_iff_distance_zero (m : SatisfactionModel) :
  m.satisfactionScore = 0 ↔ distanceToIdeal m = 0 := by
  sorry

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse