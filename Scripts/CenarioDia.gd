extends Spatial

var setaDeDirecao = preload("res://Composicao/SetaFixa.tscn")

func _ready():
	Global.manha = true

func _process(delta):
	controleLevelAnimacao()
	
	
	### CONTROLE DE MOMENTOS DO DIA
	# USADO NAS METRICAS 
	Global.momentoDia = true
	Global.momentoTarde = false
	Global.momentoNoite = false
	
	
	# Muda cena quando acaba o tempo
#	if Global.hora == 12:
#		get_tree().change_scene("res://Composicao/BanerInicial/BanerTarde.tscn") # cena para ir
		

func controleLevelAnimacao():
	if Global.paraTudo == true:
		$Niveis.stop()
	
	match Global.nivelDoJogo:
		1:
			$Niveis.play("Nivel1")

			if Global.trocaDeNivel == true: # Lento
				Global.jogoRapido = false
				Global.jogoRapido_D = true
				Global.jogoLento = true
				Global.jogoLento_D = false
				Global.trocaDeNivel = false

				Global.vitoria_D = true
				Global.vitoria = false
		2:
			$Niveis.play("Nivel2")
			
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false

				Global.vitoria_D = true
				Global.vitoria = false
				
		3:
			$Niveis.play("Nivel3") # Lento
			if Global.trocaDeNivel == true: # Lento
				Global.jogoRapido = false
				Global.jogoRapido_D = true
				Global.jogoLento = true
				Global.jogoLento_D = false
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
		4:
			$Niveis.play("Nivel4") # Rapido
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
		5:
			$Niveis.play("Nivel5")
			if Global.trocaDeNivel == true: # Lento
				Global.jogoRapido = false
				Global.jogoRapido_D = true
				Global.jogoLento = true
				Global.jogoLento_D = false
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
		6:
			$Niveis.play("Nivel6")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
		7:
			$Niveis.play("Nivel7")
			if Global.trocaDeNivel == true: # Lento
				Global.jogoRapido = false
				Global.jogoRapido_D = true
				Global.jogoLento = true
				Global.jogoLento_D = false
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		8:
			$Niveis.play("Nivel8")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		9:
			$Niveis.play("Nivel9")
			if Global.trocaDeNivel == true: # Lento
				Global.jogoRapido = false
				Global.jogoRapido_D = true
				Global.jogoLento = true
				Global.jogoLento_D = false
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		10:
			$Niveis.play("Nivel10")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		11:
			$Niveis.play("Nivel11")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		12:
			$Niveis.play("Nivel12")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		13:
			$Niveis.play("Nivel13")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
				
		14:
			$Niveis.play("Nivel14")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
			
		15:
			$Niveis.play("Nivel15")
			if Global.trocaDeNivel == true: # Rapido
				Global.jogoRapido = true
				Global.jogoRapido_D = false
				Global.jogoLento = false
				Global.jogoLento_D = true
				Global.trocaDeNivel = false
				
				Global.vitoria_D = true
				Global.vitoria = false
				
			
				
func get_chamarSetas():
	var setaFixa = setaDeDirecao.instance()
	return get_parent().add_child(setaFixa)
				
				
				