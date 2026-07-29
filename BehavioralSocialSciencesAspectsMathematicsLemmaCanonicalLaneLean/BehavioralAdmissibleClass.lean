import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure BehavioralAdmittedObject where
  agentType : Type
  strategySpace : Type
  payoffFunction : strategySpace → agentType → ℝ
  equilibriumConcept : Prop
  conclusion : equilibriumConcept

structure AdmissibleClass where
  object : BehavioralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse