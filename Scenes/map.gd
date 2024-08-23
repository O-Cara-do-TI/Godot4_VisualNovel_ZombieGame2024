extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_progress()



func game_progress():
	if Global.story_event00_Intro == false: #FAILSAFE
		Global.progress_ratio_max = 0.03
		print("A Introdução não foi completada. Progresso impossivel!")
	if Global.story_event00_Intro == true: #Intro feita. Primeiro evento Aberto!
		Global.progress_ratio_max = 0.1261 #Coordenadas do PRIMEIRO EVENTO
	
	
	if Global.story_event01_market == true: #Primeiro evento feito. Segundo evento aberto!
		Global.progress_ratio_max = 0.2432 #Coordenadas do SEGUNDO EVENTO


	if Global.story_event02_acai == true: #Segundo evento feito. Terceiro evento aberto!
		Global.progress_ratio_max = 0.3964 #Coordenadas do TERCEIRO EVENTO
		
	if Global.story_event03_tunnel == true:
		Global.progress_ratio_max = 0.6444 #Coordenadas do QUARTO EVENTO
		
	if Global.story_event04_shopping == true:
		Global.progress_ratio_max = 0.8516 #Coordenadas do QUINTO EVENTO
		
	if Global.story_event05_university == true:
		Global.progress_ratio_max = 0.98 #Coordenadas do SEXTO EVENTO
		
	#if Global.story_event06_pier == true: #Não tem por que existir agora, já tá no final do mapa.
		#Global.progress_ratio_max = 0.98


#Colisor do Evento 01
func _on_market_area_2d_body_entered(body):
	%Interact_button.set_visible(true)


func _on_market_area_2d_body_exited(body):
	%Interact_button.set_visible(false)





#Colisor do Evento 02
func _on_restaurant_area_2d_body_entered(body):
	%Interact_button.set_visible(true)


func _on_restaurant_area_2d_body_exited(body):
	%Interact_button.set_visible(false)




#Colisor do Evento 03
func _on_tunnel_area_2d_body_entered(body):
	%Interact_button.set_visible(true)


func _on_tunnel_area_2d_body_exited(body):
	%Interact_button.set_visible(false)





#Colisor do Evento 04
func _on_mall_area_2d_body_entered(body):
	%Interact_button.set_visible(true)


func _on_mall_area_2d_body_exited(body):
	%Interact_button.set_visible(false)





#Colisor do Evento 05
func _on_university_area_2d_body_entered(body):
	%Interact_button.set_visible(true)


func _on_university_area_2d_body_exited(body):
	%Interact_button.set_visible(false)







#Colisor do Evento 06
func _on_marina_area_2d_body_entered(body):
	%Interact_button.set_visible(true)


func _on_marina_area_2d_body_exited(body):
	%Interact_button.set_visible(false)
