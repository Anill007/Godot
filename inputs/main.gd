extends Spatial

signal true_signal
signal false_signal
signal rot_l
signal rot_r

func _on_TouchScreenButton_pressed():
	emit_signal("true_signal") # Replace with function body.


func _on_TouchScreenButton_released():
	emit_signal("false_signal") # Replace with function body.



func _on_left_pressed():
	pass # Replace with function body.


func _on_right_pressed():
	pass # Replace with function body.


func _on_left_released():
	 emit_signal("rot_l")# Replace with function body.


func _on_right_released():
	emit_signal("rot_r") # Replace with function body.
