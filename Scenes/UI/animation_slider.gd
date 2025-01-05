extends Control


@export var animation_rel_start:Vector2=Vector2.ZERO
@export var animation_rel_end:Vector2=Vector2.ZERO
@export var animation_time:float=1
@export var cur_time:float=0
@export var loop:bool=false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if animation_time==0.0 or animation_rel_start==animation_rel_end:
		return
	cur_time+=delta
	if cur_time>=animation_time:
		place(animation_rel_end)
		cur_time=0.0
		if not loop:
			animation_rel_start=animation_rel_end
			animation_time=0.0
		return
	var new_delta:Vector2=self.animation_rel_end-self.animation_rel_start
	var reltime:float=cur_time/self.animation_time
	var new_position:Vector2=self.animation_rel_start+new_delta*reltime
	self.place(new_position)

func place(rel_position:Vector2):
	var local_position=rel_position*self.size
	self.position=local_position
