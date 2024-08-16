extends Node


#Variaveis Globais
var Player_name = Dialogic.var.Status.Player_name #Nome do jogador lá no Dialogic
var Player_background = Dialogic.var.Status.Player_background #Background do jogador lá no Dialogic
var Humanity_level = Dialogic.var.Status.Humanity_level #Nivel de Humanidade lá no Dialogic
var Speech_level = Dialogic.var.Status.Speech #Nivel de Speech lá no Dialogic
var Strenght_level = Dialogic.var.Status.Strenght #Nivel de Força lá no Dialogic
var Survival_level = Dialogic.var.Status.Survival #Nivel de Survival lá no Dialogic

#Não tá funcionando com o .var. ,ver depois

#Preciso fazer um gráfico mal desenhado dos status do jogador! à mao!



#Posição no Mapa
var progress_ratio: float = 0.0 #Posoção atual do jogador
var progress_ratio_min: float = 0.01 #Posição MINIMA de até onde o jogador pode ir
var progress_ratio_max: float = 0.98 #Posição MAXIMA de até onde o jogador pode ir


#Variaveis da História

	#Quest Principal

#Capitulo de Introdução
var story_event00_Intro: bool = Dialogic.var.Partes_de_Plot.Main_quest.Introduction_complete # Introdução
var story_event01_market: bool = Dialogic.var.Partes_de_Plot.Main_quest.story_event01_market # Primeiro evento
var story_event02_acai: bool = Dialogic.var.Partes_de_Plot.Main_quest.story_event02_acai # Segundo evento
var story_event03_tunnel: bool = Dialogic.var.Partes_de_Plot.Main_quest.story_event03_tunnel # Terceiro evento
var story_event04_shopping: bool = Dialogic.var.Partes_de_Plot.Main_quest.story_event04_shopping # Quarto evento
var story_event05_university: bool = Dialogic.var.Partes_de_Plot.Main_quest.story_event05_university # Quinto evento
var story_event06_pier: bool = Dialogic.var.Partes_de_Plot.Main_quest.story_event06_pier # Sexto evento


#Capitulo 2





#Companions
var Vanda_affection = Dialogic.var.Relacionamentos.Companions.Vanda_affection #Nivel de Amizade com a Vanda lá no Dialogic
