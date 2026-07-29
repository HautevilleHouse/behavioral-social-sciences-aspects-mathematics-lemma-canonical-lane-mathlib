import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure RationalChoicePackage where
  preferenceStructure : Type u
  completeness : Prop
  transitivity : Prop
  utilityRepresentation : Prop
  continuousPreference : Prop

structure RationalChoiceEvidence (R : RationalChoicePackage) where
  completenessClosed : R.completeness
  transitivityClosed : R.transitivity
  utilityRepresentationClosed : R.utilityRepresentation
  continuousPreferenceClosed : R.continuousPreference

def RationalChoiceClosed (R : RationalChoicePackage) : Prop :=
  R.completeness ∧ R.transitivity ∧ R.utilityRepresentation ∧ R.continuousPreference

theorem rational_choice_closed_from_evidence (R : RationalChoicePackage) (E : RationalChoiceEvidence R) :
    RationalChoiceClosed R := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed (And.intro E.utilityRepresentationClosed E.continuousPreferenceClosed))

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
