extends Control




func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(0,value)


func _on_option_button_item_selected(index):
	pass # Replace with function body.
