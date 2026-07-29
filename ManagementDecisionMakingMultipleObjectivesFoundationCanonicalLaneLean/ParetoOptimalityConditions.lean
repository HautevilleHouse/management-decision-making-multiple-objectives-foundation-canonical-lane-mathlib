import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ParetoOptimalityConditions where
  alternativeSet : Type u
  objectiveFunctions : alternativeSet → ℝ → Prop
  dominanceRelation : alternativeSet → alternativeSet → Prop
  nondominatedSet : Set alternativeSet
  localPareto : Prop
  globalPareto : Prop

structure ParetoOptimalityEvidence (P : ParetoOptimalityConditions) where
  nondominatedSetClosed : P.nondominatedSet ≠ ∅
  localParetoClosed : P.localPareto
  globalParetoClosed : P.globalPareto

def ParetoOptimalityClosed (P : ParetoOptimalityConditions) : Prop :=
  (P.nondominatedSet ≠ ∅) ∧ P.localPareto ∧ P.globalPareto

theorem pareto_optimality_closed_from_evidence (P : ParetoOptimalityConditions) (E : ParetoOptimalityEvidence P) : ParetoOptimalityClosed P := by
  exact And.intro E.nondominatedSetClosed (And.intro E.localParetoClosed E.globalParetoClosed)

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse
