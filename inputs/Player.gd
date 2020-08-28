extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var forward = false
var right = false
var left = false
var back = false
var limit = 6
var step = 0.5
var a_drag = 0.7
# Called when the node enters the scene tree for the first time.
func _ready():
	angular_damp = a_drag
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event.is_action_pressed("ui_up"):
		forward = true
	elif event.is_action_released("ui_up"):
		forward= false
	
	if event.is_action_pressed("ui_right"):
		right = true
	elif event.is_action_released("ui_right"):
		right = false
	
	if event.is_action_pressed("ui_left"):
		left = true
	elif event.is_action_released("ui_left"):
		left = false
	
	if event.is_action_pressed("ui_down"):
		back = true
	elif event.is_action_released("ui_down"):
		back = false
		
func _integrate_forces(state):
	if forward:
		if state.linear_velocity.z < -limit:
			state.linear_velocity.z = -limit
		else:
			state.linear_velocity.z += -step
	
	if right:
		if state.linear_velocity.x > limit:
			state.linear_velocity.x = limit
		else:
			state.linear_velocity.x += step
	
	if left:
		if state.linear_velocity.x < -limit:
			state.linear_velocity.x = -limit
		else:
			state.linear_velocity.x += -step
	
	if back:
		if state.linear_velocity.z > limit:
			state.linear_velocity.z = limit
		else:
			state.linear_velocity.z += step
