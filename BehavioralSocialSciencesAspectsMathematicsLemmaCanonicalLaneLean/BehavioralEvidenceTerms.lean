import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean.DescriptiveGateLemmas

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure BehavioralEvidenceTerms (A : AdmissibleClass) where
  rationalChoiceClosed : RationalChoiceClosed (some package)
  preferenceConsistency : Prop
  behavioralRegularity : Prop
  evidenceTermsClosed : rationalChoiceClosed ∧ preferenceConsistency ∧ behavioralRegularity

def BehavioralEvidenceClosed (A : AdmissibleClass) (E : BehavioralEvidenceTerms A) : Prop :=
  E.evidenceTermsClosed

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
