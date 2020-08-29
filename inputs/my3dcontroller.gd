extends TouchScreenButton

# Gonkee's joystick script for Godot 3 - full tutorial https://youtu.be/uGyEP2LUFPg
# If you use this script, I would prefer if you gave credit to me and my channel

# Change these based on the size of your button and outer sprite
var radius = Vector2(16, 16)
var boundary = 32

var ongoing_drag = -1

var return_accel = 20

var threshold = 10
var to_process = Vector2(0,0)
var dir = 0
var ret_final = Vector2(0,0)

func _process(delta):
	if ongoing_drag == -1:
		var pos_difference = (Vector2(0, 0) - radius) - position
		position += pos_difference * return_accel * delta
		
func get_button_pos():
	return position + radius

func _input(event):
	if event is InputEventScreenDrag or (event is InputEventScreenTouch and event.is_pressed()):
		var event_dist_from_centre = (event.position - get_parent().global_position).length()

		if event_dist_from_centre <= boundary * global_scale.x or event.get_index() == ongoing_drag:
			set_global_position(event.position - radius * global_scale)

			if get_button_pos().length() > boundary:
				set_position( get_button_pos().normalized() * boundary - radius)

			ongoing_drag = event.get_index()

	if event is InputEventScreenTouch and !event.is_pressed() and event.get_index() == ongoing_drag:
		ongoing_drag = -1

func get_value():
	if get_button_pos().length() > threshold:
		to_process = get_button_pos().normalized() * 4
		if dir == 0:
			return to_process
		elif dir == 1:
			ret_final.x = to_process.y
			ret_final.y = -to_process.x
			return ret_final
		elif dir == 2:
			return -to_process
		elif dir == 3:
			ret_final.x = -to_process.y
			ret_final.y = to_process.x
			return ret_final			
	return Vector2(0, 0)


func _on_left_released():
	dir = dir - 1
	if dir == -1:
		dir = 3 # Replace with function body.


func _on_right_released():
	dir = dir + 1
	if dir == 4:
		dir = 0 # Replace with function body.
