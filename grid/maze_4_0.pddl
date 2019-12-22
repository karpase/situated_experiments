(define (problem grid1) (:domain grid)
(:objects 
n0 - num
n1 - num
n2 - num
n3 - num
)
(:init 
(alive)
(at 16 (not (alive)))
(next n0 n1) (next n1 n2) (next n2 n3) 
(atX n0) (atY n0) 
(free n0 n0)
(free n0 n1)
(free n1 n0)
(free n3 n3)
(free n0 n2)
(free n0 n3)
(free n1 n2)
(free n1 n3)
(free n2 n0)
(free n2 n1)
(free n2 n2)
(free n2 n3)
(free n3 n0)
(free n3 n1)
(free n3 n2)
(free n3 n3)
)
(:goal (and 
(atX n3) (atY n3) ))
(:metric minimize (total-time))
)