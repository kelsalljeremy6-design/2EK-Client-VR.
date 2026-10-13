extends PanelContainer

func _on_save_button_pressed():
	print("2EK CLIENT: Save button pressed")
	var success = GameState.auto_save_game()
	print("2EK CLIENT: Save result = ", success)

func _on_quit_button_pressed():
	GameState.quit_game()

