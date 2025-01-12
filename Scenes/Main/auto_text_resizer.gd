extends Button

@onready var label = $Label  # Adjust this path if necessary

# Minimum and maximum font sizes
var min_font_size = 8
var max_font_size = 64

func _ready():
	fit_font_to_button()

func fit_font_to_button():
	var button_size = size
	var font_size = max_font_size
	
	# Adjust font size until it fits within the button
	while font_size > min_font_size:
		label.set("custom_fonts/font", FontFile.new())
		label.get("custom_fonts/font").size = font_size
		
		# Check if the text fits within the button dimensions
		if label.get_minimum_size().x <= button_size.x and label.get_minimum_size().y <= button_size.y:
			break
		
		font_size -= 1  # Decrease font size until it fits

	label.get("custom_fonts/font").size = font_size  # Set final fitting font size
