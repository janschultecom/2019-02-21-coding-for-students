
import Data.Vect

vappend : Vect n a -> Vect m a -> Vect (n+m) a 
vappend [] ys = ys
vappend (x :: xs) ys = x :: vappend xs ys 
