import GameSever.Commands
World"AdditionWorld"
Level 2
Title"vadd_zero"
DefinitionDoc Add as "+"
Introduction"In the level,you goal id to prove a+0=a."
Statement(v 0:vec):0+v=v:by
    hint"use the tactic exact first."
    exact
    add_zero
    add_zero
