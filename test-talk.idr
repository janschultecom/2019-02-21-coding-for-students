import Data.Vect

%default total


-- variable
x : Int 
x = 5 

-- function1 incr
incr : Int -> Int 
incr x = x + 1 

-- function2 add 
add : Int -> Int -> Int 
add x y = x + y 

-- adt sum type
data TrafficLight = Red | Yellow | Green

-- function adt show
show : TrafficLight -> String
show Red = "R" 
show Yellow = "Y" 
show Green = "G"

-- mylist
data MyList : Type -> Type where 
  Empty : MyList t 
  Cons : (elem : t) -> MyList t -> MyList t 

-- variable xs vect
xs : Vect 3 Int  
xs = [1,2,3] 

-- vtake 
vtake : (n:Nat) -> Vect (n+m) t -> Vect n t 
vtake Z xs = [] 
vtake (S k) (x :: xs) = x :: vtake k xs

-- vtake to string
elems : String
elems = show ( vtake 2 [1,2,3,4] ) 

-- vappend
vappend : Vect n t -> Vect m t -> Vect (n+m) t 
vappend [] ys = ys
vappend (x :: xs) ys = x :: vappend xs ys
