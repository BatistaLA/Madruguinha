extends Spatial

onready var botaoSair = get_node("Fundo/Sair")
onready var botaoDoar = get_node("Fundo/Doacao")
onready var botaoIniciar = get_node("Fundo/Iniciar")

onready var telaDoacao = get_node("Doacao")

onready var DoisReais = get_node("Doacao/2reais")
onready var CincoReais = get_node("Doacao/5reais")
onready var DezReais = get_node("Doacao/10reais")
onready var VinteReais = get_node("Doacao/20reais")

func _ready():
	telaDoacao.hide()

func _physics_process(delta):
	$"Personagem/Armação/AnimationPlayer".play("Sentar")
	sairDoJogo()
	iniciarOJogo()
	telaDoacao()
	
func sairDoJogo():
	if botaoSair.pressed == true:
		get_tree().quit()
		
func iniciarOJogo():
	if botaoIniciar.pressed == true:
		get_tree().change_scene("res://Composicao/Baner/BanerInicial.tscn")
		
func telaDoacao():
	if botaoDoar.pressed == false:
		telaDoacao.hide()
		
	if botaoDoar.pressed == true:
		telaDoacao.show()

