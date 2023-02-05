extends Label
class_name dialogue

#when recieving the view signal from books_scripts.gd set visibility appropriatly
func _on_book_view(visible):
	self.visible = visible
	
