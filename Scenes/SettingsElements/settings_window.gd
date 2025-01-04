extends Control


var current:Control=null
@export var settingsMenus:Array[Control]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func hide_current():
	if self.current == null:
		return
	self.current.hide()

func show_current():
	self.current.show()

func set_current(new:Control):
	hide_current()
	self.current=new
	show_current()
