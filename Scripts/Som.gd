extends Spatial


func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if Global.andar == true:
		$Andar.play()
		Global.andar = false
		
	if Global.pegaObjeto == true:
		$Mastigar2.play()
		Global.pegaObjeto = false
		
#	if Global.venceu == true:
#		$Latir1.play()
#		Global.venceu = false
		
	if Global.botaoSeta == true:
		$Botao1.play()
		Global.botaoSeta = false
		
	if Global.jogoLento == true:
		$TexturaLenta.play()
		Global.jogoLento = false

	if Global.jogoRapido == true:
		$TexturaRapida.play()
		Global.jogoRapido = false
#
#	if Global.vitoria == true:
#		$TexturaVitoria.play()
#		Global.vitoria = false
		
#
	if Global.saiuDoJogo == true:
		$Botao2.play()
		Global.saiuDoJogo = false
		
	if Global.manha == true:
		$SomAmbiente.play()
		Global.manha = false
		
######## PAUSAS
#	if Global.vitoria_D == true:
#		$TexturaVitoria.stop()

	if Global.jogoRapido_D == true:
		$TexturaRapida.stop()

	if Global.jogoLento_D == true:
		$TexturaLenta.stop()

	if Global.manha_D == true:
		$SomAmbiente.stop()
		
