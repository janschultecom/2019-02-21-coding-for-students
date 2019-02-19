import Data.Vect

x : Int 
x = 5

ErrorOrNat : (n:Nat) -> Type
ErrorOrNat Z = String  
ErrorOrNat (S k) = Nat  

divide : (dividend:Nat) -> (divisor:Nat) -> ErrorOrNat divisor
divide dividend Z = "Division by zero" 
divide dividend (S k) = div dividend (S k) 


length : List Int -> Int
length [] = 0 
length (x :: xs) = 1 + length xs 

xs : List Int
xs = [1,2,3]

ys : Vect 3 Int 
ys = [1,2,3]

vtake : (n:Nat) -> Vect (n+m) t -> Vect n t 
vtake Z xs = []  
vtake (S k) (x :: xs) = x :: vtake k xs 

zs : String 
zs = show ( vtake 3 [1,2,3,4,5] )

vconcat : Vect n t -> Vect m t -> Vect (n+m) t 
vconcat [] ys = ys
vconcat (x :: xs) ys = x :: vconcat xs ys

