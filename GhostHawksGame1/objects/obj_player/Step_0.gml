 /// @description Insert description here
// You can write your code in this editor
keyAttack = keyboard_check_pressed(ord("Z"))

if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_block)) {
	bullet_direction = 0
		x += -move_speed
		image_xscale = -1
		sprite_index = spr_runningPlayer
		
}else{
	sprite_index = spr_idlePlayer
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_block)) {
	bullet_direction = 1
	x += move_speed
	image_xscale = 1
	sprite_index = spr_runningPlayer
}

if(keyboard_check(vk_up)){
	if(instance_place(x,y+1,obj_block)){
		vspeed = jump_height
			
	}
}
	
if(instance_place(x,y+1,obj_block)){
	gravity = 0
}else{
	gravity = 0.75	
}
	
if(vspeed > 12){
	vspeed = 12	
}
			
if(keyAttack){	
	sprite_index = spr_attackPlayer
	instance_create_layer(x,y,"Instances",obj_bullet)
	
	
	}