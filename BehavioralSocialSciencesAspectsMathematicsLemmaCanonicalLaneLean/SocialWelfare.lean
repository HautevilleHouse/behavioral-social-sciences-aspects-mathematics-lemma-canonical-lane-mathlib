import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure SocialWelfarePackage where
  agents : Type u
  alternatives : Type v
  socialWelfareFunction : Type w
  unanimity : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

structure SocialWelfareEvidence (S : SocialWelfarePackage) where
  unanimityClosed : S.unanimity
  independenceOfIrrelevantAlternativesClosed : S.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : S.nonDictatorship

def SocialWelfareClosed (S : SocialWelfarePackage) : Prop :=
  S.unanimity ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship

theorem social_welfare_closed_from_evidence (S : SocialWelfarePackage) (E : SocialWelfareEvidence S) :
    SocialWelfareClosed S := by
  exact And.intro E.unanimityClosed (And.intro E.independenceOfIrrelevantAlternativesClosed E.nonDictatorshipClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
