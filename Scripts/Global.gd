extends Node

## PONTUACAO
var coracoes = 5 # Maximo 5 minimo 0 - life
var pontuacao = 0

### MOMENTOS DO DIA
var momentoDia = false
var momentoTarde = false
var momentoNoite = false

var morreu = false

var direita = false
var esquerda = false
var cima = false
var baixo = false
var botao = false

var nivelDoJogo = 1

var continueJogo = 5

#### NOVAS - SUBSTITUIR O RESTO POR ESSE
var quantidadeDeObjetosColetados = 15
var tempoColetaObjetos = 60

### SOM
var andar = false
var pegaObjeto = false
var venceu = false
var botaoSeta = false
var saiuDoJogo = false

var jogoLento = false
var jogoLento_D = false
var jogoRapido = false
var jogoRapido_D = false
var vitoria = false
var vitoria_D = false
var manha = false
var manha_D = false

var trocaDeNivel = true
var tempoDeTrocarBaner = 0

var paraTudo = false
