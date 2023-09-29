extends Node3D
var Cont = 0

func _on_mother_area_area_entered(_area):
	if(Cont == 0):
		Convergence.Dialog = ["res://Dialog/Mother.dialogue", "start"]
	elif(Cont >= 3):
		Convergence.Dialog = ["res://Dialog/Mother.dialogue", "repeat2"]
	else:
		Convergence.Dialog = ["res://Dialog/Mother.dialogue", "repeat1"]
	Cont+=1
