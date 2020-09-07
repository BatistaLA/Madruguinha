extends Node2D

var tempoPassar = 0

# Horario Inicial
# Defini a hora em AM/PM - 12 horas e 24 horas
onready var hora24 = 12 # 24 horas
onready var hora = 12 # 12 horas
onready var minuto = 0

func _ready():
	Global.definirHora24 = hora24
	Global.definirHoraAMPM = hora
	Global.definirMinuto = minuto
	
func _process(delta):
	if tempoPassar >= 5:
		get_tree().change_scene("res://Composicao/CenarioTarde.tscn") # Iniciar o jogo
		pass

func _on_Timer_timeout():
	$Timer.wait_time = 1
	tempoPassar += 1
