extends KinematicBody2D

var state = 0
var _trasitions = {
	[IDLE, MOVE]: 
}

func change_state(event):
	var transition = [state, event]
	if not transition in _trasitions:
		return

	state =_trasitions[transition]
	enter_state()

func enter_state():
	pass