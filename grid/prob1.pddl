(define (problem grid1) (:domain grid)
(:objects
	n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 - num	
	)
(:init
	
	(next n1 n2) (next n2 n3) (next n3 n4) (next n4 n5) (next n5 n6) (next n6 n7) (next n7 n8) (next n8 n9) (next n9 n10)
	(atX n1) (atY n1)
    (free n1 n1)
    (free n1 n2)
    (free n1 n3)
    (free n1 n4)
    (free n1 n5)
    (free n2 n5)
    (free n3 n5)
    (free n3 n4)
    (free n3 n3)
    (free n3 n2)
    (free n3 n1)
    (free n4 n1)
    (free n5 n1)
    (free n6 n1)
    (free n7 n1)
    (free n8 n1)
    (free n9 n1)
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
)

(:goal (and
		(atX n10) (atY n10)
	)
)

(:metric minimize (total-time))
)

