extends Control


var current:Control=null
@export var menus:Array[Control]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for menu in menus:
		var button:SeSiButton=$SettingsMenu/Button.duplicate()
		button.text=menu.name
		button.submenu=menu
		button.pressedSignal.connect(set_current)
		$SettingsMenu.add_child(button)


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
