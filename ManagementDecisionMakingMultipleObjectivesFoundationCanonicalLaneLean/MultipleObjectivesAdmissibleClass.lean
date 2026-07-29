import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean

structure DecisionSpace where
  alternatives : Type
  objectives : Nat
  criteria : Type
  valueFunction : alternatives → criteria → ℝ

structure DecisionAdmittedObject where
  space : DecisionSpace
  wellDefinedObjectives : Prop
  consistentPreferences : Prop
  paretoOptimal : Prop
  conclusion : paretoOptimal

structure DecisionEndgameState where
  object : DecisionAdmittedObject

def DecisionWitnessClosed (O : DecisionAdmittedObject) : Prop :=
  O.paretoOptimal

end ManagementDecisionMakingMultipleObjectivesFoundationCanonicalLaneLean
end HautevilleHouse