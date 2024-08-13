extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





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
