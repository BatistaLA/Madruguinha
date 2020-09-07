extends Node2D

###### BARRA DE FORCA
onready var barraDeForca = get_node("MedidorDeForca/BarraDeForca")

######## BOTOES
onready var botaoDeEscolhaDeForca = get_node("EscolhaDeForca")
onready var botaoJogarObjeto = get_node("JogarObjeto")
onready var botaoSair = get_node("Sair")


# Brincadeira
var frameParou = 0
var ForcaUsada = 0 # NAO ARMAZENE VALOR. O VALOR E ARMAZENADO PELA COLETA DO FRAME

var botaoForcaApertado = false
var botaoForcaJogaObjeto = false

func _ready():
	pass

func _process(delta):
	botoesBrincadeira()
	lancarObjeto()
	forca()

func botoesBrincadeira():
	if Global.brincarEscolha == true:
		barraDeForca.play("Forca")
		if botaoDeEscolhaDeForca.pressed == true: # Isso faz o botao acionar um interruptor
			botaoForcaApertado = true
			
		if botaoForcaApertado == true: # Se a chave for acionada, ele para a barra
			barraDeForca.stop() # Para a barra
			frameParou = barraDeForca.frame # Coleta a informaca da barra
			Global.posicaoEscolhida = true
			
		if botaoSair.pressed == true: # Se apertar sair, ele desliga os interruptores
			Global.brincarEscolha = false # Desliga brincarEscolha
			botaoForcaApertado = false # Desliga forca de aperto do botao
			Global.ativaTemporizadorBrincadeira = true
			Global.posicaoEscolhida = false
			frameParou = 0
		
func lancarObjeto():
	if Global.posicaoEscolhida == true: # Depois que escolhe o local, lancao objeto e repete a acao
		botaoJogarObjeto.show()
		botaoDeEscolhaDeForca.hide()
		
		if botaoJogarObjeto.pressed == true: # AQUI DEVE ACONTECER O SHOW
			botaoForcaJogaObjeto = true
			
		if botaoForcaJogaObjeto == true: # Isso encerra o show
			Global.jogarObjeto = true # Isso deve ser desligado no no da seta
			botaoForcaApertado = false # Desliga forca de aperto do botao
			botaoForcaJogaObjeto = false # Desliga - jogar objeto
			Global.posicaoEscolhida = false
			botaoJogarObjeto.hide()
			botaoDeEscolhaDeForca.show()
			
func forca():
	match frameParou:
		0:
			Global.forcaJogar = 1
		1:
			Global.forcaJogar = 2
		2:
			Global.forcaJogar = 3
		3:
			Global.forcaJogar = 4
		4:
			Global.forcaJogar = 5
		5:
			Global.forcaJogar = 6
		6:
			Global.forcaJogar = 7
		7:
			Global.forcaJogar = 8
		8:
			Global.forcaJogar = 9
		9:
			Global.forcaJogar = 10
		10:
			Global.forcaJogar = 11
		11:
			Global.forcaJogar = 10
		12:
			Global.forcaJogar = 9
		13:
			Global.forcaJogar = 8
		14:
			Global.forcaJogar = 7
		15:
			Global.forcaJogar = 6
		16:
			Global.forcaJogar = 5
		17:
			Global.forcaJogar = 4
		18:
			Global.forcaJogar = 3
		19:
			Global.forcaJogar = 2
		20:
			Global.forcaJogar = 1
			
			

