import Game.Metadata

World "TutorialWorld"
Level 1

Title "the rfl tactic"

TacticDoc exact rfl
DefinitionDoc Equal as "="
NewTactic exact rfl
NewDefinition Equal

Introduction "when A Vector is equal to another Vector,it means their Vec.x and Vec.y is both equal. "

Statement (x y : Nat) (v s:vec): v=s := by
  Hint "You should use the tactic'exact' first to let the Vec.x is devided from Vec.y"
  Branch
    rw [g]
    Hint "You should use `{h}` now."
    rw [
  exact
  Hint "Then use the tactic'rfl' twice to prove"
  rfl
  rfl

Conclusion "Now you know the meaning of the equal Vector and how to use the tactic'rfl'."

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq
