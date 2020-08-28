extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var forward = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("ui_up"):
		forward = true
		
	elif event.is_action_pressed("ui_up"):
		forward = false
	
	#if event.is_action_pressed("ui_right"):
	#	angular_damp = 0.9
	
func _integrate_forces(state):
	if forward:
		if state.linear_velocity.z < -2:
			state.linear_velocity.z = -2
		else:
			state.linear_velocity.z += -0.2
