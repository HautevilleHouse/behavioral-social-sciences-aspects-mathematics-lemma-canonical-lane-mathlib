import canonicalLaneMathlib.AdmissibleClass
import BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure ProspectTheoryPackage where
  referencePoint : Type
  gainsLosses : referencePoint → ℝ → ℝ
  weightingFunction : ℝ → ℝ
  riskAttitude : Prop
  lossAversion : Prop
  probabilityWeighting : Prop

structure ProspectTheoryEvidence (P : ProspectTheoryPackage) where
  riskAttitudeClosed : P.riskAttitude
  lossAversionClosed : P.lossAversion
  probabilityWeightingClosed : P.probabilityWeighting

def ProspectTheoryClosed (P : ProspectTheoryPackage) : Prop :=
  P.riskAttitude ∧ P.lossAversion ∧ P.probabilityWeighting

theorem prospect_theory_closed_from_evidence (P : ProspectTheoryPackage) (E : ProspectTheoryEvidence P) : ProspectTheoryClosed P :=
  And.intro E.riskAttitudeClosed (And.intro E.lossAversionClosed E.probabilityWeightingClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse