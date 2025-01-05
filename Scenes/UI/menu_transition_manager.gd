extends Control
class_name MenuTransitionManager


@export var debug=false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if debug:
		$AnimationSlider.loop=true
		$AnimationSlider.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func animate(object:Control):
	return
