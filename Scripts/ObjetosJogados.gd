extends RigidBody

# VALORES NECESSARIOS
#var velocidade = 10
var velocidadeDeDeslocalmento = Vector3()
var contadorDeSaida = 0
var controleDaGravidade = Vector3.DOWN * 12

func _ready():
	pass
	
func _process(delta):
#	print()
	#transform.origin += velocidadeDeDeslocalmento * delta # Isso empurra o objeto, mas faz perder a colisao
	apply_central_impulse(velocidadeDeDeslocalmento * delta)
	controleDeGravidade(delta)

func jogarObjeto(PosicaoDoObjeto, velocidade):
	transform = PosicaoDoObjeto # Isso faz a transformação do objeto na posicao
	velocidadeDeDeslocalmento = -transform.basis.z * velocidade
	
	
func controleDeGravidade(delta):
	velocidadeDeDeslocalmento += controleDaGravidade * delta
	
	
func _on_Timer_timeout():
	$Timer.wait_time = 1
	contadorDeSaida += 1
	if contadorDeSaida == 2:
		queue_free()
	
func _on_Area_body_entered(body):
	if get_tree().get_nodes_in_group("cachorrinha"):
#		print(body.name)
		if body.name == "Personagem":
			Global.quantidadeDeObjetosColetados -= 1
			queue_free()
			Global.pontuacao += 5
			Global.pegaObjeto = true
#		if body.name == "Paredes":
#			if Global.pontuacao >= 0:
#				Global.pontuacao -= 10
#			if Global.pontuacao <= 0:
#				Global.pontuacao = 0

