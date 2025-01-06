extends Control
class_name MenuTransitionManager


@export var debug=false
@export var slider_base:AnimationSlider

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assert(slider_base is AnimationSlider)
	if debug:
		slider_base.run(Vector2.ZERO)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func animate(object:Control, ):
	return
