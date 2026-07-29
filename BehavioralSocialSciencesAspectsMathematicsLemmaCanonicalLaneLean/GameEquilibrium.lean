import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean

structure GamePackage where
  players : Type u
  strategies : players → Type v
  payoff : (p : players) → (s : strategies p) → ℝ
  nashEquilibrium : (s : (p : players) → strategies p) → Prop
  nashEquilibriumDef : ∀ (s : (p : players) → strategies p), nashEquilibrium s ↔
    ∀ (p : players) (t : strategies p), payoff p t ≤ payoff p (s p)

structure GameEvidence (G : GamePackage) where
  nashEquilibriumDefClosed : G.nashEquilibriumDef

def GameClosed (G : GamePackage) : Prop :=
  G.nashEquilibriumDef

theorem game_closed_from_evidence (G : GamePackage) (E : GameEvidence G) : GameClosed G := by
  exact E.nashEquilibriumDefClosed

end BehavioralSocialSciencesAspectsMathematicsLemmaCanonicalLaneLean
end HautevilleHouse