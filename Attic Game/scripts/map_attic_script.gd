extends Node2D

onready var bookshelf_scene = get_node("bookshelf_scene")
onready var family_quiz = get_node("family_quiz_scene")
onready var map = get_node("map_bg")
onready var objects = get_node("objects")
onready var inventory = get_node("inventory")


# check if you entered area of bookshelf
func _on_bs_floor_interact_body_entered(body):
	bookshelf_scene.visible = true
	#inventory.visible = false
	inventory.closeBox()
	
	
func _on_exit_button_pressed():
	bookshelf_scene.visible = false
	
#when walking the area of the portrait the portrait scene appears
func _on_portrait_area_body_entered(body):
	family_quiz.visible = true
	

func _on_exit_family_scene_pressed():
	family_quiz.visible = false
	inventory.closeBox()


func _on_grandma_ring_are_body_entered(body):
	inventory.openBox("cardboard_box")
