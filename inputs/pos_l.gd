extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var joy_stk = get_parent().get_node("bg_button/TouchScreenButton")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#text = str(joy_stk.get_value() * 6)
	text = str(Engine.get_frames_per_second())
