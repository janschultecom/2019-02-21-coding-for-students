import Data.Vect

hello : String
hello = "Hello World"

x : Int
x = 5 

add : Int -> Int -> Int 
add x y = x + y 

Calc : Nat -> Type 
Calc Z = String  
Calc (S k) = Nat  

divide : (dividend:Nat) -> (divisor:Nat) -> Calc divisor
divide dividend Z = "Divisor was 0" 
divide dividend (S k) = div dividend (S k) 

data VVect : (n:Nat) -> (a:Type) -> Type where 
  VNil : VVect Z a 
  VCons : (head : a) -> (tail : VVect k a) -> VVect (S k) a 

vtake : (m : Nat) -> Vect (m + n) a -> Vect m a 
vtake Z xs = [] 
vtake (S k) (x :: xs) = x :: vtake k xs

vappend : Vect m a -> Vect n a -> Vect (m+n) a 
vappend [] ys = ys
vappend (x :: xs) ys = x :: vappend xs ys

main : IO ()
main = printLn ( vtake 4 [1,2,3,4] )
