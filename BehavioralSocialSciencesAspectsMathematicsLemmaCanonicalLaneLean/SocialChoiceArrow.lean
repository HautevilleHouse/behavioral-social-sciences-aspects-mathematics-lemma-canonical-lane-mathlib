import canonicalLaneMathlib.AdmissibleClass
import BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure SocialChoicePackage where
  alternatives : Type
  individuals : Type
  preferenceProfiles : individuals → alternatives → alternatives → Prop
  socialWelfareFunction : (alternatives → alternatives → Prop) → alternatives → alternatives → Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  impossibilityConclusion : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceClosed : S.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : S.nonDictatorship
  impossibilityConclusionClosed : S.impossibilityConclusion

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship ∧ S.impossibilityConclusion

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) : SocialChoiceClosed S :=
  And.intro E.paretoEfficiencyClosed (And.intro E.independenceClosed (And.intro E.nonDictatorshipClosed E.impossibilityConclusionClosed))

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse