extends Area2D
class_name Book


signal view(visible)

#Connect books to themselves, book handles mouse inputs that it gets
func _ready():
	self.connect("mouse_entered", self, "_on_Book_mouse_entered")
	self.connect("mouse_exited", self, "_on_Book_mouse_exited")
	

#when mouse enters emit the view signal to show the dialogue
func _on_Book_mouse_entered():
	emit_signal("view", true)
	print("entered")

func _on_Book_mouse_exited():
	emit_signal("view", false)
	print("exit")





