(define(problem monkey1)
(:domain monkey)
(:objects
	monkey1 - monkey
	banana1 - banana
	box1 - box
	A B C - waypoint
	low high - jumppnt
)
(:init

	(at monkey1 A)
	(at banana1 B)
	(at box1 C)
	
	(connected A B)
	(connected B A)
	(connected B C)
	(connected C B)


)
(:goal (and
	(at monkey1 B)
	(at box1 B)
)))
