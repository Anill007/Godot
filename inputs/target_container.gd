extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dist = Vector3(0,0,10)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform.origin = get_node("../Player/").transform.origin
	


func _on_Spatial_rot_l():
	rotate_y(deg2rad(-90)) # Replace with function body.


func _on_Spatial_rot_r():
	rotate_y(deg2rad(90)) # Replace with function body.
