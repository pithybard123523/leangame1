import GameServer
import Game.VectorGame.MultiWorld
import Mathlib


open Vec2


namespace Vec2


def norm (v : Vec2) : ℝ := Real.sqrt (dot v v)


@[simp] theorem norm_nonneg (v : Vec2) : norm v ≥ 0 := by
unfold norm
exact Real.sqrt_nonneg _


@[simp] theorem norm_smul (k : ℝ) (v : Vec2) : norm (k • v) = |k| * norm v := by
cases v
unfold norm dot
ring_nf
simp [Real.sqrt_mul, abs_mul]


end Vec2


World "NormWorld" where
introduction := "Norm induced by dot product"


Level 1
Title := "Norm is nonnegative"
Introduction := "Square roots are nonnegative"
Hint := "Recall properties of Real.sqrt."
DisableTactic := [ring, nlinarith]
Statement (v : Vec2) : Vec2.norm v ≥ 0 := by
simpa using Vec2.norm_nonneg v


Level 2
Title := "Unit normalization"
Introduction := "Scaling a vector to unit length"
Hint := "Use norm_smul, then simplify algebraically."
DisableTactic := [ring]
Statement (v : Vec2) (h : Vec2.norm v ≠ 0) : Vec2.norm ((1 / Vec2.norm v) • v) = 1 := by
have : |(1 / Vec2.norm v)| * Vec2.norm v = 1 := by
field_simp [abs_div]
simpa [Vec2.norm_smul] using this


have : |(1 / Vec2.norm v)| * Vec2.norm v = 1 := by
field_simp [abs_div]
simpa [Vec2.norm_smul] using this
