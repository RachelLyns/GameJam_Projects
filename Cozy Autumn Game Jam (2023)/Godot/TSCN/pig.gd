extends Node3D



func _on_pig_area_area_entered(_area):
	if PigOnDice.Status_game == "End":
		Convergence.Dialog = ["res://Dialog/Pig.dialogue","repeat"]
	else:
		Convergence.Dialog = ["res://Dialog/Pig.dialogue","start"]
