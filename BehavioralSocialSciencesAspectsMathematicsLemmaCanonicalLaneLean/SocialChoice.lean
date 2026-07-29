import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure SocialChoicePackage where
  alternatives : Type u
  voters : Type v
  preferences : voters → alternatives → alternatives → Prop
  socialWelfareFunction : Type w
  paretoEfficiency : Prop
  independenceIrrelevantAlternatives : Prop
  nonDictatorial : Prop
  impossibilityConclusion : Prop

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceIrrelevantAlternativesClosed : S.independenceIrrelevantAlternatives
  nonDictatorialClosed : S.nonDictatorial
  impossibilityConclusionClosed : S.impossibilityConclusion

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.paretoEfficiency ∧ S.independenceIrrelevantAlternatives ∧ S.nonDictatorial ∧ S.impossibilityConclusion

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) :
    SocialChoiceClosed S := by
  exact And.intro E.paretoEfficiencyClosed
    (And.intro E.independenceIrrelevantAlternativesClosed
      (And.intro E.nonDictatorialClosed E.impossibilityConclusionClosed))

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse