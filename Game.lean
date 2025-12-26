import Game.Levels.TutorialWorld
import Game.Levels.AdditionWorld
import Game.Levels.ScalarMulti
import Game.Levels.MultiWorld
import Game.Levels.NormWorld

-- Here's what we'll put on the title screen
Title "Vector Game"
Introduction
"
The game is about the vector laws proving.Click the Tutorial World to start!
"

Info "
author:pithybard123523
elan version:4.1
lake version:4.2
"

/-! Information to be displayed on the servers landing page. -/
Languages "en"
CaptionShort "Vector Game"
CaptionLong "A game to prove the vector laws."
Prerequisites "NNG" -- add this if your game depends on other games
CoverImage "images/vector_game_cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
