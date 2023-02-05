extends Control

onready var jeff = get_node("GridContainer/jeff_ans")
onready var jeff_holder = get_node("GridContainer/jeff_holder")

onready var cannit = get_node("GridContainer/chuck_ans")
onready var cannit_holder = get_node("GridContainer/chuck_holder")

onready var doll = get_node("GridContainer/doll_ans")
onready var doll_holder = get_node("GridContainer/doll_holder")

onready var luca = get_node("GridContainer/luca_ans")
onready var luca_holder = get_node("GridContainer/luca_holder")


#These are the inputs for the line edit
#it checks the input to make sure it is correct
func _on_jeff_ans_text_entered(new_text):
	if jeff.get_text() == "grandpa":
		jeff_holder.set_text("Correct")
		jeff_holder.modulate = Color(0,239,0)
	else: 
		jeff_holder.set_text("Incorrect")
		jeff_holder.modulate = Color(239,0,0)
		jeff.clear()
		
func _on_chuck_ans_text_entered(new_text):
	if cannit.get_text() == "uncle":
		cannit_holder.set_text("Correct")
		cannit_holder.modulate = Color(0,239,0)
	else: 
		cannit_holder.set_text("Incorrect")
		cannit_holder.modulate = Color(239,0,0)
		cannit.clear()
		
func _on_doll_ans_text_entered(new_text):
	if doll.get_text() == "sister":
		doll_holder.set_text("Correct")
		doll_holder.modulate = Color(0,239,0)
	else: 
		doll_holder.set_text("Incorrect")
		doll_holder.modulate = Color(239,0,0)
		doll.clear()

func _on_luca_ans_text_entered(new_text):
	if luca.get_text() == "grandma":
		luca_holder.set_text("Correct")
		luca_holder.modulate = Color(0,239,0)
	else: 
		luca_holder.set_text("Incorrect")
		luca_holder.modulate = Color(239,0,0)
		luca.clear()
	
#Toggle the hide and show for the question panels
func _on_hidenshow_toggled(button_pressed):
	if button_pressed == true:
		self.visible = false
	else:
		self.visible = true


