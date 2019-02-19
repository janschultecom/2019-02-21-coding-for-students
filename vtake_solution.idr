
import Data.Vect


vtake : (n : Nat) -> Vect (n+m) a -> Vect n a 
vtake Z xs = []
vtake (S k) (x :: xs) = x :: vtake k xs


numbers : Vect 3 Int
numbers = [1,2,3]

main : IO ()
main = printLn ( vtake 3 numbers ) 
