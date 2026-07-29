import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure EquilibriumExistencePackage where
  playerSet : Type u
  strategySpaces : playerSet → Type v
  payoffFunctions : (p : playerSet) → strategySpaces p → ℝ
  mixedStrategies : Type w
  nashEquilibrium : Prop
  existenceTheorem : Prop

structure EquilibriumEvidence (E : EquilibriumExistencePackage) where
  mixedExtensionCompact : Prop
  payoffContinuity : Prop
  existenceTheoremClosed : E.existenceTheorem

def EquilibriumExistenceClosed (E : EquilibriumExistencePackage) : Prop :=
  E.existenceTheorem

theorem equilibrium_existence_closed_from_evidence (E : EquilibriumExistencePackage) (Ev : EquilibriumEvidence E) :
    EquilibriumExistenceClosed E := by
  exact Ev.existenceTheoremClosed

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse