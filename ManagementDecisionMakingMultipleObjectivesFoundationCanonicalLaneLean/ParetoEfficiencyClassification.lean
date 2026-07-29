import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ParetoEfficiencyPackage (A : MultipleObjectivesAdmissibleClass) where
  feasibleAlternatives : Type
  criteria : Type
  utilityMap : feasibleAlternatives → criteria → ℝ
  paretoOptimalSet : Set feasibleAlternatives
  nondominatedSet : Set feasibleAlternatives
  equivalenceProof : paretoOptimalSet = nondominatedSet

structure ParetoEfficiencyEvidence {A : MultipleObjectivesAdmissibleClass} (P : ParetoEfficiencyPackage A) where
  paretoOptimalSetClosed : P.paretoOptimalSet = P.nondominatedSet
  nondominatedSetClosed : Set.Nonempty P.nondominatedSet

def ParetoEfficiencyClosed {A : MultipleObjectivesAdmissibleClass} (P : ParetoEfficiencyPackage A) : Prop :=
  P.paretoOptimalSet = P.nondominatedSet ∧ Set.Nonempty P.nondominatedSet

theorem pareto_efficiency_closed_from_evidence
    {A : MultipleObjectivesAdmissibleClass} (P : ParetoEfficiencyPackage A)
    (E : ParetoEfficiencyEvidence P) : ParetoEfficiencyClosed P := by
  exact And.intro E.paretoOptimalSetClosed E.nondominatedSetClosed

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse