extends Button
class_name SeSiButton

signal pressedSignal(submenu:Control)
@export var submenu:Control=null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.pressed.connect(self._on_pressed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_pressed() -> void:
	pressedSignal.emit(submenu)
