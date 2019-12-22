(define (problem fulltree32) (:domain fulltree)
(:objects
	l1 l2 l3 - layer
	c1 c2 - choice
	)
(:init
	(free-choice l1)
	(free-choice l2)
	(free-choice l3)
	(next l1 l2) (next l2 l3) 
	(at-layer l1)
)

(:goal (and
		(validated l1)
		(validated l2)
		(validated l3)
	)
)

(:metric minimize (total-time))
)

