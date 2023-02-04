extends Node2D

onready var bookshelf_scene = get_node("bookshelf_scene")
onready var map = get_node("map_bg")
onready var objects = get_node("objects")

# check if you entered area of bookshelf
func _on_bs_floor_interact_body_entered(body):
	bookshelf_scene.visible = true
	
func _on_exit_button_pressed():
	bookshelf_scene.visible = false
	
