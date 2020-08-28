extends Spatial

var dirs = [Vector3(1,0,0),
			Vector3(-1,0,0),
			Vector3(0,0,1),
			Vector3(0,0,-1)]
var lrfb = [false, false, false, false]
var output = Vector3(0,0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in range(4):
		if lrfb[i]:
			output = dirs[i]
	#if Input.is_action_pressed("ui_left"):
		#print("l
	print(output)


func _input(event):
	if event.is_action_pressed("ui_left"):
		lrfb[0]= true
	elif event.is_action_released("ui_left"):
		lrfb[0]= false
	
	if event.is_action_pressed("ui_right"):
		lrfb[1]= true
	elif event.is_action_released("ui_right"):
		lrfb[1]= false

	if event.is_action_pressed("ui_up"):
		lrfb[2]= true
	elif event.is_action_released("ui_up"):
		lrfb[2]= false

	if event.is_action_pressed("ui_down"):
		lrfb[3]= true
	elif event.is_action_released("ui_down"):
		lrfb[3]= false
