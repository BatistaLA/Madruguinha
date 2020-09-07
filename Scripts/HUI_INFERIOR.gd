extends Node2D

### BOTOES
onready var direitaTouch = get_node("PainelPrincipal/TouchDireita")
onready var esquerdaTouch = get_node("PainelPrincipal/TouchEsquerda")

onready var niveis = get_node("Niveis")
onready var continueJogo = get_node("Continue")
	
func _process(delta):
	receberComandosDeBotoes()
	niveis.text = str("Level: ", Global.nivelDoJogo)
	continueJogo.text = str(Global.continueJogo)
	
	print(Global.direita)
	
func receberComandosDeBotoes(): # ENTRADAS DE COMANDOS - BOTOES
	if direitaTouch.is_pressed() == true:
		Global.direita = true
	if direitaTouch.is_pressed() == false:
		Global.direita = false
		
	if esquerdaTouch.is_pressed() == true:
		Global.esquerda = true
	if esquerdaTouch.is_pressed() == false:
		Global.esquerda = false
	
			