extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var time_scale = 3
var set_rot = false
onready var mytween = get_node("Tween")

func cust_rot(dir):
	mytween.interpolate_property(self, "rotation_degrees", rotation_degrees,rotation_degrees+ Vector3(0,dir,0),2,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	mytween.start()
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform.origin = get_node("../RigidBody/").transform.origin
	
func _input(event):
	if  Input.is_key_pressed(KEY_A) and not event.echo:
		cust_rot(90)
		
	elif  Input.is_key_pressed(KEY_D) and not event.echo:
		cust_rot(-90)
