import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure AchievableAspirationLevelsPackage (A : MultipleObjectivesAdmissibleClass) where
  aspirationLevels : A.object.criteria → ℝ
  referencePoint : A.object.criteria → ℝ
  achievementFunction : A.object.feasibleAlternatives → ℝ
  maximallyAchievableSolution : A.object.feasibleAlternatives
  achievementProof : maximallyAchievableSolution ∈ A.object.paretoOptimalSet
  aspirationFeasibility : ∃ x : A.object.feasibleAlternatives, ∀ c : A.object.criteria, A.object.utilityMap x c ≥ aspirationLevels c

structure AchievableAspirationLevelsEvidence {A : MultipleObjectivesAdmissibleClass}
    (P : AchievableAspirationLevelsPackage A) where
  achievementClosed : P.maximallyAchievableSolution ∈ A.object.paretoOptimalSet
  aspirationFeasibilityClosed : ∃ x : A.object.feasibleAlternatives, ∀ c : A.object.criteria, A.object.utilityMap x c ≥ P.aspirationLevels c

def AchievableAspirationLevelsClosed {A : MultipleObjectivesAdmissibleClass}
    (P : AchievableAspirationLevelsPackage A) : Prop :=
  P.maximallyAchievableSolution ∈ A.object.paretoOptimalSet ∧
  ∃ x : A.object.feasibleAlternatives, ∀ c : A.object.criteria, A.object.utilityMap x c ≥ P.aspirationLevels c

theorem achievable_aspiration_levels_closed_from_evidence
    {A : MultipleObjectivesAdmissibleClass} (P : AchievableAspirationLevelsPackage A)
    (E : AchievableAspirationLevelsEvidence P) : AchievableAspirationLevelsClosed P := by
  exact And.intro E.achievementClosed E.aspirationFeasibilityClosed

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse