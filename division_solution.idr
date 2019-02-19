

NatOrError : Nat -> Type 
NatOrError Z = String 
NatOrError (S k) = Nat

divide : (x:Nat) -> (y:Nat) -> NatOrError y
divide x Z = "Error: Division by zero" 
divide x (S k) = div x (S k)

