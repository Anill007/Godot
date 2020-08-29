extends Spatial

signal true_signal
signal false_signal

func _on_TouchScreenButton_pressed():
	emit_signal("true_signal") # Replace with function body.


func _on_TouchScreenButton_released():
	emit_signal("false_signal") # Replace with function body.

