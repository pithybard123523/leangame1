import GameSever.Commands
World"AdditionWorld"
Level 3
Title"vadd_comm"
DefinitionDoc Add as "+"
NewTheorem vadd_zero
Introduction"In the level,you goal id to prove v+s=s+v."
Statement(v s:vec):v+s=s+v:by
    hint"use the tactic exact first."
    exact
    add_comm
    add_comm
