import HautevilleHouse.BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure RationalChoicePackage where
  rationalPreferences : Prop
  utilityMaximization : Prop
  transitivity : Prop
  completeness : Prop

structure RationalChoiceEvidence (R : RationalChoicePackage) where
  rationalPreferencesClosed : R.rationalPreferences
  utilityMaximizationClosed : R.utilityMaximization
  transitivityClosed : R.transitivity
  completenessClosed : R.completeness

def RationalChoiceClosed (R : RationalChoicePackage) : Prop :=
  R.rationalPreferences ∧ R.utilityMaximization ∧ R.transitivity ∧ R.completeness

theorem rational_choice_closed_from_evidence (R : RationalChoicePackage) (E : RationalChoiceEvidence R) :
    RationalChoiceClosed R := by
  exact And.intro E.rationalPreferencesClosed (And.intro E.utilityMaximizationClosed (And.intro E.transitivityClosed E.completenessClosed))

declare bridgeClosed (A : AdmissibleClass) : Prop := RationalChoiceClosed (some package from A)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
