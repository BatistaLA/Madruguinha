extends Node2D

# Temporizador
onready var quantidadeBrinquedos = get_node("Brinquedos")

onready var Tempo = get_node("Tempo")

# BOTOES
onready var botaoSair = get_node("Saida")
onready var botaoPause = get_node("Pausa")

# Pontuacao
onready var pontuacaoLabel = get_node("Pontuacao")

var contadorPeriodo = 0 # 1 PM / 2 AM

func _process(delta):

	temporizadorDeColetaDeObjetos()
	pontuacao()
	pausarJogo()
	sair()
	
	quantidadeBrinquedos.text = str(Global.quantidadeDeObjetosColetados)
	if Global.quantidadeDeObjetosColetados <= 0:
		Global.quantidadeDeObjetosColetados = 0
		
func temporizadorDeColetaDeObjetos():
	if Global.tempoColetaObjetos >= 1:
		Tempo.text = str(Global.tempoColetaObjetos)
	
	if Global.tempoColetaObjetos == 0 and Global.continueJogo > 0:
		Tempo.text = str(0)
		Global.tempoColetaObjetos = 60
		Global.continueJogo -= 1
		Global.quantidadeDeObjetosColetados = 15
		get_tree().change_scene("res://Composicao/Baner/VocePerdeu.tscn")
		Global.trocaDeNivel = true
		
	if Global.tempoColetaObjetos == 0 and Global.continueJogo == 0:
		Global.paraTudo = true
	
func sair():
	if botaoSair.pressed == true:
		get_tree().quit()
		
func pausarJogo():
	if botaoPause.pressed == true:
		get_tree().paused = true
	if botaoPause.pressed == false:
		get_tree().paused = false
			
func pontuacao():
	pontuacaoLabel.text = str(Global.pontuacao)
	
func _on_Timer_timeout():
	$Timer.wait_time = 1
	Global.tempoColetaObjetos -= 1
	
