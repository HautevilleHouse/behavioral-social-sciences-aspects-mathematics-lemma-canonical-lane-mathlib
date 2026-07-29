import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure SocialChoicePackage where
  individuals : Type u
  alternatives : Type v
  preferenceProfiles : (individuals → alternatives → alternatives → Prop) → Prop
  socialWelfareFunction : (individuals → alternatives → alternatives → Prop) → (alternatives → alternatives → Prop)
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  arrowConditions : paretoEfficiency ∧ independenceOfIrrelevantAlternatives ∧ nonDictatorship

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : S.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : S.nonDictatorship
  arrowConditionsClosed : S.arrowConditions

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship

theorem social_choice_closed_from_evidence (S : SocialChoicePackage) (E : SocialChoiceEvidence S) :
    SocialChoiceClosed S := by
  exact And.intro E.paretoEfficiencyClosed (And.intro E.independenceOfIrrelevantAlternativesClosed E.nonDictatorshipClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse