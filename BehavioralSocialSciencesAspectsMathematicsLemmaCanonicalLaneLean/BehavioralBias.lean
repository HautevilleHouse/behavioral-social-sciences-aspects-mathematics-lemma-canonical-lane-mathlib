import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure BehavioralBiasPackage where
  heuristicList : Type u
  cognitiveBiasList : Type v
  prospectTheoryValue : Prop
  framingEffect : Prop
  anchoringBias : Prop

structure BehavioralBiasEvidence (B : BehavioralBiasPackage) where
  prospectTheoryValueClosed : B.prospectTheoryValue
  framingEffectClosed : B.framingEffect
  anchoringBiasClosed : B.anchoringBias

def BehavioralBiasClosed (B : BehavioralBiasPackage) : Prop :=
  B.prospectTheoryValue ∧ B.framingEffect ∧ B.anchoringBias

theorem behavioral_bias_closed_from_evidence (B : BehavioralBiasPackage) (E : BehavioralBiasEvidence B) :
    BehavioralBiasClosed B := by
  exact And.intro E.prospectTheoryValueClosed (And.intro E.framingEffectClosed E.anchoringBiasClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse
