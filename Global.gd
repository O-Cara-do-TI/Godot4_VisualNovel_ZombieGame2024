extends Node


#Variaveis Globais
var Player_name = "" #Nome do jogador lá no Dialogic
var Player_background = "" #Background do jogador lá no Dialogic

#Status:
var Humanity_level: float = 0 #Nivel de Humanidade lá no Dialogic; Quanto maior, melhor.

#Vai de 1 a 3 atualmente. Máximo de 3.
var Speech_level: float = 0 #Nivel de Speech lá no Dialogic
var Strenght_level: float = 0 #Nivel de Força lá no Dialogic
var Survival_level: float = 0 #Nivel de Survival lá no Dialogic



#Preciso fazer um gráfico mal desenhado dos status do jogador! à mao!



#Posição no Mapa
var progress_ratio: float = 0.0 #Posoção atual do jogador
var progress_ratio_min: float = 0.01 #Posição MINIMA de até onde o jogador pode ir
var progress_ratio_max: float = 0.98 #Posição MAXIMA de até onde o jogador pode ir


#Variaveis da História

	#Quest Principal

#Capitulo de Introdução
var story_event00_Intro: bool = false # Introdução
var story_event01_market: bool = false # Primeiro evento
var story_event02_acai: bool = false # Segundo evento
var story_event03_tunnel: bool = false # Terceiro evento
var story_event04_shopping: bool = false # Quarto evento
var story_event05_university: bool = false # Quinto evento
var story_event06_pier: bool = false # Sexto evento


#Capitulo 2





#Companions
var Vanda_affection: float = 0 #Nivel de Amizade com a Vanda lá no Dialogic
