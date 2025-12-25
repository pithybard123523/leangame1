namespace MyVec

structure vec where
  x : Int
  y : Int
deriving Repr

def add (v w : vec) : vec :=
  { x := v.x + w.x
  , y := v.y + w.y }

def zero : vec :=
  { x := 0, y := 0 }

def smul (a : Int) (v : vec) : vec :=
  { x := a * v.x
  , y := a * v.y }

def dot (v w : vec) : Int :=
  v.x * w.x + v.y * w.y

end MyVec
