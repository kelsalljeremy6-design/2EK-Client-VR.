
extends PanelContainer

var left_controller: XRController3D

func _ready() -> void:
	visible = false
	set_process(true)

func _process(_delta: float) -> void:
	if not is_instance_valid(left_controller):
		var found = get_tree().root.find_child("LeftHand", true, false)
		if found is XRController3D:
			left_controller = found

	if is_instance_valid(left_controller):
		visible = left_controller.is_button_pressed("ax_button")

func _on_save_button_pressed() -> void:
	GameState.auto_save_game()

func _on_quit_button_pressed() -> void:
	GameState.quit_game()

