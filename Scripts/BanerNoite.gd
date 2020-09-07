extends Node2D

var tempoPassar = 0
	
func _process(delta):
	if tempoPassar >= 5:
		get_tree().change_scene("res://Composicao/CenarioNoite.tscn") # Iniciar o jogo
		pass
	
func _on_Timer_timeout():
	$Timer.wait_time = 1
	tempoPassar += 1
