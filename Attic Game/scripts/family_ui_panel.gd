extends Control

onready var jeff = get_node("GridContainer/jeff_ans")
onready var jeff_holder = get_node("GridContainer/jeff_holder")

onready var cannit = get_node("GridContainer/chuck_ans")
onready var cannit_holder = get_node("GridContainer/chuck_holder")

onready var doll = get_node("GridContainer/doll_ans")
onready var doll_holder = get_node("GridContainer/doll_holder")

onready var luca = get_node("GridContainer/luca_ans")
onready var luca_holder = get_node("GridContainer/luca_holder")
 
signal success()

#These are the inputs for the line edit
#it checks the input to make sure it is correct
func _on_jeff_ans_text_entered(new_text):
	update_success()
		
func _on_chuck_ans_text_entered(new_text):
	update_success()
		
func _on_doll_ans_text_entered(new_text):
	update_success()

func _on_luca_ans_text_entered(new_text):
	update_success()
	

func update_success():
	if luca.get_text() == "grandma" and doll.get_text() == "sister" and cannit.get_text() == "uncle" and jeff.get_text() == "grandpa":
		emit_signal("success")

#Toggle the hide and show for the question panels
func _on_hidenshow_toggled(button_pressed):
	if button_pressed == true:
		self.visible = false
	else:
		self.visible = true



func _on_Button_pressed():
	pass # Replace with function body.
