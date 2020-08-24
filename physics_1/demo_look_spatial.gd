extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var diff = Vector3(0, 0, 10)
var target
var look_at = Vector3(0,1,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	target =  get_node("../try_ball/")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(target.global_transform.origin, look_at)
	target.global_transform.origin.x +=0.01
