extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var ref = get_node("../Player/")
var distance = Vector3(0,4,20)
# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = Vector3(-15,0,0)
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform.origin = ref.transform.origin + distance


