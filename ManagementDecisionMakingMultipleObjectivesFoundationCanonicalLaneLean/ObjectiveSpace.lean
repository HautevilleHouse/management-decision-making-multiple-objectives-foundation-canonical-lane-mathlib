import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure ObjectiveSpace where
  alternatives : Type u
  criteria : Type v
  evaluationFunctions : List (alternatives → Float)
  preferenceStructure : Prop
  tradeoffRelations : Prop

structure ObjectiveSpaceEvidence (O : ObjectiveSpace) where
  preferenceStructureClosed : O.preferenceStructure
  tradeoffRelationsClosed : O.tradeoffRelations

def ObjectiveSpaceClosed (O : ObjectiveSpace) : Prop :=
  O.preferenceStructure ∧ O.tradeoffRelations

theorem objective_space_closed_from_evidence (O : ObjectiveSpace) (E : ObjectiveSpaceEvidence O) : ObjectiveSpaceClosed O :=
  And.intro E.preferenceStructureClosed E.tradeoffRelationsClosed

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse