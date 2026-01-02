import Mathlib.Data.Real.Basic


structure Vec2 where
x : ℝ
y : ℝ


namespace Vec2


@[simp] theorem ext {a b : Vec2} (hx : a.x = b.x) (hy : a.y = b.y) : a = b := by
cases a; cases b; cases hx; cases hy; rfl


instance : Zero Vec2 := ⟨⟨0, 0⟩⟩


end Vec2
