extends Node


#Variaveis Globais
var Player_name = Dialogic.var.Status.Player_name


#Preciso fazer um gráfico mal desenhado dos status do jogador! à mao!



#Posição no Mapa
var progress_ratio: float = 0.0 #Posoção atual do jogador
var progress_ratio_min: float = 0.01 #Posição MINIMA de até onde o jogador pode ir
var progress_ratio_max: float = 0.98 #Posição MAXIMA de até onde o jogador pode ir


#Variaveis da História

#Quest Principal
var story_event01_market: bool = true
var story_event02_acai: bool = false
var story_event03_tunnel: bool = false
var story_event04_shopping: bool = false
var story_event05_university: bool = false
var story_event06_pier: bool = false

#Companions

