extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	transform.origin = get_node("../").transform.origin + Vector3(0,0.5,3) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
