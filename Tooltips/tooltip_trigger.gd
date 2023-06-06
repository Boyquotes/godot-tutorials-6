class_name TooltipTrigger extends Control

@export_multiline var Description : String

func _on_mouse_entered() -> void:
	ActiveTooltip.Show(Description)

func _on_mouse_exited() -> void:
	ActiveTooltip.hide()
