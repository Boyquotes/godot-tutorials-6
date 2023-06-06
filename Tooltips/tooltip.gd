class_name Tooltip extends PanelContainer

@onready var tooltipText : Label = $Vertical/Horizontal/Label

@export var offset : Vector2 = Vector2.ZERO

var screenSize : Vector2 = Vector2.ZERO

func _ready() -> void:
	Hide()

func Show(text : String) -> void:
	tooltipText.text = text
	visible = true
	screenSize = get_viewport().get_visible_rect().size

func _process(_delta) -> void:
	position = get_global_mouse_position() + offset
	if position.x + size.x > screenSize.x:
		position.x = screenSize.x
	if position.y + size.y > screenSize.y:
		position.y = screenSize.y

func Hide() -> void:
	visible = false
