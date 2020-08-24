extends RigidBody

var ads = [Vector3(2,0,0),Vector3(0,0,2)] 
var index = 1
var ad = ads[index]
func _ready():
	pass # Replace with function body.

func _input(ev):
	if ev is InputEventMouseButton:
		if ev.button_index == 1:
			if ev.pressed:
				angular_velocity += ad
		elif ev.button_index == 2:
			angular_velocity -= ad
	
	if  Input.is_key_pressed(KEY_D) and not ev.echo:
		index += 1
		if (index > 1):
			index = 0
			
	if Input.is_key_pressed(KEY_A) and not ev.echo:
		index -= 1
		if (index < 0):
			index = 1

func _process(delta):
	ad = ads[index]
