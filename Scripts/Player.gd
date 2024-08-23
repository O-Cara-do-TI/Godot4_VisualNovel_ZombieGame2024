extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	#Salvo o valor do Pathfollow2D/progress_ratio no script global
	%PathFollow2D.progress_ratio = Global.progress_ratio
	update_info()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	player_movement(delta) #Chama a função de movimento do jogador
	update_info()
	
	#Salvo a posição do jogador no script Global
	Global.progress_ratio = %PathFollow2D.progress_ratio 
	
	#Limita o valor de progress_ratio entre 0.01 e 0.98 para que ele dê uma volta completa no bagulho.
	%PathFollow2D.progress_ratio = clamp(%PathFollow2D.progress_ratio, Global.progress_ratio_min, Global.progress_ratio_max) #Usar pra limitar o jogador.
	%Camera2D.zoom.x = clamp(%Camera2D.zoom.x, 2, 3) #Clamp pra limitar o zoom da camera entre 2 e 3
	%Camera2D.zoom.y = clamp(%Camera2D.zoom.y, 2 ,3) #Clamp pra limitar o zoom da camera entre 2 e 3
	#Debug
	
	#Se eu apertar algum botão, quero print do valor Global do progress_ratio
	if Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down"):
		print("Global.progress_ratio:", Global.progress_ratio)
	else:
		return







func player_movement(_delta):#W pra + e S pra menas
	if Input.is_action_pressed("ui_up"): #Se apertar UP
		%PathFollow2D.progress_ratio += 0.001 #Aumenta o progress_ratio do pathfollow2D
		%Camera2D.zoom.x += 0.01 #aumenta lentamente o zoom X
		%Camera2D.zoom.y += 0.01 #aumenta lentamente o zoom Y
	elif Input.is_action_pressed("ui_down"):
		%PathFollow2D.progress_ratio -= 0.001
		%Camera2D.zoom.x += 0.01 #aumenta lentamente o zoom X
		%Camera2D.zoom.y += 0.01 #aumenta lentamente o zoom Y
	else:
		%Camera2D.zoom.x -= 0.03 #Diminui rapidamente o zoom X
		%Camera2D.zoom.y -= 0.03 #Diminui rapidamente o zoom Y
		
	#Debug: Remover depois. Adiciona 0.2 ao movimento TODA VEZ que ESPAÇO for pressionado.
	if Input.is_action_just_pressed("ui_accept"):
		%PathFollow2D.progress_ratio += 0.2
	
	
	
	#Só funcionou assim... Éhn, fazer o que.
	#Pegando as variaveis do Dialogic, botando no jogador e repassando pro Global.
func update_info():
	
	#Variaveis Globais e locais
		#Variaveis de Status
	var Player_name_local = Dialogic.VAR.Status.Player_name #Nome do jogador lá no Dialogic
	Global.Player_name = Player_name_local #Repassando pro Global.
	print("Nome do jogador é: ", Global.Player_name)
	
	var Player_background_local = Dialogic.VAR.Status.Player_background #Background do jogador lá no Dialogic
	Global.Player_background = Player_background_local
	print("Background do jogador é: ", Global.Player_background)
	
	var Humanity_level_local = Dialogic.VAR.Status.Humanity_level #Nivel de Humanidade lá no Dialogic
	Global.Humanity_level = Humanity_level_local
	print("Level de Humanidade do jogador é: ", Global.Humanity_level)
	
	var Speech_level_local = Dialogic.VAR.Status.Speech #Nivel de Speech lá no Dialogic
	Global.Speech_level = Speech_level_local
	print("Level de Speech do jogador é: ",Global.Speech_level)
	
	var Strenght_level_local = Dialogic.VAR.Status.Strenght #Nivel de Força lá no Dialogic
	Global.Strenght_level = Strenght_level_local
	print("Level de Força do jogador é: ",Global.Strenght_level)
	
	var Survival_level_local = Dialogic.VAR.Status.Survival #Nivel de Survival lá no Dialogic
	Global.Survival_level = Survival_level_local
	print("Level de Survival do jogador é: ",Global.Survival_level)
	
	
	
	
	#Variaveis da História
	
		#Quest Principal
	
	#Capitulo de Introdução
	var story_event00_Intro_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.Introduction_complete # Introdução
	Global.story_event00_Intro = story_event00_Intro_local
	print("Evento 00 = ", Global.story_event00_Intro)
	
	var story_event01_market_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.story_event01_market # Primeiro evento
	Global.story_event01_market = story_event01_market_local
	print("Evento 01 = ",Global.story_event01_market)
	
	var story_event02_acai_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.story_event02_acai # Segundo evento
	Global.story_event02_acai = story_event02_acai_local
	print("Evento 02 = ",Global.story_event02_acai)
	
	var story_event03_tunnel_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.story_event03_tunnel # Terceiro evento
	Global.story_event03_tunnel = story_event03_tunnel_local
	print("Evento 03 = ",Global.story_event03_tunnel)
	
	var story_event04_shopping_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.story_event04_shopping # Quarto evento
	Global.story_event04_shopping = story_event04_shopping_local
	print("Evento 04 = ",Global.story_event04_shopping)
	
	var story_event05_university_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.story_event05_university # Quinto evento
	Global.story_event05_university = story_event05_university_local
	print("Evento 05 = ",Global.story_event05_university)
	
	var story_event06_pier_local: bool = Dialogic.VAR.Partes_de_Plot.Main_quest.story_event06_pier # Sexto evento
	Global.story_event06_pier = story_event06_pier_local
	print("Evento 06 = ",Global.story_event06_pier)
	
	#Capitulo 2 (To be made)
	
	
	
	#Companions stats
	var Vanda_affection_local = Dialogic.VAR.Relacionamentos.Companions.Vanda_affection #Nivel de Amizade com a Vanda lá no Dialogic
	Global.Vanda_affection = Vanda_affection_local
	print("Level de Afeto da Vanda é: ",Global.Vanda_affection)
