import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure UtilityRepresentationPackage where
  outcomeSet : Type u
  preferenceRelation : outcomeSet → outcomeSet → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityFunction : outcomeSet → ℝ
  representationTheorem : Prop

structure UtilityEvidence (U : UtilityRepresentationPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  representationTheoremClosed : U.representationTheorem

def UtilityRepresentationClosed (U : UtilityRepresentationPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.representationTheorem

theorem utility_representation_closed_from_evidence (U : UtilityRepresentationPackage) (E : UtilityEvidence U) :
    UtilityRepresentationClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed E.representationTheoremClosed))

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse