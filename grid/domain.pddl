(define (domain grid)
(:requirements :typing :durative-actions)

(:types num)

(:predicates 
	(atX ?n - num)
    (atY ?n - num)
    (free ?x ?y - num)
    (alive)

    (next ?n1 ?n2 - num)
)

	
(:durative-action down
:parameters (?x ?y1 ?y2 - num) 
:duration (= ?duration 1)
:condition (and 
    (over all (alive))
    (over all (next ?y1 ?y2))
    (at start (atY ?y1))
    (over all (atX ?x))
    (over all (free ?x ?y2))
    )
:effect (and 
		(at start (not (atY ?y1)))
		(at end (atY ?y2))
	)
)

(:durative-action up
:parameters (?x ?y1 ?y2 - num) 
:duration (= ?duration 1)
:condition (and 
    (over all (alive))
    (over all (next ?y2 ?y1))
    (at start (atY ?y1))
    (over all (atX ?x))
    (over all (free ?x ?y2))
    )
:effect (and 
		(at start (not (atY ?y1)))
		(at end (atY ?y2))
	)
)

	
(:durative-action right
:parameters (?x1 ?x2 ?y - num) 
:duration (= ?duration 1)
:condition (and 
    (over all (alive))
    (over all (next ?x1 ?x2))
    (at start (atX ?x1))
    (over all (atY ?y))
    (over all (free ?x2 ?y))
    )
:effect (and 
		(at start (not (atX ?x1)))
		(at end (atX ?x2))
	)
)

(:durative-action left
:parameters (?x1 ?x2 ?y - num) 
:duration (= ?duration 1)
:condition (and 
    (over all (alive))
    (over all (next ?x2 ?x1))
    (at start (atX ?x1))
    (over all (atY ?y))
    (over all (free ?x2 ?y))
    )
:effect (and 
		(at start (not (atX ?x1)))
		(at end (atX ?x2))
	)
)

)
