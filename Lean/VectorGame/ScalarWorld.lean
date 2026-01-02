namespace Game.VectorGame.ScalarWorld
import GameServer
import VectorGame.Basic
import VectorGame.AdditionWorld


open Vec2


namespace Vec2


def smul (k : ℝ) (v : Vec2) : Vec2 := ⟨k * v.x, k * v.y⟩


instance : SMul ℝ Vec2 := ⟨smul⟩


@[simp] theorem smul_x (k : ℝ) (v : Vec2) : (k • v).x = k * v.x := rfl
@[simp] theorem smul_y (k : ℝ) (v : Vec2) : (k • v).y = k * v.y := rfl


end Vec2


World "ScalarWorld" where
introduction := "Scalar multiplication laws"


Level 1
Title := "One acts as identity"
Introduction := "Scalar multiplication by 1"
Hint := "Unfold the definition of smul."
DisableTactic := [ring, nlinarith]
Statement (v : Vec2) : (1 : ℝ) • v = v := by
cases v
simp


Level 2
Title := "Associativity of scalar multiplication"
Introduction := "Nested scalar multiplications"
Hint := "Reduce everything to multiplication of real numbers."
DisableTactic := [simp, nlinarith]
Statement (k l : ℝ) (v : Vec2) : k • (l • v) = (k*l) • v := by
cases v
ring


Level 3
Title := "Left distributivity"
Introduction := "Scalar addition distributes"
Hint := "This is a distributivity law in ℝ, applied twice."
DisableTactic := [simp, nlinarith]
Statement (k l : ℝ) (v : Vec2) : (k + l) • v = k • v + l • v := by
cases v
ring


Level 4
Title := "Right distributivity"
Introduction := "Vector addition distributes"
Hint := "Split both vectors into components first."
DisableTactic := [simp, nlinarith]
Statement (k : ℝ) (v w : Vec2) : k • (v + w) = k • v + k • w := by
cases v; cases w
ring


cases v; cases w
ring
end Game.VectorGame.ScalarWorld
