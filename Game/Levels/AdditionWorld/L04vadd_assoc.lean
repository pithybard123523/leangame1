import GameSever.Commands
World"AdditionWorld"
Level 4
Title"vadd_assoc"
DefinitionDoc Add as "+"
NewTheorem vadd_comm
Introduction"In the level,you goal id to prove v+s+t=v+(s+t)."
Statement(v s t:vec):v+s+t=v+(s+t):by
    hint"use the tactic exact first."
    exact
    add_assoc
    add_assoc
