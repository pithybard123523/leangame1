import GameServer
import VectorGame.Basic


open Vec2


World "TutorialWorld" where
introduction := "Understand vectors as ordered pairs (ℝ × ℝ)"


Level 1
Title := "A vector equals itself"
Introduction := "Construct a vector and show it equals itself using rfl"
Hint := "This is a definitional equality. Try `rfl`."
DisableTactic := [simp, ring, nlinarith]
Statement : (⟨1, 2⟩ : Vec2) = ⟨1, 2⟩ := by
rfl


Level 2
Title := "Equality via coordinates"
Introduction := "If x and y coordinates are equal, vectors are equal"
Hint := "We proved an ext lemma for Vec2. Try to use it."
DisableTactic := [simp, ring, nlinarith]
Statement (v w : Vec2) (hx : v.x = w.x) (hy : v.y = w.y) : v = w := by
exact Vec2.ext hx hy


Level 3
Title := "Unfolding a vector"
Introduction := "Every vector is definitionally equal to ⟨x, y⟩"
Hint := "Destructure v using `cases`."
DisableTactic := [simp, ring, nlinarith]
Statement (v : Vec2) : v = ⟨v.x, v.y⟩ := by
cases v
rfl

Level 4
Title := "Component equality implies vector equality"
Introduction := "Combine previous ideas"
Hint := "Split the conjunction, then use the ext lemma."
DisableTactic := [simp, ring, nlinarith]
Statement (v w : Vec2) (h : v.x = w.x ∧ v.y = w.y) : v = w := by
exact Vec2.ext h.1 h.2


exact Vec2.ext h.1 h.2
end Game.VectorGame.TutorialWorld
