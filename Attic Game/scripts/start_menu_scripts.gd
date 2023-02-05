extends Control

#main menu change scene
func _on_play_button_pressed():
	get_tree().change_scene("res://scenes/attic_map.tscn")

#quit
func _on_quit_button_pressed():
	get_tree().quit()
