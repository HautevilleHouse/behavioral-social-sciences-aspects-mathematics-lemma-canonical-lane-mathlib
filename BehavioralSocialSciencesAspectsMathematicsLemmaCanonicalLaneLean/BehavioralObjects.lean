import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure Agent where
  preferences : Type u
  beliefs : Type u
  constraints : Type u

structure ChoiceSituation (A : Agent) where
  alternatives : Type u
  chosen : A.preferences -> A.alternatives

structure SocialOutcome (N : Nat) where
  allocations : Vector String N -> String
  welfareMeasure : String -> Float

structure BehavioralAdmittedObject where
  agent : Agent
  choiceSituation : ChoiceSituation agent
  outcome : SocialOutcome 0
  conclusion : Prop

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
