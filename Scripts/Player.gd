extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	#Salvo o valor do Pathfollow2D/progress_ratio no script global
	%PathFollow2D.progress_ratio = Global.progress_ratio


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	player_movement(delta) #Chama a função de movimento do jogador
	
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







func player_movement(delta): #W pra + e S pra menas
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
	
	
	

