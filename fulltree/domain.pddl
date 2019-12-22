(define (domain fulltree)
(:requirements :typing :durative-actions :numeric-fluents)

(:types layer choice)

(:predicates 
	(choice-made ?l - layer ?c - choice) 
	(free-choice ?l - layer)

	(next ?l1 ?l2 - layer)
	(at-layer ?l - layer)

	
	(validated ?l - layer)
)

(:functions 
	(dur ?l - layer ?c - choice)
)

	
(:durative-action make-choice
:parameters (?l - layer ?c - choice ?lnext - layer) 
:duration (= ?duration (dur ?l ?c))
:condition (and (at start (at-layer ?l)) (at start (free-choice ?l)) (over all (next ?l ?lnext)))
:effect (and 
		(at start (not (free-choice ?l))) (at end (choice-made ?l ?c))
		(at start (not (at-layer ?l))) (at end (at-layer ?lnext))

	)
)

(:durative-action make-last-choice
:parameters (?l - layer ?c - choice) 
:duration (= ?duration (dur ?l ?c))
:condition (and (at start (at-layer ?l)) (at start (free-choice ?l)) )
:effect (and 
		(at start (not (free-choice ?l))) (at end (choice-made ?l ?c))
		(at end (validated ?l))
	)
)

(:durative-action validate-choice
:parameters (?l - layer ?c - choice ?lnext - layer) 
:duration (= ?duration 1)
:condition (and (at start (at-layer ?lnext)) (over all (next ?l ?lnext))
			(at start (validated ?lnext)) (over all (choice-made ?lnext ?c)) (at start (choice-made ?l ?c)) )
:effect (and 		
		(at start (not (at-layer ?lnext))) (at end (at-layer ?l)) (at end (validated ?l))

	)
)

)
