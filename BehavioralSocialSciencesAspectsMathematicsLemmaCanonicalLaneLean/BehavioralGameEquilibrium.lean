import canonicalLaneMathlib.AdmissibleClass
import BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean.BehavioralAdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure GameEquilibriumPackage where
  players : Nat
  strategySets : Vector Type players
  payoffFunctions : Vector (Vector ℝ players) players
  nashEquilibriumExists : Prop
  mixedStrategyExtension : Prop
  refinementProperties : Prop

structure GameEquilibriumEvidence (G : GameEquilibriumPackage) where
  nashEquilibriumExistsClosed : G.nashEquilibriumExists
  mixedStrategyExtensionClosed : G.mixedStrategyExtension
  refinementPropertiesClosed : G.refinementProperties

def GameEquilibriumClosed (G : GameEquilibriumPackage) : Prop :=
  G.nashEquilibriumExists ∧ G.mixedStrategyExtension ∧ G.refinementProperties

theorem game_equilibrium_closed_from_evidence (G : GameEquilibriumPackage) (E : GameEquilibriumEvidence G) : GameEquilibriumClosed G :=
  And.intro E.nashEquilibriumExistsClosed (And.intro E.mixedStrategyExtensionClosed E.refinementPropertiesClosed)

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse