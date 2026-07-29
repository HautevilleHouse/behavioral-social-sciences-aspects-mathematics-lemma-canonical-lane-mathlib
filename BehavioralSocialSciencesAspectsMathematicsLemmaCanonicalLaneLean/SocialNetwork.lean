import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure SocialNetworkPackage where
  nodeSet : Type u
  edgeRelation : Type v
  diffusionModel : Prop
  thresholdCondition : Prop
  cascadeComplete : Prop

structure SocialNetworkEvidence (N : SocialNetworkPackage) where
  diffusionModelClosed : N.diffusionModel
  thresholdConditionClosed : N.thresholdCondition
  cascadeCompleteClosed : N.cascadeComplete

def SocialNetworkClosed (N : SocialNetworkPackage) : Prop :=
  N.diffusionModel ∧ N.thresholdCondition ∧ N.cascadeComplete

theorem social_network_closed_from_evidence (N : SocialNetworkPackage) (E : SocialNetworkEvidence N) :
    SocialNetworkClosed N := by
  exact And.intro E.diffusionModelClosed (And.intro E.thresholdConditionClosed E.cascadeCompleteClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
