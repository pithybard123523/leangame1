import GameServer
import Game.VectorGame.Basic


open Vec2


namespace Vec2


def vadd (a b : Vec2) : Vec2 := ⟨a.x + b.x, a.y + b.y⟩


instance : Add Vec2 := ⟨vadd⟩


instance : Neg Vec2 := ⟨fun v => ⟨-v.x, -v.y⟩⟩


@[simp] theorem vadd_x (a b : Vec2) : (a + b).x = a.x + b.x := rfl
@[simp] theorem vadd_y (a b : Vec2) : (a + b).y = a.y + b.y := rfl


end Vec2


World "AdditionWorld" where
introduction := "Vector addition component-wise"


Level 1
Title := "Addition commutes"
Introduction := "Swap the order of addition"
Hint := "Reduce to real-number addition by destructuring vectors."
DisableTactic := [simp, nlinarith]
Statement (a b : Vec2) : a + b = b + a := by
cases a; cases b
ring


Level 2
Title := "Addition associates"
Introduction := "Parentheses do not matter"
Hint := "After `cases`, this is a real-number associativity problem."
DisableTactic := [simp, nlinarith]
Statement (a b c : Vec2) : (a + b) + c = a + (b + c) := by
cases a; cases b; cases c
ring


Level 3
Title := "Zero vector"
Introduction := "Adding zero changes nothing"
Hint := "What is the definition of 0 for Vec2?"
DisableTactic := [simp, ring, nlinarith]
Statement (a : Vec2) : a + 0 = a := by
cases a
rfl


Level 4
Title := "Additive inverse"
Introduction := "Every vector has an opposite"
Hint := "Unfold definitions and simplify component-wise."
DisableTactic := [simp, nlinarith]
Statement (a : Vec2) : a + (-a) = 0 := by
cases a
ring


cases a
simp
