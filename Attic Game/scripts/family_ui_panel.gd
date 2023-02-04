extends Control

onready var jeff = get_node("GridContainer/jeff_ans")
onready var jeff_holder = get_node("GridContainer/jeff_holder")

onready var chuck = get_node("GridContainer/chuck_ans")
onready var chuck_holder = get_node("GridContainer/chuck_holder")

onready var doll = get_node("GridContainer/doll_ans")
onready var doll_holder = get_node("GridContainer/doll_holder")

onready var ui_panel = get_node("ui_panel")

onready var hidnshow = get_node("hidenshow")

#These check the input of the entry boxes. If correct the label tells you a green correct.
# If incorrect the label tells you it is incorrect in red

#check input for grandpa who is jeff
func _on_jeff_ans_text_entered(new_text):
	if jeff.get_text() == "grandpa":
		jeff_holder.set_text("Correct")
		jeff_holder.modulate = Color(0,239,0)
	else: 
		jeff_holder.set_text("Incorrect")
		jeff_holder.modulate = Color(239,0,0)
		jeff.clear()

#CHeck input for the stepfather who is chuck
func _on_chuck_ans_text_entered(new_text):
	if chuck.get_text() == "step father":
		chuck_holder.set_text("Correct")
		chuck_holder.modulate = Color(0,239,0)
	else: 
		chuck_holder.set_text("Incorrect")
		chuck_holder.modulate = Color(239,0,0)
		chuck.clear()
		
		#check input for doll who is the sister
func _on_doll_ans_text_entered(new_text):
	if doll.get_text() == "sister":
		doll_holder.set_text("Correct")
		doll_holder.modulate = Color(0,239,0)
	else: 
		doll_holder.set_text("Incorrect")
		doll_holder.modulate = Color(239,0,0)
		doll.clear()



# this function is for the on off/ to turn on or off the visibility of ui panel
func _on_hidenshow_toggled(button_pressed):
	if button_pressed == true:
		ui_panel.visible = true
		#hidenshow.modulate.a = 1
	else:
		ui_panel.visible = false
		#hidenshow.modulate.a = .5
