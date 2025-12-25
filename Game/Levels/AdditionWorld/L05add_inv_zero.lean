import GameServer.Commands

World"AdditionWorld"
Level 5
Title"add_inv_zero"
DefinitionDoc "-"
NewDefinition "-"
NewTheorem vadd_assoc
Introduction"In the level,you goal id to prove v+(-v)=0."
statement(v 0:vec):v+(-v)=0:by
    hint"use the tactic exact first."
    exact
