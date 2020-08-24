extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var diff = Vector3(10, 0, 0)
var target
var look_at = Vector3(0,1,0)
var diffs = [Vector3(10, 0, 0),
Vector3(0, 0, -10),
Vector3(-10, 0, 0),
Vector3(0, 0, 10)]
var value = 0
var diff_index = 0
var angle_change = false

func change_cam_angle(delta):
	transform.origin = transform.origin.linear_interpolate(diff,delta)
	value += delta
	if value>3:
		value = 0.0
		angle_change = true
		transform.origin = diff
		
# Called when the node enters the scene tree for the first time.
func _ready():
	target =  get_node("../ball/")
	transform.origin = target.transform.origin + diff
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	diff = diffs[diff_index]
	if angle_change:
		change_cam_angle(delta)
	look_at(target.global_transform.origin, look_at)
	
	

func _input(ev):
	if  Input.is_key_pressed(KEY_D) and not ev.echo:
		diff_index += 1
		if (diff_index > 3):
			diff_index = 0
			angle_change=true
			
	if Input.is_key_pressed(KEY_A) and not ev.echo:
		diff_index -= 1
		if (diff_index < 0):
			diff_index = 3
			angle_change=true

