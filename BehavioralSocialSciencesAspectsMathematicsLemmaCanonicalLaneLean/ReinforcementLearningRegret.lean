import canonicalLaneMathlib.AdmissibleClass
import BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure BanditRegretPackage where
  arms : Nat
  horizon : ℕ
  policyType : Type
  expectedRegret : ℝ
  regretBound : Prop
  optimalPolicyExists : Prop

structure BanditRegretEvidence (B : BanditRegretPackage) where
  regretBoundClosed : B.regretBound
  optimalPolicyExistsClosed : B.optimalPolicyExists

def BanditRegretClosed (B : BanditRegretPackage) : Prop :=
  B.regretBound ∧ B.optimalPolicyExists

theorem bandit_regret_closed_from_evidence (B : BanditRegretPackage) (E : BanditRegretEvidence B) : BanditRegretClosed B :=
  And.intro E.regretBoundClosed E.optimalPolicyExistsClosed

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse