extends Node2D

#var tempoPassar = 0

onready var labelTexto = get_node("Label")
	
func _process(delta):
	morreu()
	labelTexto.text = str("Nível: ", Global.nivelDoJogo)
	
	if Global.tempoDeTrocarBaner >= 6:
		Global.tempoDeTrocarBaner = 0
		get_tree().change_scene("res://Composicao/CenarioDia.tscn") # Iniciar o jogo
		
	

func morreu():
	if Global.morreu == true:
		Global.nivelDoJogo = 1
		Global.tempoColetaObjetos = 60
		Global.pontuacao = 0
		Global.continueJogo = 5
		Global.morreu = false
		Global.quantidadeDeObjetosColetados = 15
		

func _on_Timer_timeout():
	$Timer.wait_time = 1
	Global.tempoDeTrocarBaner += 1
	
