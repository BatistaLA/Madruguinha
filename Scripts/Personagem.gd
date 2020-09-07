extends KinematicBody

var gravidade = Vector3.DOWN * 12 # Realiza a velocidade vetorials - KidsCanCode
var velocidade = 20

onready var animacaoDaFonte = get_node("Armação/AnimationPlayer")

onready var efeitosAndar = get_node("EfeitoSonoro/AndarNRabo")

var velocidade_vetorial = Vector3() # Usado na gravidade
var minhaPosicao = Vector3()

var tempoNivel = 0

var tempoPassar = 1

func _physics_process(delta):
	#### ASTAR - DEFINE O MELHOR CAMINHO
	gravidade(delta)
	morrer()
	zerarJogo()
	passagemDeNivel()
	
	$Amor.emitting = true
	
		
	if Global.morreu == false:
		movimentar()
		
	if Global.pontuacao >= 200:
		Global.continueJogo += 1
		Global.pontuacao = 0
		$Amor.emitting = true
		$Amor.one_shot = true
		
		
func passagemDeNivel():
	if Global.quantidadeDeObjetosColetados == 0:
		Global.nivelDoJogo += 1
		Global.trocaDeNivel = true
		Global.tempoDeTrocarBaner = 0
		Global.tempoColetaObjetos = 60
		Global.quantidadeDeObjetosColetados = 15
		
		get_tree().change_scene("res://Composicao/Baner/BanerInicial.tscn")
		
func gravidade(delta):
	velocidade_vetorial += gravidade * delta # Caulcula a gravidade - KidsCanCode
	velocidade_vetorial = move_and_slide(velocidade_vetorial, Vector3.UP) # Realiza o movimento da gravidade e do personagem - KidsCanCode
	
func movimentar():
	velocidade_vetorial.z = 0
	velocidade_vetorial.x = 0

	if Input.is_action_pressed("ui_left") or Global.esquerda == true:
		velocidade_vetorial.z += velocidade
		rotation.y = 55 # Rotacao correta: 0
		animacaoDaFonte.playback_speed = 2.5
		animacaoDaFonte.play("AndarBRaboNCabeca")
		$Som/Andar.play()
		
	if Input.is_action_pressed("ui_right") or Global.direita == true:
		velocidade_vetorial.z -= velocidade
		rotation.y = 55 # Rotacao correta: 160 
		animacaoDaFonte.playback_speed = 2.5
		animacaoDaFonte.play("AndarBRaboNCabeca")
		$Som/Andar.play()
		
func morrer():
	if Global.tempoColetaObjetos == 0 and Global.continueJogo == 0:
		Global.morreu = true
		tempoPassar = 1
		animacaoDaFonte.play("Morrer")
		Global.continueJogo = 0
		
	if tempoPassar >= 10:
		get_tree().change_scene("res://Composicao/Baner/VocePerdeu.tscn") # Iniciar o jogo
		Global.trocaDeNivel = true
		Global.paraTudo = false # Isso para a animacao da seta
		
func zerarJogo():
	if Global.nivelDoJogo == 16:
		tempoNivel = 1
		if tempoNivel >= 5:
			get_tree().change_scene("res://Composicao/Baner/VoceGanhou.tscn") # Iniciar o jogo
		
		
func _on_Timer_timeout():
	$Timer.wait_time = 1
	if Global.morreu == true:
		tempoPassar += 1
	if Global.nivelDoJogo > 15:
		tempoNivel += 1
