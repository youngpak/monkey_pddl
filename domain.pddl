(define (domain monkey)

    (:requirements :typing)

    (:types
        waypoint
		jumppnt
        monkey - object
        banana - object
		box - object
    )

   
    (:predicates
        (on - floor)
        (at ?o - object ?w - waypoint)
		(connected ?from ?to - waypoint)
    )

  
    (:action move
        :parameters (?o - monkey ?from ?to - waypoint)
        :precondition (and
            (at ?o ?from)
            (connected ?from ?to)
            )
        :effect (and
            (not (at ?o ?from))
            (at ?o ?to)
            )
    )

    (:action push
        :parameters (?m - monkey ?b - box ?from ?to - waypoint)
        :precondition (and
            (at ?m ?from)
			(at ?b ?from)
            (connected ?from ?to))
        :effect (and
			(not (at ?m ?from))
			(not (at ?b ?from))
            (at ?m ?to)
			(at ?b ?to)
            )
    )    

)