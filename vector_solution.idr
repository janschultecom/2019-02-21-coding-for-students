
data Vect : (n:Nat) -> a -> Type where 
  Nil : Vect Z a 
  Cons : (head : a ) -> (tail : Vect k a) -> Vect (S k) a
