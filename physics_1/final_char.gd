extends RigidBody

var a_v = Vector3()
var do_int = false
func _ready():
	pass
	

func _integrate_forces(state):
	if do_int:
		do_int = false
		if angular_velocity.z < 5:
			angular_velocity.z += 1
			clamp(angular_velocity.z, -5, 5)

func _input(event):
	if Input.is_key_pressed(KEY_W):
			do_int = true
	
