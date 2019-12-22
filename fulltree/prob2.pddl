(define (problem fulltree102) (:domain fulltree)
(:objects
	l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 - layer
	c1 c2 - choice
	)
(:init
	(free-choice l1)
	(free-choice l2)
	(free-choice l3)
    (free-choice l4)
    (free-choice l5)
    (free-choice l6)
    (free-choice l7)
    (free-choice l8)
    (free-choice l9)
    (free-choice l10)    

	(next l1 l2) (next l2 l3) (next l3 l4) (next l4 l5) (next l5 l6) (next l6 l7) (next l7 l8) (next l8 l9) (next l9 l10)
	(at-layer l1)


    (= (dur l1 c1) 2) (= (dur l1 c2) 1)
    (= (dur l2 c1) 1) (= (dur l2 c2) 3)
    (= (dur l3 c1) 2) (= (dur l3 c2) 3)
    (= (dur l4 c1) 2) (= (dur l4 c2) 3)
    (= (dur l5 c1) 2) (= (dur l5 c2) 1)
    (= (dur l6 c1) 3) (= (dur l6 c2) 1)
    (= (dur l7 c1) 1) (= (dur l7 c2) 3)
    (= (dur l8 c1) 3) (= (dur l8 c2) 2)
    (= (dur l9 c1) 2) (= (dur l9 c2) 1)
    (= (dur l10 c1) 2) (= (dur l10 c2) 3)


)

(:goal (and
		(validated l1)
        (validated l2)
        (validated l3)
        (validated l4)
        (validated l5)
        (validated l6)
        (validated l7)
        (validated l8)
        (validated l9)
        (validated l10)
	)
)

(:metric minimize (total-time))
)

