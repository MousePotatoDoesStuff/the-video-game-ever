extends Control


@onready var buses={
	"audio":AudioServer.get_bus_index("Master"),
	"music":AudioServer.get_bus_index("Music"),
	"sound":AudioServer.get_bus_index("Sound")
}
@export var control_sliders:Array[AudioControlSlider]
var controls={}
var updated_settings={}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for slider in control_sliders:
		var key=slider.save_as
		controls[key]=slider
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_by_settings(data):
	for name in data:
		if name in buses:
			print(">>>",name,data[name])
			controls[name].set_parsed_data(data[name])
			PassAudio(name,data[name])

func PassAudio(name,data):
	updated_settings[name]=data
	var bus=buses[name]
	var sett=updated_settings[name]
	if sett["muted"]:
		AudioServer.set_bus_mute(bus,true)
	else:
		AudioServer.set_bus_mute(bus,false)
		var linvolume=sett['volume']/100
		AudioServer.set_bus_volume_db(bus,linear_to_db(linvolume))
	return
