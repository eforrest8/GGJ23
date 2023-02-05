extends Control

#main menu change scene
func _on_startover_pressed():
	get_tree().change_scene("res://scenes/start_menu.tscn")

func _on_quit_pressed():
	get_tree().quit()
