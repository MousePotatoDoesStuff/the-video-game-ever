class_name MenuInstance extends Control


const NO_SWAP=-2
const CLOSE=-3
signal sig_menu_swap(next_menu:int, data:Dictionary)
@export var menu_swap_buttons:Array[Button]
@export var next_menus:Array[int]
var data:Dictionary
func _ready() -> void:
	assert(not menu_swap_buttons.is_empty())
	assert(next_menus.size()>=menu_swap_buttons.size())
	for i in range(len(menu_swap_buttons)):
		var menu_ind:int=next_menus[i]
		if menu_ind==MenuInstance.NO_SWAP:
			continue
		var button:Button=menu_swap_buttons[i]
		button.pressed.connect(func (ind=menu_ind):sig_menu_swap.emit(ind,{}))

func open(raw_data:Dictionary):
	self.data.merge(raw_data,true)
	show()

func close()->Dictionary:
	hide()
	return self.data
