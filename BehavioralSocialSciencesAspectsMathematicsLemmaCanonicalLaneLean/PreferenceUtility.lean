import canonicalLaneMathlib.AdmissibleClass

/-!
# Preference Utility Package
-/

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure PreferenceUtilityPackage where
  preferenceRelation : Type u
  alternativeSet : Type v
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityFunction : Type w
  utilityRepresentation : Prop

structure PreferenceUtilityEvidence (P : PreferenceUtilityPackage) where
  completenessClosed : P.completeness
  transitivityClosed : P.transitivity
  continuityClosed : P.continuity
  utilityRepresentationClosed : P.utilityRepresentation

def PreferenceUtilityClosed (P : PreferenceUtilityPackage) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.continuity ∧ P.utilityRepresentation

theorem preference_utility_closed_from_evidence (P : PreferenceUtilityPackage)
    (E : PreferenceUtilityEvidence P) : PreferenceUtilityClosed P := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.utilityRepresentationClosed))

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse