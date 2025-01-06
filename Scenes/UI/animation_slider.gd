class_name AnimationSlider extends Control

var animation:Tween=null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	return

func run(start:Vector2,end:Vector2,time:float):
	animation=create_tween()
	
