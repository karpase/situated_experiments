(define (problem grid1) (:domain grid)
(:objects 
n0 - num
n1 - num
n2 - num
n3 - num
n4 - num
n5 - num
n6 - num
n7 - num
n8 - num
n9 - num
n10 - num
n11 - num
n12 - num
n13 - num
n14 - num
n15 - num
)
(:init 
(alive)
(at 64 (not (alive)))
(next n0 n1) (next n1 n2) (next n2 n3) (next n3 n4) (next n4 n5) (next n5 n6) (next n6 n7) (next n7 n8) (next n8 n9) (next n9 n10) (next n10 n11) (next n11 n12) (next n12 n13) (next n13 n14) (next n14 n15) 
(atX n0) (atY n0) 
(free n0 n0)
(free n0 n1)
(free n1 n0)
(free n15 n15)
(free n0 n2)
(free n0 n3)
(free n0 n4)
(free n0 n5)
(free n0 n6)
(free n0 n7)
(free n0 n8)
(free n0 n9)
(free n0 n10)
(free n0 n11)
(free n0 n12)
(free n0 n13)
(free n0 n14)
(free n0 n15)
(free n1 n2)
(free n1 n3)
(free n1 n4)
(free n1 n5)
(free n1 n6)
(free n1 n7)
(free n1 n8)
(free n1 n9)
(free n1 n10)
(free n1 n11)
(free n1 n12)
(free n1 n13)
(free n1 n14)
(free n1 n15)
(free n2 n0)
(free n2 n1)
(free n2 n2)
(free n2 n3)
(free n2 n4)
(free n2 n5)
(free n2 n6)
(free n2 n7)
(free n2 n8)
(free n2 n9)
(free n2 n10)
(free n2 n11)
(free n2 n12)
(free n2 n13)
(free n2 n14)
(free n2 n15)
(free n3 n0)
(free n3 n1)
(free n3 n2)
(free n3 n3)
(free n3 n4)
(free n3 n5)
(free n3 n6)
(free n3 n7)
(free n3 n8)
(free n3 n9)
(free n3 n10)
(free n3 n11)
(free n3 n12)
(free n3 n13)
(free n3 n14)
(free n3 n15)
(free n4 n0)
(free n4 n1)
(free n4 n2)
(free n4 n3)
(free n4 n4)
(free n4 n5)
(free n4 n6)
(free n4 n7)
(free n4 n8)
(free n4 n9)
(free n4 n10)
(free n4 n11)
(free n4 n12)
(free n4 n13)
(free n4 n14)
(free n4 n15)
(free n5 n0)
(free n5 n1)
(free n5 n2)
(free n5 n3)
(free n5 n4)
(free n5 n5)
(free n5 n6)
(free n5 n7)
(free n5 n8)
(free n5 n9)
(free n5 n10)
(free n5 n11)
(free n5 n12)
(free n5 n13)
(free n5 n14)
(free n5 n15)
(free n6 n0)
(free n6 n1)
(free n6 n2)
(free n6 n3)
(free n6 n4)
(free n6 n5)
(free n6 n6)
(free n6 n7)
(free n6 n8)
(free n6 n9)
(free n6 n10)
(free n6 n11)
(free n6 n12)
(free n6 n13)
(free n6 n14)
(free n6 n15)
(free n7 n0)
(free n7 n1)
(free n7 n2)
(free n7 n3)
(free n7 n4)
(free n7 n5)
(free n7 n6)
(free n7 n7)
(free n7 n8)
(free n7 n9)
(free n7 n10)
(free n7 n11)
(free n7 n12)
(free n7 n13)
(free n7 n14)
(free n7 n15)
(free n8 n0)
(free n8 n1)
(free n8 n2)
(free n8 n3)
(free n8 n4)
(free n8 n5)
(free n8 n6)
(free n8 n7)
(free n8 n8)
(free n8 n9)
(free n8 n10)
(free n8 n11)
(free n8 n12)
(free n8 n13)
(free n8 n14)
(free n8 n15)
(free n9 n0)
(free n9 n1)
(free n9 n2)
(free n9 n3)
(free n9 n4)
(free n9 n5)
(free n9 n6)
(free n9 n7)
(free n9 n8)
(free n9 n9)
(free n9 n10)
(free n9 n11)
(free n9 n12)
(free n9 n13)
(free n9 n14)
(free n9 n15)
(free n10 n0)
(free n10 n1)
(free n10 n2)
(free n10 n3)
(free n10 n4)
(free n10 n5)
(free n10 n6)
(free n10 n7)
(free n10 n8)
(free n10 n9)
(free n10 n10)
(free n10 n11)
(free n10 n12)
(free n10 n13)
(free n10 n14)
(free n10 n15)
(free n11 n0)
(free n11 n1)
(free n11 n2)
(free n11 n3)
(free n11 n4)
(free n11 n5)
(free n11 n6)
(free n11 n7)
(free n11 n8)
(free n11 n9)
(free n11 n10)
(free n11 n11)
(free n11 n12)
(free n11 n13)
(free n11 n14)
(free n11 n15)
(free n12 n0)
(free n12 n1)
(free n12 n2)
(free n12 n3)
(free n12 n4)
(free n12 n5)
(free n12 n6)
(free n12 n7)
(free n12 n8)
(free n12 n9)
(free n12 n10)
(free n12 n11)
(free n12 n12)
(free n12 n13)
(free n12 n14)
(free n12 n15)
(free n13 n0)
(free n13 n1)
(free n13 n2)
(free n13 n3)
(free n13 n4)
(free n13 n5)
(free n13 n6)
(free n13 n7)
(free n13 n8)
(free n13 n9)
(free n13 n10)
(free n13 n11)
(free n13 n12)
(free n13 n13)
(free n13 n14)
(free n13 n15)
(free n14 n0)
(free n14 n1)
(free n14 n2)
(free n14 n3)
(free n14 n4)
(free n14 n5)
(free n14 n6)
(free n14 n7)
(free n14 n8)
(free n14 n9)
(free n14 n10)
(free n14 n11)
(free n14 n12)
(free n14 n13)
(free n14 n14)
(free n14 n15)
(free n15 n0)
(free n15 n1)
(free n15 n2)
(free n15 n3)
(free n15 n4)
(free n15 n5)
(free n15 n6)
(free n15 n7)
(free n15 n8)
(free n15 n9)
(free n15 n10)
(free n15 n11)
(free n15 n12)
(free n15 n13)
(free n15 n14)
(free n15 n15)
)
(:goal (and 
(atX n15) (atY n15) ))
(:metric minimize (total-time))
)