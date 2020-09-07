extends Node2D

var tempoPassar = 0
	
func _process(delta):
	morreu()
	if tempoPassar >= 8:
		get_tree().change_scene("res://Composicao/Baner/BanerInicial.tscn")
	
func morreu():
	if Global.morreu == true:
		Global.nivelDoJogo = 1
		Global.pontuacao = 0
		Global.continueJogo = 5
		Global.morreu = false
		Global.quantidadeDeObjetosColetados = 15
		Global.tempoColetaObjetos = 60

func _on_Timer_timeout():
	$Timer.wait_time = 1
	tempoPassar += 1