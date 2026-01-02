namespace Game.VectorGame.MultiWorld
import GameServer


@[simp] theorem dot_add_left (a b c : Vec2) : dot (a + b) c = dot a c + dot b c := by
cases a; cases b; cases c; ring


@[simp] theorem dot_add_right (a b c : Vec2) : dot a (b + c) = dot a b + dot a c := by
cases a; cases b; cases c; ring


@[simp] theorem dot_nonneg (v : Vec2) : dot v v ≥ 0 := by
cases v
nlinarith


@[simp] theorem dot_eq_zero_iff (v : Vec2) : dot v v = 0 ↔ v = 0 := by
cases v
constructor <;> intro h <;> nlinarith


end Vec2


World "MultiWorld" where
introduction := "Dot product and algebraic properties"


Level 1
Title := "Dot product commutes"
Introduction := "Swap arguments of dot"
Hint := "After destructuring, this is commutativity in ℝ."
DisableTactic := [simp, nlinarith]
Statement (a b : Vec2) : Vec2.dot a b = Vec2.dot b a := by
cases a; cases b
ring


Level 2
Title := "Distributive over vector addition"
Introduction := "Dot distributes over addition"
Hint := "Unfold dot and addition, then simplify."
DisableTactic := [simp, nlinarith]
Statement (a b c : Vec2) : Vec2.dot (a + b) c = Vec2.dot a c + Vec2.dot b c := by
cases a; cases b; cases c
ring


Level 3
Title := "Positive definiteness"
Introduction := "A vector dotted with itself is nonnegative"
Hint := "This becomes a sum of squares. Use nlinarith."
DisableTactic := [ring]
Statement (v : Vec2) : Vec2.dot v v ≥ 0 ∧ (Vec2.dot v v = 0 ↔ v = 0) := by
cases v
nlinarith


exact ⟨Vec2.dot_nonneg v, Vec2.dot_eq_zero_iff v⟩
end Game.VectorGame.MultiWorld
