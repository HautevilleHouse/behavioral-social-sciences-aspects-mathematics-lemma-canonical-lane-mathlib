import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure RationalChoicePackage where
  alternatives : Type u
  preferenceRelation : alternatives → alternatives → Prop
  completeness : ∀ x y, preferenceRelation x y ∨ preferenceRelation y x
  transitivity : ∀ x y z, preferenceRelation x y → preferenceRelation y z → preferenceRelation x z
  utilityFunction : alternatives → ℝ
  utilityRepresents : ∀ x y, preferenceRelation x y ↔ utilityFunction x ≥ utilityFunction y

structure RationalChoiceEvidence (R : RationalChoicePackage) where
  completenessClosed : R.completeness
  transitivityClosed : R.transitivity
  utilityRepresentsClosed : R.utilityRepresents

def RationalChoiceClosed (R : RationalChoicePackage) : Prop :=
  R.completeness ∧ R.transitivity ∧ (∀ x y, R.preferenceRelation x y ↔ R.utilityFunction x ≥ R.utilityFunction y)

theorem rational_choice_closed_from_evidence (R : RationalChoicePackage) (E : RationalChoiceEvidence R) :
    RationalChoiceClosed R := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed E.utilityRepresentsClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse