extends Spatial

### OBJETOS
var ossoBrinquedo = preload("res://Composicao/Objetos/OssoBrinquedoPreparado.tscn")
var ossoReal = preload("res://Composicao/Objetos/OssoRealPreparado.tscn")
var discoBrinquedo = preload("res://Composicao/Objetos/DiscoDeBrinquedoPreparado.tscn")
var bolaBrinquedo = preload("res://Composicao/Objetos/BolaDeBrinquedoPreparado.tscn")

enum {
	OSSO_BRINQUEDO,
	OSSO_REAL,
	DISCO_BRINQUEDO,
	BOLA_BRINQUEDO
}

var selecaoObjeto = OSSO_BRINQUEDO

##### Coleta Posicao
onready var posicao3D = get_node("Seta/Position3D")

var forcaJogarObjeto = 80
var tempo = 2

func _ready():
	randomize() 
	
func _process(delta):
	if Global.morreu == false:
		jogarObjeto()
	
func jogarObjeto():
	# OBJETOS SERAO SORTIDOS
	# OSSO REAL
	match selecaoObjeto:
		OSSO_BRINQUEDO:
			if tempo == 1:
				var ossoBrinquedoObjeto = ossoBrinquedo.instance()
				ossoBrinquedoObjeto.jogarObjeto(posicao3D.global_transform, 100)
				get_parent().add_child(ossoBrinquedoObjeto) # Isso coloca o objeto na cena
				tempo = 2
				
		OSSO_REAL:
			if tempo == 1:
				var ossoRelaObjeto = ossoReal.instance()
				ossoRelaObjeto.jogarObjeto(posicao3D.global_transform, 150)
				get_parent().add_child(ossoRelaObjeto) # Isso coloca o objeto na cena
				tempo = 2
				
		DISCO_BRINQUEDO:
			if tempo == 1:
				var discoObjeto = discoBrinquedo.instance()
				discoObjeto.jogarObjeto(posicao3D.global_transform, 250)
				get_parent().add_child(discoObjeto) # Isso coloca o objeto na cena
				tempo = 2
				
		BOLA_BRINQUEDO:
			if tempo == 1:
				var bolaObjeto = bolaBrinquedo.instance()
				bolaObjeto.jogarObjeto(posicao3D.global_transform, 200)
				get_parent().add_child(bolaObjeto) # Isso coloca o objeto na cena
				tempo = 2

func escolha(matriz):
	matriz.shuffle()
	return matriz.front()

func _on_Timer_timeout():
	$Timer.wait_time = escolha([0.1, 0.2, 0.5, 0.8, 1, 1.5, 2, 2.5])
	selecaoObjeto = escolha([OSSO_BRINQUEDO, OSSO_REAL, DISCO_BRINQUEDO, BOLA_BRINQUEDO])
	tempo -= 1
	
	pass # Replace with function body.
